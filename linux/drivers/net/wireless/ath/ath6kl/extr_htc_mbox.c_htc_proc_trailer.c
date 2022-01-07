
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct htc_target {int dummy; } ;
struct htc_record_hdr {int len; int rec_id; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int ATH6KL_DBG_HTC ;
 int ENOMEM ;
 int ath6kl_dbg (int ,char*,int) ;
 int ath6kl_dbg_dump (int ,char*,char*,int *,int) ;
 int ath6kl_err (char*,int,int ,int) ;
 int htc_parse_trailer (struct htc_target*,struct htc_record_hdr*,int *,int *,int,int*) ;

__attribute__((used)) static int htc_proc_trailer(struct htc_target *target,
       u8 *buf, int len, u32 *next_lk_ahds,
       int *n_lk_ahds, enum htc_endpoint_id endpoint)
{
 struct htc_record_hdr *record;
 int orig_len;
 int status;
 u8 *record_buf;
 u8 *orig_buf;

 ath6kl_dbg(ATH6KL_DBG_HTC, "htc rx trailer len %d\n", len);
 ath6kl_dbg_dump(ATH6KL_DBG_HTC, ((void*)0), "", buf, len);

 orig_buf = buf;
 orig_len = len;
 status = 0;

 while (len > 0) {
  if (len < sizeof(struct htc_record_hdr)) {
   status = -ENOMEM;
   break;
  }

  record = (struct htc_record_hdr *) buf;
  len -= sizeof(struct htc_record_hdr);
  buf += sizeof(struct htc_record_hdr);

  if (record->len > len) {
   ath6kl_err("invalid record len: %d (id:%d) buf has: %d bytes left\n",
       record->len, record->rec_id, len);
   status = -ENOMEM;
   break;
  }
  record_buf = buf;

  status = htc_parse_trailer(target, record, record_buf,
        next_lk_ahds, endpoint, n_lk_ahds);

  if (status)
   break;


  buf += record->len;
  len -= record->len;
 }

 if (status)
  ath6kl_dbg_dump(ATH6KL_DBG_HTC, "htc rx bad trailer",
    "", orig_buf, orig_len);

 return status;
}
