
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct igbvf_adapter {int rx_buffer_len; int rx_ps_hdr_size; struct e1000_hw hw; } ;


 int ALIGN (int,int) ;
 int E1000_SRRCTL_BSIZEHDRSIZE_SHIFT ;
 int E1000_SRRCTL_BSIZEHDR_MASK ;
 int E1000_SRRCTL_BSIZEPKT_MASK ;
 int E1000_SRRCTL_BSIZEPKT_SHIFT ;
 int E1000_SRRCTL_DESCTYPE_ADV_ONEBUF ;
 int E1000_SRRCTL_DESCTYPE_HDR_SPLIT_ALWAYS ;
 int E1000_SRRCTL_DESCTYPE_MASK ;
 int E1000_SRRCTL_DROP_EN ;
 int SRRCTL (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static void igbvf_setup_srrctl(struct igbvf_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 srrctl = 0;

 srrctl &= ~(E1000_SRRCTL_DESCTYPE_MASK |
      E1000_SRRCTL_BSIZEHDR_MASK |
      E1000_SRRCTL_BSIZEPKT_MASK);


 srrctl |= E1000_SRRCTL_DROP_EN;


 srrctl |= ALIGN(adapter->rx_buffer_len, 1024) >>
    E1000_SRRCTL_BSIZEPKT_SHIFT;

 if (adapter->rx_buffer_len < 2048) {
  adapter->rx_ps_hdr_size = 0;
  srrctl |= E1000_SRRCTL_DESCTYPE_ADV_ONEBUF;
 } else {
  adapter->rx_ps_hdr_size = 128;
  srrctl |= adapter->rx_ps_hdr_size <<
     E1000_SRRCTL_BSIZEHDRSIZE_SHIFT;
  srrctl |= E1000_SRRCTL_DESCTYPE_HDR_SPLIT_ALWAYS;
 }

 ew32(SRRCTL(0), srrctl);
}
