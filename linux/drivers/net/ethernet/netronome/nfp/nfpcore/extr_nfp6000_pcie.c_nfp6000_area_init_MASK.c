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
typedef  void* u32 ;
struct nfp_cpp_area {int dummy; } ;
struct TYPE_2__ {scalar_t__ read; scalar_t__ write; scalar_t__ bar; } ;
struct nfp6000_area_priv {unsigned long long offset; unsigned long size; int /*<<< orphan*/  resource; void* token; void* action; void* target; int /*<<< orphan*/ * bar; int /*<<< orphan*/  refcnt; TYPE_1__ width; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (void*,void*,void*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct nfp6000_area_priv* FUNC8 (struct nfp_cpp_area*) ; 
 int FUNC9 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static int FUNC10(struct nfp_cpp_area *area, u32 dest,
			     unsigned long long address, unsigned long size)
{
	struct nfp6000_area_priv *priv = FUNC8(area);
	u32 target = FUNC2(dest);
	u32 action = FUNC1(dest);
	u32 token = FUNC3(dest);
	int pp;

	pp = FUNC9(FUNC0(target, action, token), address);
	if (pp < 0)
		return pp;

	priv->width.read = FUNC5(pp);
	priv->width.write = FUNC4(pp);
	if (priv->width.read > 0 &&
	    priv->width.write > 0 &&
	    priv->width.read != priv->width.write) {
		return -EINVAL;
	}

	if (priv->width.read > 0)
		priv->width.bar = priv->width.read;
	else
		priv->width.bar = priv->width.write;

	FUNC6(&priv->refcnt, 0);
	priv->bar = NULL;

	priv->target = target;
	priv->action = action;
	priv->token = token;
	priv->offset = address;
	priv->size = size;
	FUNC7(&priv->resource, 0, sizeof(priv->resource));

	return 0;
}