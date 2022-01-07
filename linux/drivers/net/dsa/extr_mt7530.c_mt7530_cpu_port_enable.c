
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7530_priv {scalar_t__ id; int ds; } ;


 int BIT (int) ;
 int CPU_EN ;
 int CPU_MASK ;
 int CPU_PORT (int) ;
 scalar_t__ ID_MT7621 ;
 int MT7530_MFC ;
 int MT7530_PCR_P (int) ;
 int MT7530_PSC_P (int) ;
 int MT7530_PVC_P (int) ;
 int PCR_MATRIX (int ) ;
 int PORT_SPEC_TAG ;
 int SA_DIS ;
 int UNU_FFP (int ) ;
 int dsa_user_ports (int ) ;
 int mt7530_rmw (struct mt7530_priv*,int ,int ,int) ;
 int mt7530_set (struct mt7530_priv*,int ,int ) ;
 int mt7530_write (struct mt7530_priv*,int ,int ) ;

__attribute__((used)) static int
mt7530_cpu_port_enable(struct mt7530_priv *priv,
         int port)
{

 mt7530_write(priv, MT7530_PVC_P(port),
       PORT_SPEC_TAG);


 mt7530_set(priv, MT7530_PSC_P(port), SA_DIS);


 mt7530_set(priv, MT7530_MFC, UNU_FFP(BIT(port)));


 if (priv->id == ID_MT7621)
  mt7530_rmw(priv, MT7530_MFC, CPU_MASK, CPU_EN | CPU_PORT(port));




 mt7530_write(priv, MT7530_PCR_P(port),
       PCR_MATRIX(dsa_user_ports(priv->ds)));

 return 0;
}
