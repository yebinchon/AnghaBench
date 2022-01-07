
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cc770_priv {int clkout; int cpu_interface; int bus_config; } ;
struct TYPE_2__ {int config; int * id; int * data; int ctrl1; int ctrl0; } ;


 int CTRL_CCE ;
 int CTRL_INI ;
 int INTPND_RES ;
 int INTPND_UNC ;
 int MSGLST_RES ;
 int MSGOBJ_FIRST ;
 int MSGOBJ_LAST ;
 int MSGVAL_RES ;
 int NEWDAT_RES ;
 int RMTPND_RES ;
 int RXIE_RES ;
 int TXIE_RES ;
 int TXRQST_RES ;
 int bus_config ;
 int cc770_read_reg (struct cc770_priv*,int ) ;
 int cc770_write_reg (struct cc770_priv*,int ,int) ;
 int clkout ;
 int control ;
 int cpu_interface ;
 int * global_mask_ext ;
 int * global_mask_std ;
 int interrupt ;
 TYPE_1__* msgobj ;
 int status ;

__attribute__((used)) static void chipset_init(struct cc770_priv *priv)
{
 int mo, id, data;


 cc770_write_reg(priv, control, (CTRL_CCE | CTRL_INI));


 cc770_write_reg(priv, clkout, priv->clkout);


 cc770_write_reg(priv, cpu_interface, priv->cpu_interface);


 cc770_write_reg(priv, bus_config, priv->bus_config);


 cc770_read_reg(priv, interrupt);


 cc770_write_reg(priv, status, 0);


 for (mo = MSGOBJ_FIRST; mo <= MSGOBJ_LAST; mo++) {
  cc770_write_reg(priv, msgobj[mo].ctrl0,
    INTPND_UNC | RXIE_RES |
    TXIE_RES | MSGVAL_RES);
  cc770_write_reg(priv, msgobj[mo].ctrl0,
    INTPND_RES | RXIE_RES |
    TXIE_RES | MSGVAL_RES);
  cc770_write_reg(priv, msgobj[mo].ctrl1,
    NEWDAT_RES | MSGLST_RES |
    TXRQST_RES | RMTPND_RES);
  for (data = 0; data < 8; data++)
   cc770_write_reg(priv, msgobj[mo].data[data], 0);
  for (id = 0; id < 4; id++)
   cc770_write_reg(priv, msgobj[mo].id[id], 0);
  cc770_write_reg(priv, msgobj[mo].config, 0);
 }


 cc770_write_reg(priv, global_mask_std[0], 0);
 cc770_write_reg(priv, global_mask_std[1], 0);
 cc770_write_reg(priv, global_mask_ext[0], 0);
 cc770_write_reg(priv, global_mask_ext[1], 0);
 cc770_write_reg(priv, global_mask_ext[2], 0);
 cc770_write_reg(priv, global_mask_ext[3], 0);

}
