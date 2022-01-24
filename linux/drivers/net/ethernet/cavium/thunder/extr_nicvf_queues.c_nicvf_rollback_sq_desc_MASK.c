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
struct snd_queue {int tail; int /*<<< orphan*/  free_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct snd_queue *sq,
					  int qentry, int desc_cnt)
{
	sq->tail = qentry;
	FUNC0(desc_cnt, &sq->free_cnt);
}