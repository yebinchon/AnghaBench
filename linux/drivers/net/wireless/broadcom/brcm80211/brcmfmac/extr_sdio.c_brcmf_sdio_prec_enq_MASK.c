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
struct sk_buff {int dummy; } ;
struct pktq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct pktq*,int) ; 
 struct sk_buff* FUNC3 (struct pktq*,int*) ; 
 struct sk_buff* FUNC4 (struct pktq*,int,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct pktq*) ; 
 scalar_t__ FUNC6 (struct pktq*,int) ; 

__attribute__((used)) static bool FUNC7(struct pktq *q, struct sk_buff *pkt, int prec)
{
	struct sk_buff *p;
	int eprec = -1;		/* precedence to evict from */

	/* Fast case, precedence queue is not full and we are also not
	 * exceeding total queue length
	 */
	if (!FUNC6(q, prec) && !FUNC5(q)) {
		FUNC4(q, prec, pkt);
		return true;
	}

	/* Determine precedence from which to evict packet, if any */
	if (FUNC6(q, prec)) {
		eprec = prec;
	} else if (FUNC5(q)) {
		p = FUNC3(q, &eprec);
		if (eprec > prec)
			return false;
	}

	/* Evict if needed */
	if (eprec >= 0) {
		/* Detect queueing to unconfigured precedence */
		if (eprec == prec)
			return false;	/* refuse newer (incoming) packet */
		/* Evict packet according to discard policy */
		p = FUNC2(q, eprec);
		if (p == NULL)
			FUNC0("brcmu_pktq_pdeq_tail() failed\n");
		FUNC1(p);
	}

	/* Enqueue */
	p = FUNC4(q, prec, pkt);
	if (p == NULL)
		FUNC0("brcmu_pktq_penq() failed\n");

	return p != NULL;
}