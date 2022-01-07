
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct enc28j60_net {TYPE_1__* spi; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ETXNDL ;
 int KERN_DEBUG ;
 int TSV_SIZE ;
 int dev_printk (int ,struct device*,char*,int) ;
 int enc28j60_mem_read (struct enc28j60_net*,int,int ,int *) ;
 int locked_regw_read (struct enc28j60_net*,int ) ;
 scalar_t__ netif_msg_hw (struct enc28j60_net*) ;

__attribute__((used)) static void enc28j60_read_tsv(struct enc28j60_net *priv, u8 tsv[TSV_SIZE])
{
 struct device *dev = &priv->spi->dev;
 int endptr;

 endptr = locked_regw_read(priv, ETXNDL);
 if (netif_msg_hw(priv))
  dev_printk(KERN_DEBUG, dev, "reading TSV at addr:0x%04x\n",
      endptr + 1);
 enc28j60_mem_read(priv, endptr + 1, TSV_SIZE, tsv);
}
