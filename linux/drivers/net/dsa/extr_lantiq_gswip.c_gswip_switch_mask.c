
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gswip_priv {int dummy; } ;


 int gswip_switch_r (struct gswip_priv*,int ) ;
 int gswip_switch_w (struct gswip_priv*,int ,int ) ;

__attribute__((used)) static void gswip_switch_mask(struct gswip_priv *priv, u32 clear, u32 set,
         u32 offset)
{
 u32 val = gswip_switch_r(priv, offset);

 val &= ~(clear);
 val |= set;
 gswip_switch_w(priv, val, offset);
}
