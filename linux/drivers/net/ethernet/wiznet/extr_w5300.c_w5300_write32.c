
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct w5300_priv {int dummy; } ;


 int w5300_write (struct w5300_priv*,scalar_t__,int) ;

__attribute__((used)) static void w5300_write32(struct w5300_priv *priv, u16 addr, u32 data)
{
 w5300_write(priv, addr, data >> 16);
 w5300_write(priv, addr + 2, data);
}
