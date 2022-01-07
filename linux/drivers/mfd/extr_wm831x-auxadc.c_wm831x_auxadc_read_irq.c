
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_auxadc_req {int input; int val; int list; int done; } ;
struct wm831x {int auxadc_active; int auxadc_lock; int dev; int auxadc_pending; } ;
typedef enum wm831x_auxadc { ____Placeholder_wm831x_auxadc } wm831x_auxadc ;


 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int WM831X_AUXADC_CONTROL ;
 int WM831X_AUXADC_SOURCE ;
 int WM831X_AUX_CVT_ENA ;
 int WM831X_AUX_ENA ;
 int WM831X_AUX_RATE_MASK ;
 int dev_err (int ,char*,int) ;
 int init_completion (int *) ;
 int kfree (struct wm831x_auxadc_req*) ;
 struct wm831x_auxadc_req* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_timeout (int *,int ) ;
 int wm831x_set_bits (struct wm831x*,int ,int,int) ;

__attribute__((used)) static int wm831x_auxadc_read_irq(struct wm831x *wm831x,
      enum wm831x_auxadc input)
{
 struct wm831x_auxadc_req *req;
 int ret;
 bool ena = 0;

 req = kzalloc(sizeof(*req), GFP_KERNEL);
 if (!req)
  return -ENOMEM;

 init_completion(&req->done);
 req->input = input;
 req->val = -ETIMEDOUT;

 mutex_lock(&wm831x->auxadc_lock);


 list_add(&req->list, &wm831x->auxadc_pending);

 ena = !wm831x->auxadc_active;

 if (ena) {
  ret = wm831x_set_bits(wm831x, WM831X_AUXADC_CONTROL,
          WM831X_AUX_ENA, WM831X_AUX_ENA);
  if (ret != 0) {
   dev_err(wm831x->dev, "Failed to enable AUXADC: %d\n",
    ret);
   goto out;
  }
 }


 if (!(wm831x->auxadc_active & (1 << input))) {
  ret = wm831x_set_bits(wm831x, WM831X_AUXADC_SOURCE,
          1 << input, 1 << input);
  if (ret != 0) {
   dev_err(wm831x->dev,
    "Failed to set AUXADC source: %d\n", ret);
   goto out;
  }

  wm831x->auxadc_active |= 1 << input;
 }


 if (ena) {
  ret = wm831x_set_bits(wm831x, WM831X_AUXADC_CONTROL,
          WM831X_AUX_CVT_ENA |
          WM831X_AUX_RATE_MASK,
          WM831X_AUX_CVT_ENA |
          WM831X_AUX_RATE_MASK);
  if (ret != 0) {
   dev_err(wm831x->dev, "Failed to start AUXADC: %d\n",
    ret);
   goto out;
  }
 }

 mutex_unlock(&wm831x->auxadc_lock);


 wait_for_completion_timeout(&req->done, msecs_to_jiffies(500));

 mutex_lock(&wm831x->auxadc_lock);

 list_del(&req->list);
 ret = req->val;

out:
 mutex_unlock(&wm831x->auxadc_lock);

 kfree(req);

 return ret;
}
