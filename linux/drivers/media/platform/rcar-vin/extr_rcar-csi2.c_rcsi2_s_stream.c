
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct rcar_csi2 {int stream_count; int lock; int remote; } ;


 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcsi2_start (struct rcar_csi2*) ;
 int rcsi2_stop (struct rcar_csi2*) ;
 struct rcar_csi2* sd_to_csi2 (struct v4l2_subdev*) ;

__attribute__((used)) static int rcsi2_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct rcar_csi2 *priv = sd_to_csi2(sd);
 int ret = 0;

 mutex_lock(&priv->lock);

 if (!priv->remote) {
  ret = -ENODEV;
  goto out;
 }

 if (enable && priv->stream_count == 0) {
  ret = rcsi2_start(priv);
  if (ret)
   goto out;
 } else if (!enable && priv->stream_count == 1) {
  rcsi2_stop(priv);
 }

 priv->stream_count += enable ? 1 : -1;
out:
 mutex_unlock(&priv->lock);

 return ret;
}
