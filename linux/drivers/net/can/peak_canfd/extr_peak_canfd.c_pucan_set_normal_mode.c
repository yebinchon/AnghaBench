
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct peak_canfd_priv {TYPE_1__ can; } ;


 int CAN_STATE_ERROR_ACTIVE ;
 int PUCAN_CMD_NORMAL_MODE ;
 int pucan_add_cmd (int ,int ) ;
 int pucan_init_cmd (struct peak_canfd_priv*) ;
 int pucan_write_cmd (struct peak_canfd_priv*) ;

__attribute__((used)) static int pucan_set_normal_mode(struct peak_canfd_priv *priv)
{
 int err;

 pucan_add_cmd(pucan_init_cmd(priv), PUCAN_CMD_NORMAL_MODE);
 err = pucan_write_cmd(priv);
 if (!err)
  priv->can.state = CAN_STATE_ERROR_ACTIVE;

 return err;
}
