
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct enc28j60_net {int dummy; } ;


 int ENC28J60_BIT_FIELD_SET ;
 int enc28j60_set_bank (struct enc28j60_net*,int ) ;
 int spi_write_op (struct enc28j60_net*,int ,int ,int ) ;

__attribute__((used)) static void nolock_reg_bfset(struct enc28j60_net *priv, u8 addr, u8 mask)
{
 enc28j60_set_bank(priv, addr);
 spi_write_op(priv, ENC28J60_BIT_FIELD_SET, addr, mask);
}
