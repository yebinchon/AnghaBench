
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int dummy; } ;
struct brcms_ampdu_session {scalar_t__ dma_len; scalar_t__ ampdu_len; scalar_t__ max_ampdu_frames; scalar_t__ max_ampdu_len; int skb_list; struct brcms_c_info* wlc; } ;


 int skb_queue_head_init (int *) ;

void brcms_c_ampdu_reset_session(struct brcms_ampdu_session *session,
     struct brcms_c_info *wlc)
{
 session->wlc = wlc;
 skb_queue_head_init(&session->skb_list);
 session->max_ampdu_len = 0;
 session->max_ampdu_frames = 0;
 session->ampdu_len = 0;
 session->dma_len = 0;
}
