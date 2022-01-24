#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct wil_tid_ampdu_rx {int head_seq_num; int ssn; int buf_size; unsigned long long drop_dup; unsigned long long drop_old; unsigned long long drop_dup_mcast; int /*<<< orphan*/  ssn_last_drop; int /*<<< orphan*/  total; scalar_t__* reorder_buf; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int,...) ; 

__attribute__((used)) static void FUNC1(struct seq_file *s, struct wil_tid_ampdu_rx *r)
{
	int i;
	u16 index = ((r->head_seq_num - r->ssn) & 0xfff) % r->buf_size;
	unsigned long long drop_dup = r->drop_dup, drop_old = r->drop_old;
	unsigned long long drop_dup_mcast = r->drop_dup_mcast;

	FUNC0(s, "([%2d]) 0x%03x [", r->buf_size, r->head_seq_num);
	for (i = 0; i < r->buf_size; i++) {
		if (i == index)
			FUNC0(s, "%c", r->reorder_buf[i] ? 'O' : '|');
		else
			FUNC0(s, "%c", r->reorder_buf[i] ? '*' : '_');
	}
	FUNC0(s,
		   "] total %llu drop %llu (dup %llu + old %llu + dup mcast %llu) last 0x%03x\n",
		   r->total, drop_dup + drop_old + drop_dup_mcast, drop_dup,
		   drop_old, drop_dup_mcast, r->ssn_last_drop);
}