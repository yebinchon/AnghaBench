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
struct wil_tid_ampdu_rx {int /*<<< orphan*/  head_seq_num; scalar_t__* reorder_buf; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wil_tid_ampdu_rx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct wil_tid_ampdu_rx*,int) ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev,
				struct wil_tid_ampdu_rx *r)
{
	int index = FUNC0(r, r->head_seq_num);

	while (r->reorder_buf[index]) {
		FUNC1(ndev, r, index);
		index = FUNC0(r, r->head_seq_num);
	}
}