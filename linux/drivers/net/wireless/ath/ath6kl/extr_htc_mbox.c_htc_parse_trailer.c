
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct htc_target {int dummy; } ;
struct htc_record_hdr {int rec_id; int len; } ;
struct htc_lookahead_report {int pre_valid; int post_valid; int lk_ahd; } ;
struct htc_credit_report {int dummy; } ;
struct htc_bundle_lkahd_rpt {int lk_ahd; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int ATH6KL_DBG_HTC ;
 int EINVAL ;
 int HTC_HOST_MAX_MSG_PER_BUNDLE ;



 int WARN_ON (int) ;
 int ath6kl_dbg (int ,char*,int,int) ;
 int ath6kl_dbg_dump (int ,char*,char*,int *,int) ;
 int ath6kl_err (char*,int,int) ;
 int htc_proc_cred_rpt (struct htc_target*,struct htc_credit_report*,int,int) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int htc_parse_trailer(struct htc_target *target,
        struct htc_record_hdr *record,
        u8 *record_buf, u32 *next_lk_ahds,
        enum htc_endpoint_id endpoint,
        int *n_lk_ahds)
{
 struct htc_bundle_lkahd_rpt *bundle_lkahd_rpt;
 struct htc_lookahead_report *lk_ahd;
 int len;

 switch (record->rec_id) {
 case 130:
  len = record->len / sizeof(struct htc_credit_report);
  if (!len) {
   WARN_ON(1);
   return -EINVAL;
  }

  htc_proc_cred_rpt(target,
      (struct htc_credit_report *) record_buf,
      len, endpoint);
  break;
 case 129:
  len = record->len / sizeof(*lk_ahd);
  if (!len) {
   WARN_ON(1);
   return -EINVAL;
  }

  lk_ahd = (struct htc_lookahead_report *) record_buf;
  if ((lk_ahd->pre_valid == ((~lk_ahd->post_valid) & 0xFF)) &&
      next_lk_ahds) {
   ath6kl_dbg(ATH6KL_DBG_HTC,
       "htc rx lk_ahd found pre_valid 0x%x post_valid 0x%x\n",
       lk_ahd->pre_valid, lk_ahd->post_valid);


   memcpy((u8 *)&next_lk_ahds[0], lk_ahd->lk_ahd, 4);

   ath6kl_dbg_dump(ATH6KL_DBG_HTC,
     "htc rx next look ahead",
     "", next_lk_ahds, 4);

   *n_lk_ahds = 1;
  }
  break;
 case 128:
  len = record->len / sizeof(*bundle_lkahd_rpt);
  if (!len || (len > HTC_HOST_MAX_MSG_PER_BUNDLE)) {
   WARN_ON(1);
   return -EINVAL;
  }

  if (next_lk_ahds) {
   int i;

   bundle_lkahd_rpt =
    (struct htc_bundle_lkahd_rpt *) record_buf;

   ath6kl_dbg_dump(ATH6KL_DBG_HTC, "htc rx bundle lk_ahd",
     "", record_buf, record->len);

   for (i = 0; i < len; i++) {
    memcpy((u8 *)&next_lk_ahds[i],
           bundle_lkahd_rpt->lk_ahd, 4);
    bundle_lkahd_rpt++;
   }

   *n_lk_ahds = i;
  }
  break;
 default:
  ath6kl_err("unhandled record: id:%d len:%d\n",
      record->rec_id, record->len);
  break;
 }

 return 0;
}
