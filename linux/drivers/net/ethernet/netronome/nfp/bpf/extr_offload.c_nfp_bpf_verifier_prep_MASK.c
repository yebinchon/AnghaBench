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
struct nfp_prog {int /*<<< orphan*/  verifier_meta; int /*<<< orphan*/  bpf; int /*<<< orphan*/  type; int /*<<< orphan*/  insns; } ;
struct bpf_prog {int /*<<< orphan*/  len; int /*<<< orphan*/  insnsi; TYPE_1__* aux; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  offdev; struct nfp_prog* dev_priv; } ;
struct TYPE_3__ {TYPE_2__* offload; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfp_prog* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*) ; 
 int FUNC5 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct bpf_prog *prog)
{
	struct nfp_prog *nfp_prog;
	int ret;

	nfp_prog = FUNC2(sizeof(*nfp_prog), GFP_KERNEL);
	if (!nfp_prog)
		return -ENOMEM;
	prog->aux->offload->dev_priv = nfp_prog;

	FUNC0(&nfp_prog->insns);
	nfp_prog->type = prog->type;
	nfp_prog->bpf = FUNC1(prog->aux->offload->offdev);

	ret = FUNC5(nfp_prog, prog->insnsi, prog->len);
	if (ret)
		goto err_free;

	nfp_prog->verifier_meta = FUNC3(nfp_prog);

	return 0;

err_free:
	FUNC4(nfp_prog);

	return ret;
}