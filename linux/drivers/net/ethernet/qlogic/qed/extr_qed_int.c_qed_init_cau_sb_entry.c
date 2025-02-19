
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct qed_hwfn {struct qed_dev* cdev; } ;
struct qed_dev {scalar_t__ int_coalescing_mode; int rx_coalesce_usecs; int tx_coalesce_usecs; } ;
struct cau_sb_entry {int data; int params; } ;


 int CAU_HC_DISABLE_STATE ;
 int CAU_HC_ENABLE_STATE ;
 int CAU_SB_ENTRY_PF_NUMBER ;
 int CAU_SB_ENTRY_SB_TIMESET0 ;
 int CAU_SB_ENTRY_SB_TIMESET1 ;
 int CAU_SB_ENTRY_STATE0 ;
 int CAU_SB_ENTRY_STATE1 ;
 int CAU_SB_ENTRY_TIMER_RES0 ;
 int CAU_SB_ENTRY_TIMER_RES1 ;
 int CAU_SB_ENTRY_VF_NUMBER ;
 int CAU_SB_ENTRY_VF_VALID ;
 int QED_CAU_DEF_RX_USECS ;
 int QED_CAU_DEF_TX_USECS ;
 scalar_t__ QED_COAL_MODE_ENABLE ;
 int SET_FIELD (int ,int ,int) ;
 int memset (struct cau_sb_entry*,int ,int) ;

void qed_init_cau_sb_entry(struct qed_hwfn *p_hwfn,
      struct cau_sb_entry *p_sb_entry,
      u8 pf_id, u16 vf_number, u8 vf_valid)
{
 struct qed_dev *cdev = p_hwfn->cdev;
 u32 cau_state;
 u8 timer_res;

 memset(p_sb_entry, 0, sizeof(*p_sb_entry));

 SET_FIELD(p_sb_entry->params, CAU_SB_ENTRY_PF_NUMBER, pf_id);
 SET_FIELD(p_sb_entry->params, CAU_SB_ENTRY_VF_NUMBER, vf_number);
 SET_FIELD(p_sb_entry->params, CAU_SB_ENTRY_VF_VALID, vf_valid);
 SET_FIELD(p_sb_entry->params, CAU_SB_ENTRY_SB_TIMESET0, 0x7F);
 SET_FIELD(p_sb_entry->params, CAU_SB_ENTRY_SB_TIMESET1, 0x7F);

 cau_state = CAU_HC_DISABLE_STATE;

 if (cdev->int_coalescing_mode == QED_COAL_MODE_ENABLE) {
  cau_state = CAU_HC_ENABLE_STATE;
  if (!cdev->rx_coalesce_usecs)
   cdev->rx_coalesce_usecs = QED_CAU_DEF_RX_USECS;
  if (!cdev->tx_coalesce_usecs)
   cdev->tx_coalesce_usecs = QED_CAU_DEF_TX_USECS;
 }


 if (cdev->rx_coalesce_usecs <= 0x7F)
  timer_res = 0;
 else if (cdev->rx_coalesce_usecs <= 0xFF)
  timer_res = 1;
 else
  timer_res = 2;
 SET_FIELD(p_sb_entry->params, CAU_SB_ENTRY_TIMER_RES0, timer_res);

 if (cdev->tx_coalesce_usecs <= 0x7F)
  timer_res = 0;
 else if (cdev->tx_coalesce_usecs <= 0xFF)
  timer_res = 1;
 else
  timer_res = 2;
 SET_FIELD(p_sb_entry->params, CAU_SB_ENTRY_TIMER_RES1, timer_res);

 SET_FIELD(p_sb_entry->data, CAU_SB_ENTRY_STATE0, cau_state);
 SET_FIELD(p_sb_entry->data, CAU_SB_ENTRY_STATE1, cau_state);
}
