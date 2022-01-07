
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath10k_htc_lookahead_report {int pre_valid; int post_valid; int lookahead; } ;
struct ath10k_htc {struct ath10k* ar; } ;
struct ath10k {int dummy; } ;
typedef enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;


 int ATH10K_DBG_HTC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int
ath10k_htc_process_lookahead(struct ath10k_htc *htc,
        const struct ath10k_htc_lookahead_report *report,
        int len,
        enum ath10k_htc_ep_id eid,
        void *next_lookaheads,
        int *next_lookaheads_len)
{
 struct ath10k *ar = htc->ar;






 if (report->pre_valid != ((~report->post_valid) & 0xFF))
  return 0;

 if (next_lookaheads && next_lookaheads_len) {
  ath10k_dbg(ar, ATH10K_DBG_HTC,
      "htc rx lookahead found pre_valid 0x%x post_valid 0x%x\n",
      report->pre_valid, report->post_valid);


  memcpy((u8 *)next_lookaheads, report->lookahead, 4);

  *next_lookaheads_len = 1;
 }

 return 0;
}
