
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des3; } ;


 int XGMAC_RDES3_IOC ;
 int XGMAC_RDES3_OWN ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void dwxgmac2_set_rx_owner(struct dma_desc *p, int disable_rx_ic)
{
 p->des3 |= cpu_to_le32(XGMAC_RDES3_OWN);

 if (!disable_rx_ic)
  p->des3 |= cpu_to_le32(XGMAC_RDES3_IOC);
}
