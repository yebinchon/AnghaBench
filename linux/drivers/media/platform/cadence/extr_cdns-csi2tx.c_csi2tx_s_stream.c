
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct csi2tx_priv {int lock; int count; } ;


 int csi2tx_start (struct csi2tx_priv*) ;
 int csi2tx_stop (struct csi2tx_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct csi2tx_priv* v4l2_subdev_to_csi2tx (struct v4l2_subdev*) ;

__attribute__((used)) static int csi2tx_s_stream(struct v4l2_subdev *subdev, int enable)
{
 struct csi2tx_priv *csi2tx = v4l2_subdev_to_csi2tx(subdev);
 int ret = 0;

 mutex_lock(&csi2tx->lock);

 if (enable) {




  if (!csi2tx->count) {
   ret = csi2tx_start(csi2tx);
   if (ret)
    goto out;
  }

  csi2tx->count++;
 } else {
  csi2tx->count--;




  if (!csi2tx->count)
   csi2tx_stop(csi2tx);
 }

out:
 mutex_unlock(&csi2tx->lock);
 return ret;
}
