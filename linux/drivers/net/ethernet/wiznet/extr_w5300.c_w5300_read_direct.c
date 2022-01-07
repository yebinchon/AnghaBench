
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w5300_priv {scalar_t__ base; } ;


 int CONFIG_WIZNET_BUS_SHIFT ;
 int ioread16 (scalar_t__) ;

__attribute__((used)) static inline u16 w5300_read_direct(struct w5300_priv *priv, u16 addr)
{
 return ioread16(priv->base + (addr << CONFIG_WIZNET_BUS_SHIFT));
}
