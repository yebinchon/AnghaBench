
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des3; int des2; } ;


 int XGMAC_TDES2_B1L ;
 int XGMAC_TDES2_B2L ;
 int XGMAC_TDES2_B2L_SHIFT ;
 unsigned int XGMAC_TDES3_FD ;
 unsigned int XGMAC_TDES3_LD ;
 unsigned int XGMAC_TDES3_OWN ;
 unsigned int XGMAC_TDES3_THL ;
 unsigned int XGMAC_TDES3_THL_SHIFT ;
 unsigned int XGMAC_TDES3_TPL ;
 unsigned int XGMAC_TDES3_TSE ;
 int cpu_to_le32 (unsigned int) ;
 int dma_wmb () ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static void dwxgmac2_prepare_tso_tx_desc(struct dma_desc *p, int is_fs,
      int len1, int len2, bool tx_own,
      bool ls, unsigned int tcphdrlen,
      unsigned int tcppayloadlen)
{
 unsigned int tdes3 = le32_to_cpu(p->des3);

 if (len1)
  p->des2 |= cpu_to_le32(len1 & XGMAC_TDES2_B1L);
 if (len2)
  p->des2 |= cpu_to_le32((len2 << XGMAC_TDES2_B2L_SHIFT) &
    XGMAC_TDES2_B2L);
 if (is_fs) {
  tdes3 |= XGMAC_TDES3_FD | XGMAC_TDES3_TSE;
  tdes3 |= (tcphdrlen << XGMAC_TDES3_THL_SHIFT) &
   XGMAC_TDES3_THL;
  tdes3 |= tcppayloadlen & XGMAC_TDES3_TPL;
 } else {
  tdes3 &= ~XGMAC_TDES3_FD;
 }

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
