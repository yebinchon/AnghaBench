
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_csi2 {int remote; } ;


 int rcsi2_enter_standby (struct rcar_csi2*) ;
 int rcsi2_exit_standby (struct rcar_csi2*) ;
 int rcsi2_start_receiver (struct rcar_csi2*) ;
 int s_stream ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 int video ;

__attribute__((used)) static int rcsi2_start(struct rcar_csi2 *priv)
{
 int ret;

 rcsi2_exit_standby(priv);

 ret = rcsi2_start_receiver(priv);
 if (ret) {
  rcsi2_enter_standby(priv);
  return ret;
 }

 ret = v4l2_subdev_call(priv->remote, video, s_stream, 1);
 if (ret) {
  rcsi2_enter_standby(priv);
  return ret;
 }

 return 0;
}
