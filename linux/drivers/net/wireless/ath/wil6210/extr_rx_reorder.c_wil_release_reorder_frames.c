
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wil_tid_ampdu_rx {int head_seq_num; scalar_t__ stored_mpdu_num; } ;
struct net_device {int dummy; } ;


 int reorder_index (struct wil_tid_ampdu_rx*,int ) ;
 scalar_t__ seq_less (int ,int ) ;
 int wil_release_reorder_frame (struct net_device*,struct wil_tid_ampdu_rx*,int) ;

__attribute__((used)) static void wil_release_reorder_frames(struct net_device *ndev,
           struct wil_tid_ampdu_rx *r,
           u16 hseq)
{
 int index;







 while (seq_less(r->head_seq_num, hseq) && r->stored_mpdu_num) {
  index = reorder_index(r, r->head_seq_num);
  wil_release_reorder_frame(ndev, r, index);
 }
 r->head_seq_num = hseq;
}
