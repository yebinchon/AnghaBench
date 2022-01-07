
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ofdm_phy_hdr {int * rlpt; } ;
struct d11rxhdr {int RxChan; int PhyRxStatus_0; } ;
struct cck_phy_hdr {int signal; } ;


 int MIMO_PLCP_40MHZ ;
 int MIMO_PLCP_MCS_MASK ;
 int PHY_TXC1_BW_20MHZ ;
 int PHY_TXC1_BW_40MHZ ;
 int PHY_TYPE_A ;
 int PHY_TYPE_HT ;
 int PHY_TYPE_LCN ;
 int PHY_TYPE_N ;
 int PHY_TYPE_SSN ;

 int PRXS0_FT_MASK ;



 int RSPEC_BW_MASK ;
 int RSPEC_BW_SHIFT ;
 int RSPEC_MIMORATE ;
 int RSPEC_SHORT_GI ;
 int RXS_CHAN_PHYTYPE_MASK ;
 int RXS_CHAN_PHYTYPE_SHIFT ;
 int cck_phy2mac_rate (int ) ;
 int ofdm_phy2mac_rate (int ) ;
 scalar_t__ plcp3_issgi (int) ;

u32 brcms_c_compute_rspec(struct d11rxhdr *rxh, u8 *plcp)
{
 int phy_type;
 u32 rspec = PHY_TXC1_BW_20MHZ << RSPEC_BW_SHIFT;

 phy_type =
     ((rxh->RxChan & RXS_CHAN_PHYTYPE_MASK) >> RXS_CHAN_PHYTYPE_SHIFT);

 if ((phy_type == PHY_TYPE_N) || (phy_type == PHY_TYPE_SSN) ||
     (phy_type == PHY_TYPE_LCN) || (phy_type == PHY_TYPE_HT)) {
  switch (rxh->PhyRxStatus_0 & PRXS0_FT_MASK) {
  case 131:
   rspec =
    cck_phy2mac_rate(
    ((struct cck_phy_hdr *) plcp)->signal);
   break;
  case 130:
   rspec =
       ofdm_phy2mac_rate(
    ((struct ofdm_phy_hdr *) plcp)->rlpt[0]);
   break;
  case 129:
   rspec = (plcp[0] & MIMO_PLCP_MCS_MASK) | RSPEC_MIMORATE;
   if (plcp[0] & MIMO_PLCP_40MHZ) {

    rspec &= ~RSPEC_BW_MASK;
    rspec |= (PHY_TXC1_BW_40MHZ << RSPEC_BW_SHIFT);
   }
   break;
  case 128:

  default:

   break;
  }
  if (plcp3_issgi(plcp[3]))
   rspec |= RSPEC_SHORT_GI;
 } else
     if ((phy_type == PHY_TYPE_A) || (rxh->PhyRxStatus_0 & 130))
  rspec = ofdm_phy2mac_rate(
    ((struct ofdm_phy_hdr *) plcp)->rlpt[0]);
 else
  rspec = cck_phy2mac_rate(
    ((struct cck_phy_hdr *) plcp)->signal);

 return rspec;
}
