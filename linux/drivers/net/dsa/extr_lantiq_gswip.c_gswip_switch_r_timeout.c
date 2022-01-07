
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gswip_priv {scalar_t__ gswip; } ;


 int __raw_readl ;
 int readx_poll_timeout (int ,scalar_t__,int,int,int,int) ;

__attribute__((used)) static u32 gswip_switch_r_timeout(struct gswip_priv *priv, u32 offset,
      u32 cleared)
{
 u32 val;

 return readx_poll_timeout(__raw_readl, priv->gswip + (offset * 4), val,
      (val & cleared) == 0, 20, 50000);
}
