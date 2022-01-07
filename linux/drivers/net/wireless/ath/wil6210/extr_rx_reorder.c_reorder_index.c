
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wil_tid_ampdu_rx {int buf_size; int ssn; } ;


 int seq_sub (int ,int ) ;

__attribute__((used)) static inline int reorder_index(struct wil_tid_ampdu_rx *r, u16 seq)
{
 return seq_sub(seq, r->ssn) % r->buf_size;
}
