
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des3; } ;


 int RDES3_BUFFER1_VALID_ADDR ;
 int RDES3_INT_ON_COMPLETION_EN ;
 int RDES3_OWN ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static void dwmac4_set_rx_owner(struct dma_desc *p, int disable_rx_ic)
{
 p->des3 = cpu_to_le32(RDES3_OWN | RDES3_BUFFER1_VALID_ADDR);

 if (!disable_rx_ic)
  p->des3 |= cpu_to_le32(RDES3_INT_ON_COMPLETION_EN);
}
