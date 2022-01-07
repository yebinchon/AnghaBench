
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct cc770_priv {TYPE_1__ can; } ;


 int CAN_STATE_STOPPED ;
 int CTRL_CCE ;
 int CTRL_INI ;
 int cc770_read_reg (struct cc770_priv*,int ) ;
 int cc770_write_reg (struct cc770_priv*,int ,int) ;
 int control ;
 int disable_all_objs (struct cc770_priv*) ;
 int interrupt ;
 struct cc770_priv* netdev_priv (struct net_device*) ;
 int status ;

__attribute__((used)) static void set_reset_mode(struct net_device *dev)
{
 struct cc770_priv *priv = netdev_priv(dev);


 cc770_write_reg(priv, control, CTRL_CCE | CTRL_INI);

 priv->can.state = CAN_STATE_STOPPED;


 cc770_read_reg(priv, interrupt);


 cc770_write_reg(priv, status, 0);


 disable_all_objs(priv);
}
