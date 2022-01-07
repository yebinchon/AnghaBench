
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7530_priv {int dummy; } ;


 int MT7530_PMCR_P (int) ;
 int PMCR_RX_EN ;
 int PMCR_TX_EN ;
 int mt7530_clear (struct mt7530_priv*,int ,int) ;
 int mt7530_set (struct mt7530_priv*,int ,int) ;

__attribute__((used)) static void
mt7530_port_set_status(struct mt7530_priv *priv, int port, int enable)
{
 u32 mask = PMCR_TX_EN | PMCR_RX_EN;

 if (enable)
  mt7530_set(priv, MT7530_PMCR_P(port), mask);
 else
  mt7530_clear(priv, MT7530_PMCR_P(port), mask);
}
