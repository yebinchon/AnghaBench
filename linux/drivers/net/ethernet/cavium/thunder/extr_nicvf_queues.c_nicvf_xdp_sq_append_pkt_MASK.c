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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct snd_queue {int xdp_free_cnt; int xdp_desc_cnt; } ;
struct nicvf {int dummy; } ;

/* Variables and functions */
 int MIN_SQ_DESC_PER_PKT_XMIT ; 
 int FUNC0 (struct snd_queue*,int) ; 
 int FUNC1 (struct snd_queue*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_queue*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_queue*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct nicvf *nic, struct snd_queue *sq,
			    u64 bufaddr, u64 dma_addr, u16 len)
{
	int subdesc_cnt = MIN_SQ_DESC_PER_PKT_XMIT;
	int qentry;

	if (subdesc_cnt > sq->xdp_free_cnt)
		return 0;

	qentry = FUNC1(sq, subdesc_cnt);

	FUNC3(sq, qentry, subdesc_cnt - 1, bufaddr, len);

	qentry = FUNC0(sq, qentry);
	FUNC2(sq, qentry, len, dma_addr);

	sq->xdp_desc_cnt += subdesc_cnt;

	return 1;
}