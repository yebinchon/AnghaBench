
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct csi2rx_priv {int lock; int count; } ;


 int csi2rx_start (struct csi2rx_priv*) ;
 int csi2rx_stop (struct csi2rx_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct csi2rx_priv* v4l2_subdev_to_csi2rx (struct v4l2_subdev*) ;

__attribute__((used)) static int csi2rx_s_stream(struct v4l2_subdev *subdev, int enable)
{
 struct csi2rx_priv *csi2rx = v4l2_subdev_to_csi2rx(subdev);
 int ret = 0;

 mutex_lock(&csi2rx->lock);

 if (enable) {




  if (!csi2rx->count) {
   ret = csi2rx_start(csi2rx);
   if (ret)
    goto out;
  }

  csi2rx->count++;
 } else {
  csi2rx->count--;




  if (!csi2rx->count)
   csi2rx_stop(csi2rx);
 }

out:
 mutex_unlock(&csi2rx->lock);
 return ret;
}
