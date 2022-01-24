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
struct nfp_rtsym {int dummy; } ;
struct nfp_abm {TYPE_1__* app; int /*<<< orphan*/  pf_id; int /*<<< orphan*/  num_bands; } ;
typedef  int /*<<< orphan*/  pf_symbol ;
struct TYPE_2__ {int /*<<< orphan*/  pf; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_NET_MAX_RX_RINGS ; 
 size_t FUNC0 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfp_rtsym const* FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC2 (struct nfp_abm*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const struct nfp_rtsym *
FUNC4(struct nfp_abm *abm, const char *name_fmt,
			  size_t size)
{
	char pf_symbol[64];

	size = FUNC0(size, abm->num_bands, NFP_NET_MAX_RX_RINGS);
	FUNC3(pf_symbol, sizeof(pf_symbol), name_fmt,
		 abm->pf_id, FUNC2(abm) ? "_per_band" : "");

	return FUNC1(abm->app->pf, pf_symbol, size);
}