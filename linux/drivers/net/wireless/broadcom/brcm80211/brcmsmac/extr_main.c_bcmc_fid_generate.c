
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct d11txh {int TxFrameID; } ;
struct brcms_c_info {int mc_fid_counter; } ;
struct brcms_bss_cfg {int dummy; } ;


 int TXFID_QUEUE_MASK ;
 int TXFID_SEQ_MASK ;
 int TXFID_SEQ_SHIFT ;
 int TX_BCMC_FIFO ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u16
bcmc_fid_generate(struct brcms_c_info *wlc, struct brcms_bss_cfg *bsscfg,
    struct d11txh *txh)
{
 u16 frameid;

 frameid = le16_to_cpu(txh->TxFrameID) & ~(TXFID_SEQ_MASK |
        TXFID_QUEUE_MASK);
 frameid |=
     (((wlc->
        mc_fid_counter++) << TXFID_SEQ_SHIFT) & TXFID_SEQ_MASK) |
     TX_BCMC_FIFO;

 return frameid;
}
