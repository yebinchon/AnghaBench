
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int dummy; } ;


 int LAN743X_CSR_READ_OP ;
 int PMT_CTL ;
 int PMT_CTL_ETH_PHY_RST_ ;
 int PMT_CTL_READY_ ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int readx_poll_timeout (int ,int ,int,int,int,int) ;

__attribute__((used)) static int lan743x_phy_reset(struct lan743x_adapter *adapter)
{
 u32 data;



 data = lan743x_csr_read(adapter, PMT_CTL);
 data |= PMT_CTL_ETH_PHY_RST_;
 lan743x_csr_write(adapter, PMT_CTL, data);

 return readx_poll_timeout(LAN743X_CSR_READ_OP, PMT_CTL, data,
      (!(data & PMT_CTL_ETH_PHY_RST_) &&
      (data & PMT_CTL_READY_)),
      50000, 1000000);
}
