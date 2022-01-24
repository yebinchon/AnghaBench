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
struct nfp_cpp_area {int dummy; } ;
struct nfp6000_area_priv {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nfp6000_area_priv* FUNC3 (struct nfp_cpp_area*) ; 

__attribute__((used)) static int FUNC4(struct nfp_cpp_area *area)
{
	struct nfp6000_area_priv *priv = FUNC3(area);

	if (FUNC0(!FUNC2(&priv->refcnt)))
		return 0;

	return FUNC1(&priv->refcnt);
}