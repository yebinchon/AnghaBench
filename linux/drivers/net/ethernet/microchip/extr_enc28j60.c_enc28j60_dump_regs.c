
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enc28j60_net {int lock; TYPE_1__* spi; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ECON1 ;
 int ECON2 ;
 int EIE ;
 int EIR ;
 int EPKTCNT ;
 int EREVID ;
 int ERXFCON ;
 int ERXNDL ;
 int ERXRDPTL ;
 int ERXSTL ;
 int ERXWRPTL ;
 int ESTAT ;
 int ETXNDL ;
 int ETXSTL ;
 int KERN_DEBUG ;
 int MACLCON1 ;
 int MACLCON2 ;
 int MACON1 ;
 int MACON3 ;
 int MACON4 ;
 int MAMXFLL ;
 int MAPHSUP ;
 int dev_printk (int ,struct device*,char*,char const*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nolock_regb_read (struct enc28j60_net*,int ) ;
 int nolock_regw_read (struct enc28j60_net*,int ) ;

__attribute__((used)) static void enc28j60_dump_regs(struct enc28j60_net *priv, const char *msg)
{
 struct device *dev = &priv->spi->dev;

 mutex_lock(&priv->lock);
 dev_printk(KERN_DEBUG, dev,
     " %s\n"
     "HwRevID: 0x%02x\n"
     "Cntrl: ECON1 ECON2 ESTAT  EIR  EIE\n"
     "       0x%02x  0x%02x  0x%02x  0x%02x  0x%02x\n"
     "MAC  : MACON1 MACON3 MACON4\n"
     "       0x%02x   0x%02x   0x%02x\n"
     "Rx   : ERXST  ERXND  ERXWRPT ERXRDPT ERXFCON EPKTCNT MAMXFL\n"
     "       0x%04x 0x%04x 0x%04x  0x%04x  "
     "0x%02x    0x%02x    0x%04x\n"
     "Tx   : ETXST  ETXND  MACLCON1 MACLCON2 MAPHSUP\n"
     "       0x%04x 0x%04x 0x%02x     0x%02x     0x%02x\n",
     msg, nolock_regb_read(priv, EREVID),
     nolock_regb_read(priv, ECON1), nolock_regb_read(priv, ECON2),
     nolock_regb_read(priv, ESTAT), nolock_regb_read(priv, EIR),
     nolock_regb_read(priv, EIE), nolock_regb_read(priv, MACON1),
     nolock_regb_read(priv, MACON3), nolock_regb_read(priv, MACON4),
     nolock_regw_read(priv, ERXSTL), nolock_regw_read(priv, ERXNDL),
     nolock_regw_read(priv, ERXWRPTL),
     nolock_regw_read(priv, ERXRDPTL),
     nolock_regb_read(priv, ERXFCON),
     nolock_regb_read(priv, EPKTCNT),
     nolock_regw_read(priv, MAMXFLL), nolock_regw_read(priv, ETXSTL),
     nolock_regw_read(priv, ETXNDL),
     nolock_regb_read(priv, MACLCON1),
     nolock_regb_read(priv, MACLCON2),
     nolock_regb_read(priv, MAPHSUP));
 mutex_unlock(&priv->lock);
}
