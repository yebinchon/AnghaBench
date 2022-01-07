
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stimx274 {TYPE_1__* mode; } ;
struct TYPE_2__ {int init_regs; } ;


 int imx274_start_1 ;
 int imx274_write_table (struct stimx274*,int ) ;

__attribute__((used)) static int imx274_mode_regs(struct stimx274 *priv)
{
 int err = 0;

 err = imx274_write_table(priv, imx274_start_1);
 if (err)
  return err;

 err = imx274_write_table(priv, priv->mode->init_regs);

 return err;
}
