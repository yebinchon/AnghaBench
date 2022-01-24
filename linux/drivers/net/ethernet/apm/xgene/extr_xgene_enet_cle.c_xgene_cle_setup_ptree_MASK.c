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
struct xgene_enet_pdata {int dummy; } ;
struct xgene_enet_cle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xgene_enet_pdata*,struct xgene_enet_cle*) ; 
 int FUNC1 (struct xgene_enet_pdata*,struct xgene_enet_cle*) ; 
 int FUNC2 (struct xgene_enet_pdata*,struct xgene_enet_cle*) ; 

__attribute__((used)) static int FUNC3(struct xgene_enet_pdata *pdata,
				 struct xgene_enet_cle *cle)
{
	int ret;

	ret = FUNC2(pdata, cle);
	if (ret)
		return ret;

	ret = FUNC1(pdata, cle);
	if (ret)
		return ret;

	FUNC0(pdata, cle);

	return 0;
}