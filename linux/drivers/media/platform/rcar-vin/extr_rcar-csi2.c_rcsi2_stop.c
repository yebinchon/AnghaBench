
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_csi2 {int remote; } ;


 int rcsi2_enter_standby (struct rcar_csi2*) ;
 int s_stream ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 int video ;

__attribute__((used)) static void rcsi2_stop(struct rcar_csi2 *priv)
{
 rcsi2_enter_standby(priv);
 v4l2_subdev_call(priv->remote, video, s_stream, 0);
}
