
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct netsec_priv {scalar_t__ ioaddr; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 netsec_read(struct netsec_priv *priv, u32 reg_addr)
{
 return readl(priv->ioaddr + reg_addr);
}
