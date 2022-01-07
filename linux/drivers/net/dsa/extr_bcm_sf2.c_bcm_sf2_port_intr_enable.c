
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_sf2_priv {int dummy; } ;


 unsigned int P0_IRQ_OFF ;
 unsigned int P7_IRQ_OFF ;
 int P_IRQ_MASK (unsigned int) ;
 unsigned int P_IRQ_OFF (int) ;
 int intrl2_0_mask_clear (struct bcm_sf2_priv*,int ) ;
 int intrl2_1_mask_clear (struct bcm_sf2_priv*,int ) ;

__attribute__((used)) static inline void bcm_sf2_port_intr_enable(struct bcm_sf2_priv *priv,
         int port)
{
 unsigned int off;

 switch (port) {
 case 7:
  off = P7_IRQ_OFF;
  break;
 case 0:

  intrl2_0_mask_clear(priv, P_IRQ_MASK(P0_IRQ_OFF));
  return;
 default:
  off = P_IRQ_OFF(port);
  break;
 }

 intrl2_1_mask_clear(priv, P_IRQ_MASK(off));
}
