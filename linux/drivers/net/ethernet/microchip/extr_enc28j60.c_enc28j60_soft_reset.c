
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enc28j60_net {int dummy; } ;


 int ENC28J60_SOFT_RESET ;
 int spi_write_op (struct enc28j60_net*,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void enc28j60_soft_reset(struct enc28j60_net *priv)
{
 spi_write_op(priv, ENC28J60_SOFT_RESET, 0, ENC28J60_SOFT_RESET);


 udelay(2000);
}
