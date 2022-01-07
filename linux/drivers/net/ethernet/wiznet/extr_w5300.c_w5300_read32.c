
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct w5300_priv {int dummy; } ;


 int w5300_read (struct w5300_priv*,scalar_t__) ;

__attribute__((used)) static u32 w5300_read32(struct w5300_priv *priv, u16 addr)
{
 u32 data;
 data = w5300_read(priv, addr) << 16;
 data |= w5300_read(priv, addr + 2);
 return data;
}
