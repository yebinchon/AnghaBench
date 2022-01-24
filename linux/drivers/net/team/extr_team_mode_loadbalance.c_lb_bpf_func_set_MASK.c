#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  len; } ;
struct TYPE_5__ {TYPE_1__ bin_val; } ;
struct team_gsetter_ctx {TYPE_2__ data; } ;
struct team {int /*<<< orphan*/  lock; } ;
struct sock_fprog_kern {int dummy; } ;
struct lb_priv {TYPE_3__* ex; int /*<<< orphan*/  fp; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_6__ {struct sock_fprog_kern* orig_fprog; } ;

/* Variables and functions */
 int FUNC0 (struct sock_fprog_kern**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock_fprog_kern*) ; 
 int FUNC2 (struct bpf_prog**,struct sock_fprog_kern*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_prog*) ; 
 struct lb_priv* FUNC4 (struct team*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct bpf_prog*) ; 
 struct bpf_prog* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct team *team, struct team_gsetter_ctx *ctx)
{
	struct lb_priv *lb_priv = FUNC4(team);
	struct bpf_prog *fp = NULL;
	struct bpf_prog *orig_fp = NULL;
	struct sock_fprog_kern *fprog = NULL;
	int err;

	if (ctx->data.bin_val.len) {
		err = FUNC0(&fprog, ctx->data.bin_val.len,
				     ctx->data.bin_val.ptr);
		if (err)
			return err;
		err = FUNC2(&fp, fprog);
		if (err) {
			FUNC1(fprog);
			return err;
		}
	}

	if (lb_priv->ex->orig_fprog) {
		/* Clear old filter data */
		FUNC1(lb_priv->ex->orig_fprog);
		orig_fp = FUNC7(lb_priv->fp,
						FUNC5(&team->lock));
	}

	FUNC6(lb_priv->fp, fp);
	lb_priv->ex->orig_fprog = fprog;

	if (orig_fp) {
		FUNC8();
		FUNC3(orig_fp);
	}
	return 0;
}