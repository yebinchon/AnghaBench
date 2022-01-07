
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DMA_CONTROL_EFC ;
 int DMA_CONTROL_RFA_MASK ;
 int DMA_CONTROL_RFD_MASK ;
 int RFA_FULL_MINUS_1K ;
 int RFD_FULL_MINUS_2K ;
 int pr_debug (char*,int) ;

__attribute__((used)) static u32 dwmac1000_configure_fc(u32 csr6, int rxfifosz)
{
 csr6 &= ~DMA_CONTROL_RFA_MASK;
 csr6 &= ~DMA_CONTROL_RFD_MASK;





 if (rxfifosz < 4096) {
  csr6 &= ~DMA_CONTROL_EFC;
  pr_debug("GMAC: disabling flow control, rxfifo too small(%d)\n",
    rxfifosz);
 } else {
  csr6 |= DMA_CONTROL_EFC;
  csr6 |= RFA_FULL_MINUS_1K;
  csr6 |= RFD_FULL_MINUS_2K;
 }
 return csr6;
}
