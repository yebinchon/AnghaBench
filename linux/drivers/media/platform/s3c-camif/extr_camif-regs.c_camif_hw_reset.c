
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct camif_dev {TYPE_1__* variant; } ;
struct TYPE_2__ {scalar_t__ ip_revision; } ;


 int CIGCTRL_IRQ_LEVEL ;
 int CIGCTRL_SWRST ;
 int CISRCFMT_ITU601_8BIT ;
 scalar_t__ S3C6410_CAMIF_IP_REV ;
 int S3C_CAMIF_REG_CIGCTRL ;
 int S3C_CAMIF_REG_CISRCFMT ;
 int camif_read (struct camif_dev*,int ) ;
 int camif_write (struct camif_dev*,int ,int ) ;
 int udelay (int) ;

void camif_hw_reset(struct camif_dev *camif)
{
 u32 cfg;

 cfg = camif_read(camif, S3C_CAMIF_REG_CISRCFMT);
 cfg |= CISRCFMT_ITU601_8BIT;
 camif_write(camif, S3C_CAMIF_REG_CISRCFMT, cfg);


 cfg = camif_read(camif, S3C_CAMIF_REG_CIGCTRL);
 cfg |= CIGCTRL_SWRST;
 if (camif->variant->ip_revision == S3C6410_CAMIF_IP_REV)
  cfg |= CIGCTRL_IRQ_LEVEL;
 camif_write(camif, S3C_CAMIF_REG_CIGCTRL, cfg);
 udelay(10);

 cfg = camif_read(camif, S3C_CAMIF_REG_CIGCTRL);
 cfg &= ~CIGCTRL_SWRST;
 camif_write(camif, S3C_CAMIF_REG_CIGCTRL, cfg);
 udelay(10);
}
