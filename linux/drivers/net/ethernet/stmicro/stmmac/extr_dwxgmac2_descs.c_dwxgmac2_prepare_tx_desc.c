
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des3; int des2; } ;


 int XGMAC_TDES2_B1L ;
 unsigned int XGMAC_TDES3_CIC ;
 int XGMAC_TDES3_CIC_SHIFT ;
 unsigned int XGMAC_TDES3_FD ;
 unsigned int XGMAC_TDES3_FL ;
 unsigned int XGMAC_TDES3_LD ;
 unsigned int XGMAC_TDES3_OWN ;
 int cpu_to_le32 (unsigned int) ;
 int dma_wmb () ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static void dwxgmac2_prepare_tx_desc(struct dma_desc *p, int is_fs, int len,
         bool csum_flag, int mode, bool tx_own,
         bool ls, unsigned int tot_pkt_len)
{
 unsigned int tdes3 = le32_to_cpu(p->des3);

 p->des2 |= cpu_to_le32(len & XGMAC_TDES2_B1L);

 tdes3 |= tot_pkt_len & XGMAC_TDES3_FL;
 if (is_fs)
  tdes3 |= XGMAC_TDES3_FD;
 else
  tdes3 &= ~XGMAC_TDES3_FD;

 if (csum_flag)
  tdes3 |= 0x3 << XGMAC_TDES3_CIC_SHIFT;
 else
  tdes3 &= ~XGMAC_TDES3_CIC;

 if (ls)
  tdes3 |= XGMAC_TDES3_LD;
 else
  tdes3 &= ~XGMAC_TDES3_LD;


 if (tx_own)
  tdes3 |= XGMAC_TDES3_OWN;

 if (is_fs && tx_own)




  dma_wmb();

 p->des3 = cpu_to_le32(tdes3);
}
