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
struct nfp_prog {int type; } ;

/* Variables and functions */
#define  BPF_PROG_TYPE_SCHED_CLS 129 
#define  BPF_PROG_TYPE_XDP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_prog*) ; 

__attribute__((used)) static void FUNC6(struct nfp_prog *nfp_prog)
{
	switch (nfp_prog->type) {
	case BPF_PROG_TYPE_SCHED_CLS:
		FUNC1(nfp_prog);
		break;
	case BPF_PROG_TYPE_XDP:
		FUNC2(nfp_prog);
		break;
	default:
		FUNC0(1);
	}

	if (!FUNC4(nfp_prog))
		return;

	FUNC5(nfp_prog);
	FUNC3(nfp_prog);
}