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
struct pktq {int num_prec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pktq*,int,int,int (*) (struct sk_buff*,void*),void*) ; 

void FUNC1(struct pktq *pq, bool dir,
		      bool (*fn)(struct sk_buff *, void *), void *arg)
{
	int prec;
	for (prec = 0; prec < pq->num_prec; prec++)
		FUNC0(pq, prec, dir, fn, arg);
}