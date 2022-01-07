
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168_eth_private {int skb_size; } ;


 int PCXR_2BSM ;
 int PCXR_AN_DUPLEX_DIS ;
 int PCXR_AN_FLOWCTL_DIS ;
 int PCXR_AN_SPEED_DIS ;
 int PCXR_DSCP_EN ;
 int PCXR_FLP ;
 int PCXR_MFL_1518 ;
 int PCXR_MFL_1536 ;
 int PCXR_MFL_2048 ;
 int PCXR_MFL_64K ;
 int PCXR_TX_HIGH_PRI ;
 int PORT_CONFIG_EXT ;
 int pxa168_eth_recalc_skb_size (struct pxa168_eth_private*) ;
 int wrl (struct pxa168_eth_private*,int ,int) ;

__attribute__((used)) static int set_port_config_ext(struct pxa168_eth_private *pep)
{
 int skb_size;

 pxa168_eth_recalc_skb_size(pep);
 if (pep->skb_size <= 1518)
  skb_size = PCXR_MFL_1518;
 else if (pep->skb_size <= 1536)
  skb_size = PCXR_MFL_1536;
 else if (pep->skb_size <= 2048)
  skb_size = PCXR_MFL_2048;
 else
  skb_size = PCXR_MFL_64K;


 wrl(pep, PORT_CONFIG_EXT,
     PCXR_AN_SPEED_DIS |
     PCXR_AN_DUPLEX_DIS |
     PCXR_AN_FLOWCTL_DIS |
     PCXR_2BSM |
     PCXR_DSCP_EN |
     skb_size | PCXR_FLP |
     PCXR_TX_HIGH_PRI);

 return 0;
}
