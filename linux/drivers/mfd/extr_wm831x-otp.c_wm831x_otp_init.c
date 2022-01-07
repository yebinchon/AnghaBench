
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid ;
struct wm831x {int dev; } ;


 int WM831X_UNIQUE_ID_LEN ;
 int add_device_randomness (char*,int) ;
 int dev_attr_unique_id ;
 int dev_err (int ,char*,int) ;
 int device_create_file (int ,int *) ;
 int wm831x_unique_id_read (struct wm831x*,char*) ;

int wm831x_otp_init(struct wm831x *wm831x)
{
 char uuid[WM831X_UNIQUE_ID_LEN];
 int ret;

 ret = device_create_file(wm831x->dev, &dev_attr_unique_id);
 if (ret != 0)
  dev_err(wm831x->dev, "Unique ID attribute not created: %d\n",
   ret);

 ret = wm831x_unique_id_read(wm831x, uuid);
 if (ret == 0)
  add_device_randomness(uuid, sizeof(uuid));
 else
  dev_err(wm831x->dev, "Failed to read UUID: %d\n", ret);

 return ret;
}
