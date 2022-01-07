
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct iavf_adminq_ring {scalar_t__ next_to_clean; scalar_t__ count; int head; } ;
struct TYPE_2__ {struct iavf_adminq_ring asq; } ;
struct iavf_hw {TYPE_1__ aq; } ;
struct iavf_asq_cmd_details {scalar_t__ callback; } ;
struct iavf_aq_desc {int dummy; } ;
typedef int (* IAVF_ADMINQ_CALLBACK ) (struct iavf_hw*,struct iavf_aq_desc*) ;


 struct iavf_aq_desc* IAVF_ADMINQ_DESC (struct iavf_adminq_ring,scalar_t__) ;
 struct iavf_asq_cmd_details* IAVF_ADMINQ_DETAILS (struct iavf_adminq_ring,scalar_t__) ;
 int IAVF_DEBUG_AQ_MESSAGE ;
 scalar_t__ IAVF_DESC_UNUSED (struct iavf_adminq_ring*) ;
 int iavf_debug (struct iavf_hw*,int ,char*,scalar_t__,scalar_t__) ;
 int memset (void*,int ,int) ;
 scalar_t__ rd32 (struct iavf_hw*,int ) ;

__attribute__((used)) static u16 iavf_clean_asq(struct iavf_hw *hw)
{
 struct iavf_adminq_ring *asq = &hw->aq.asq;
 struct iavf_asq_cmd_details *details;
 u16 ntc = asq->next_to_clean;
 struct iavf_aq_desc desc_cb;
 struct iavf_aq_desc *desc;

 desc = IAVF_ADMINQ_DESC(*asq, ntc);
 details = IAVF_ADMINQ_DETAILS(*asq, ntc);
 while (rd32(hw, hw->aq.asq.head) != ntc) {
  iavf_debug(hw, IAVF_DEBUG_AQ_MESSAGE,
      "ntc %d head %d.\n", ntc, rd32(hw, hw->aq.asq.head));

  if (details->callback) {
   IAVF_ADMINQ_CALLBACK cb_func =
     (IAVF_ADMINQ_CALLBACK)details->callback;
   desc_cb = *desc;
   cb_func(hw, &desc_cb);
  }
  memset((void *)desc, 0, sizeof(struct iavf_aq_desc));
  memset((void *)details, 0,
         sizeof(struct iavf_asq_cmd_details));
  ntc++;
  if (ntc == asq->count)
   ntc = 0;
  desc = IAVF_ADMINQ_DESC(*asq, ntc);
  details = IAVF_ADMINQ_DETAILS(*asq, ntc);
 }

 asq->next_to_clean = ntc;

 return IAVF_DESC_UNUSED(asq);
}
