
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct netsec_priv {scalar_t__ ioaddr; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void netsec_write(struct netsec_priv *priv, u32 reg_addr, u32 val)
{
 writel(val, priv->ioaddr + reg_addr);
}
