#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct team {int /*<<< orphan*/  lock; } ;
struct lb_priv {int /*<<< orphan*/  fp; TYPE_1__* ex; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  orig_fprog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*) ; 
 struct lb_priv* FUNC2 (struct team*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct bpf_prog* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct team *team)
{
	struct lb_priv *lb_priv = FUNC2(team);
	struct bpf_prog *fp;

	if (!lb_priv->ex->orig_fprog)
		return;

	FUNC0(lb_priv->ex->orig_fprog);
	fp = FUNC4(lb_priv->fp,
				       FUNC3(&team->lock));
	FUNC1(fp);
}