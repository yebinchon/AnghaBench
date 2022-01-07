
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hip04_priv {scalar_t__ base; } ;


 scalar_t__ PPE_HIS_RX_PKT_CNT ;
 int readl (scalar_t__) ;

__attribute__((used)) static u32 hip04_recv_cnt(struct hip04_priv *priv)
{
 return readl(priv->base + PPE_HIS_RX_PKT_CNT);
}
