
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w5300_priv {scalar_t__ base; } ;


 int CONFIG_WIZNET_BUS_SHIFT ;
 int iowrite16 (int,scalar_t__) ;

__attribute__((used)) static inline void w5300_write_direct(struct w5300_priv *priv,
          u16 addr, u16 data)
{
 iowrite16(data, priv->base + (addr << CONFIG_WIZNET_BUS_SHIFT));
}
