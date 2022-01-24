#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfp_prog {int /*<<< orphan*/  bpf; int /*<<< orphan*/  prog; } ;
struct bpf_prog {TYPE_2__* aux; } ;
struct TYPE_4__ {TYPE_1__* offload; } ;
struct TYPE_3__ {struct nfp_prog* dev_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*) ; 

__attribute__((used)) static void FUNC3(struct bpf_prog *prog)
{
	struct nfp_prog *nfp_prog = prog->aux->offload->dev_priv;

	FUNC0(nfp_prog->prog);
	FUNC1(nfp_prog->bpf, nfp_prog);
	FUNC2(nfp_prog);
}