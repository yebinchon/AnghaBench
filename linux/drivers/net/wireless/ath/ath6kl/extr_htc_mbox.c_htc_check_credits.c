
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct htc_target {unsigned int tgt_cred_sz; int credit_info; } ;
struct TYPE_3__ {int cred_cosumd; int cred_low_indicate; } ;
struct TYPE_4__ {int credits; int seek_cred; int cred_per_msg; } ;
struct htc_endpoint {TYPE_1__ ep_st; TYPE_2__ cred_dist; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int ATH6KL_DBG_CREDIT ;
 int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int EINVAL ;
 int ENDPOINT_0 ;
 int HTC_FLAGS_NEED_CREDIT_UPDATE ;
 int ath6kl_credit_seek (int ,TYPE_2__*) ;
 int ath6kl_dbg (int ,char*,...) ;

__attribute__((used)) static int htc_check_credits(struct htc_target *target,
        struct htc_endpoint *ep, u8 *flags,
        enum htc_endpoint_id eid, unsigned int len,
        int *req_cred)
{
 *req_cred = (len > target->tgt_cred_sz) ?
       DIV_ROUND_UP(len, target->tgt_cred_sz) : 1;

 ath6kl_dbg(ATH6KL_DBG_CREDIT, "credit check need %d got %d\n",
     *req_cred, ep->cred_dist.credits);

 if (ep->cred_dist.credits < *req_cred) {
  if (eid == ENDPOINT_0)
   return -EINVAL;


  ep->cred_dist.seek_cred = *req_cred - ep->cred_dist.credits;

  ath6kl_credit_seek(target->credit_info, &ep->cred_dist);

  ep->cred_dist.seek_cred = 0;

  if (ep->cred_dist.credits < *req_cred) {
   ath6kl_dbg(ATH6KL_DBG_CREDIT,
       "credit not found for ep %d\n",
       eid);
   return -EINVAL;
  }
 }

 ep->cred_dist.credits -= *req_cred;
 ep->ep_st.cred_cosumd += *req_cred;


 if (ep->cred_dist.credits < ep->cred_dist.cred_per_msg) {
  ep->cred_dist.seek_cred =
  ep->cred_dist.cred_per_msg - ep->cred_dist.credits;

  ath6kl_credit_seek(target->credit_info, &ep->cred_dist);


  if (ep->cred_dist.credits < ep->cred_dist.cred_per_msg) {

   *flags |= HTC_FLAGS_NEED_CREDIT_UPDATE;
   ep->ep_st.cred_low_indicate += 1;
   ath6kl_dbg(ATH6KL_DBG_CREDIT,
       "credit we need credits asap\n");
  }
 }

 return 0;
}
