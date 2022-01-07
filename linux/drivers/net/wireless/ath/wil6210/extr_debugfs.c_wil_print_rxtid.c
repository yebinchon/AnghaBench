
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wil_tid_ampdu_rx {int head_seq_num; int ssn; int buf_size; unsigned long long drop_dup; unsigned long long drop_old; unsigned long long drop_dup_mcast; int ssn_last_drop; int total; scalar_t__* reorder_buf; } ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int,...) ;

__attribute__((used)) static void wil_print_rxtid(struct seq_file *s, struct wil_tid_ampdu_rx *r)
{
 int i;
 u16 index = ((r->head_seq_num - r->ssn) & 0xfff) % r->buf_size;
 unsigned long long drop_dup = r->drop_dup, drop_old = r->drop_old;
 unsigned long long drop_dup_mcast = r->drop_dup_mcast;

 seq_printf(s, "([%2d]) 0x%03x [", r->buf_size, r->head_seq_num);
 for (i = 0; i < r->buf_size; i++) {
  if (i == index)
   seq_printf(s, "%c", r->reorder_buf[i] ? 'O' : '|');
  else
   seq_printf(s, "%c", r->reorder_buf[i] ? '*' : '_');
 }
 seq_printf(s,
     "] total %llu drop %llu (dup %llu + old %llu + dup mcast %llu) last 0x%03x\n",
     r->total, drop_dup + drop_old + drop_dup_mcast, drop_dup,
     drop_old, drop_dup_mcast, r->ssn_last_drop);
}
