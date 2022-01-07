
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct atl1e_hw {scalar_t__ nic_type; int rx_jumbo_th; int indirect_tab; int base_cpu; int rrs_type; } ;
struct atl1e_adapter {struct atl1e_hw hw; } ;


 int AT_READ_REG (struct atl1e_hw*,int ) ;
 int AT_WRITE_REG (struct atl1e_hw*,int ,int) ;
 int AT_WRITE_REGW (struct atl1e_hw*,int ,int ) ;
 int REG_BASE_CPU_NUMBER ;
 int REG_IDT_TABLE ;
 int REG_RXQ_CTRL ;
 int REG_RXQ_JMBOSZ_RRDTIM ;
 int REG_RXQ_RXF_PAUSE_THRESH ;
 int REG_SRAM_RXF_LEN ;
 int RXQ_CTRL_CUT_THRU_EN ;
 int RXQ_CTRL_EN ;
 int RXQ_CTRL_HASH_ENABLE ;
 int RXQ_CTRL_HASH_TYPE_IPV4 ;
 int RXQ_CTRL_HASH_TYPE_IPV4_TCP ;
 int RXQ_CTRL_HASH_TYPE_IPV6 ;
 int RXQ_CTRL_HASH_TYPE_IPV6_TCP ;
 int RXQ_CTRL_IPV6_XSUM_VERIFY_EN ;
 int RXQ_CTRL_PBA_ALIGN_32 ;
 int RXQ_CTRL_RSS_MODE_MQUESINT ;
 int RXQ_JMBOSZ_TH_MASK ;
 int RXQ_JMBOSZ_TH_SHIFT ;
 int RXQ_JMBO_LKAH_MASK ;
 int RXQ_JMBO_LKAH_SHIFT ;
 int RXQ_RXF_PAUSE_TH_HI_MASK ;
 int RXQ_RXF_PAUSE_TH_HI_SHIFT ;
 int RXQ_RXF_PAUSE_TH_LO_MASK ;
 int RXQ_RXF_PAUSE_TH_LO_SHIFT ;
 scalar_t__ athr_l2e_revB ;
 int atl1e_rrs_disable ;
 int atl1e_rrs_ipv4 ;
 int atl1e_rrs_ipv4_tcp ;
 int atl1e_rrs_ipv6 ;
 int atl1e_rrs_ipv6_tcp ;

__attribute__((used)) static inline void atl1e_configure_rx(struct atl1e_adapter *adapter)
{
 struct atl1e_hw *hw = &adapter->hw;
 u32 rxf_len = 0;
 u32 rxf_low = 0;
 u32 rxf_high = 0;
 u32 rxf_thresh_data = 0;
 u32 rxq_ctrl_data = 0;

 if (hw->nic_type != athr_l2e_revB) {
  AT_WRITE_REGW(hw, REG_RXQ_JMBOSZ_RRDTIM,
         (u16)((hw->rx_jumbo_th & RXQ_JMBOSZ_TH_MASK) <<
         RXQ_JMBOSZ_TH_SHIFT |
         (1 & RXQ_JMBO_LKAH_MASK) <<
         RXQ_JMBO_LKAH_SHIFT));

  rxf_len = AT_READ_REG(hw, REG_SRAM_RXF_LEN);
  rxf_high = rxf_len * 4 / 5;
  rxf_low = rxf_len / 5;
  rxf_thresh_data = ((rxf_high & RXQ_RXF_PAUSE_TH_HI_MASK)
      << RXQ_RXF_PAUSE_TH_HI_SHIFT) |
      ((rxf_low & RXQ_RXF_PAUSE_TH_LO_MASK)
      << RXQ_RXF_PAUSE_TH_LO_SHIFT);

  AT_WRITE_REG(hw, REG_RXQ_RXF_PAUSE_THRESH, rxf_thresh_data);
 }


 AT_WRITE_REG(hw, REG_IDT_TABLE, hw->indirect_tab);
 AT_WRITE_REG(hw, REG_BASE_CPU_NUMBER, hw->base_cpu);

 if (hw->rrs_type & atl1e_rrs_ipv4)
  rxq_ctrl_data |= RXQ_CTRL_HASH_TYPE_IPV4;

 if (hw->rrs_type & atl1e_rrs_ipv4_tcp)
  rxq_ctrl_data |= RXQ_CTRL_HASH_TYPE_IPV4_TCP;

 if (hw->rrs_type & atl1e_rrs_ipv6)
  rxq_ctrl_data |= RXQ_CTRL_HASH_TYPE_IPV6;

 if (hw->rrs_type & atl1e_rrs_ipv6_tcp)
  rxq_ctrl_data |= RXQ_CTRL_HASH_TYPE_IPV6_TCP;

 if (hw->rrs_type != atl1e_rrs_disable)
  rxq_ctrl_data |=
   (RXQ_CTRL_HASH_ENABLE | RXQ_CTRL_RSS_MODE_MQUESINT);

 rxq_ctrl_data |= RXQ_CTRL_IPV6_XSUM_VERIFY_EN | RXQ_CTRL_PBA_ALIGN_32 |
    RXQ_CTRL_CUT_THRU_EN | RXQ_CTRL_EN;

 AT_WRITE_REG(hw, REG_RXQ_CTRL, rxq_ctrl_data);
}
