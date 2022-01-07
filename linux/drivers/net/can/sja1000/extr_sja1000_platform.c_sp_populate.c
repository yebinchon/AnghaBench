
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int freq; } ;
struct TYPE_4__ {TYPE_1__ clock; } ;
struct sja1000_priv {int write_reg; int read_reg; int cdr; int ocr; TYPE_2__ can; } ;
struct sja1000_platform_data {int osc_freq; int cdr; int ocr; } ;





 unsigned long IORESOURCE_MEM_TYPE_MASK ;
 int sp_read_reg16 ;
 int sp_read_reg32 ;
 int sp_read_reg8 ;
 int sp_write_reg16 ;
 int sp_write_reg32 ;
 int sp_write_reg8 ;

__attribute__((used)) static void sp_populate(struct sja1000_priv *priv,
   struct sja1000_platform_data *pdata,
   unsigned long resource_mem_flags)
{

 priv->can.clock.freq = pdata->osc_freq / 2;
 priv->ocr = pdata->ocr;
 priv->cdr = pdata->cdr;

 switch (resource_mem_flags & IORESOURCE_MEM_TYPE_MASK) {
 case 129:
  priv->read_reg = sp_read_reg32;
  priv->write_reg = sp_write_reg32;
  break;
 case 130:
  priv->read_reg = sp_read_reg16;
  priv->write_reg = sp_write_reg16;
  break;
 case 128:
 default:
  priv->read_reg = sp_read_reg8;
  priv->write_reg = sp_write_reg8;
  break;
 }
}
