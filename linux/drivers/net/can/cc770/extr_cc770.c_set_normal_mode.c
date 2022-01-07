
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct cc770_priv {TYPE_1__ can; int control_normal_mode; } ;


 int CAN_STATE_ERROR_ACTIVE ;
 int STAT_LEC_MASK ;
 int cc770_read_reg (struct cc770_priv*,int ) ;
 int cc770_write_reg (struct cc770_priv*,int ,int ) ;
 int control ;
 int enable_all_objs (struct net_device*) ;
 int interrupt ;
 struct cc770_priv* netdev_priv (struct net_device*) ;
 int status ;

__attribute__((used)) static void set_normal_mode(struct net_device *dev)
{
 struct cc770_priv *priv = netdev_priv(dev);


 cc770_read_reg(priv, interrupt);


 cc770_write_reg(priv, status, STAT_LEC_MASK);


 enable_all_objs(dev);





 cc770_write_reg(priv, control, priv->control_normal_mode);

 priv->can.state = CAN_STATE_ERROR_ACTIVE;
}
