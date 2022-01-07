
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int len; int id; } ;
struct ath10k_htc_record {TYPE_1__ hdr; struct ath10k_htc_lookahead_bundle* lookahead_bundle; int lookahead_report; int credit_report; } ;
struct ath10k_htc_lookahead_report {int dummy; } ;
struct ath10k_htc_lookahead_bundle {int dummy; } ;
struct ath10k_htc_credit_report {int dummy; } ;
struct ath10k_htc {struct ath10k* ar; } ;
struct ath10k {int dummy; } ;
typedef enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;


 int ATH10K_DBG_HTC ;



 int EINVAL ;
 int ath10k_dbg_dump (struct ath10k*,int ,char*,char*,int *,int) ;
 int ath10k_htc_process_credit_report (struct ath10k_htc*,int ,size_t,int) ;
 int ath10k_htc_process_lookahead (struct ath10k_htc*,int ,size_t,int,void*,int*) ;
 int ath10k_htc_process_lookahead_bundle (struct ath10k_htc*,struct ath10k_htc_lookahead_bundle*,size_t,int,void*,int*) ;
 int ath10k_warn (struct ath10k*,char*,...) ;

int ath10k_htc_process_trailer(struct ath10k_htc *htc,
          u8 *buffer,
          int length,
          enum ath10k_htc_ep_id src_eid,
          void *next_lookaheads,
          int *next_lookaheads_len)
{
 struct ath10k_htc_lookahead_bundle *bundle;
 struct ath10k *ar = htc->ar;
 int status = 0;
 struct ath10k_htc_record *record;
 u8 *orig_buffer;
 int orig_length;
 size_t len;

 orig_buffer = buffer;
 orig_length = length;

 while (length > 0) {
  record = (struct ath10k_htc_record *)buffer;

  if (length < sizeof(record->hdr)) {
   status = -EINVAL;
   break;
  }

  if (record->hdr.len > length) {

   ath10k_warn(ar, "Invalid record length: %d\n",
        record->hdr.len);
   status = -EINVAL;
   break;
  }

  switch (record->hdr.id) {
  case 130:
   len = sizeof(struct ath10k_htc_credit_report);
   if (record->hdr.len < len) {
    ath10k_warn(ar, "Credit report too long\n");
    status = -EINVAL;
    break;
   }
   ath10k_htc_process_credit_report(htc,
        record->credit_report,
        record->hdr.len,
        src_eid);
   break;
  case 129:
   len = sizeof(struct ath10k_htc_lookahead_report);
   if (record->hdr.len < len) {
    ath10k_warn(ar, "Lookahead report too long\n");
    status = -EINVAL;
    break;
   }
   status = ath10k_htc_process_lookahead(htc,
             record->lookahead_report,
             record->hdr.len,
             src_eid,
             next_lookaheads,
             next_lookaheads_len);
   break;
  case 128:
   bundle = record->lookahead_bundle;
   status = ath10k_htc_process_lookahead_bundle(htc,
             bundle,
             record->hdr.len,
             src_eid,
             next_lookaheads,
             next_lookaheads_len);
   break;
  default:
   ath10k_warn(ar, "Unhandled record: id:%d length:%d\n",
        record->hdr.id, record->hdr.len);
   break;
  }

  if (status)
   break;


  buffer += sizeof(record->hdr) + record->hdr.len;
  length -= sizeof(record->hdr) + record->hdr.len;
 }

 if (status)
  ath10k_dbg_dump(ar, ATH10K_DBG_HTC, "htc rx bad trailer", "",
    orig_buffer, orig_length);

 return status;
}
