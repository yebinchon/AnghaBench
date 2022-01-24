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
struct nfp_net {struct nfp_abm_link* app_priv; } ;
struct nfp_app {int dummy; } ;
struct nfp_abm_link {struct nfp_abm_link* prio_map; int /*<<< orphan*/  qdiscs; int /*<<< orphan*/  abm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_abm_link*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nfp_abm_link*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct nfp_app *app, struct nfp_net *nn)
{
	struct nfp_abm_link *alink = nn->app_priv;

	FUNC2(alink->abm, alink);
	FUNC0(!FUNC3(&alink->qdiscs), "left over qdiscs\n");
	FUNC1(alink->prio_map);
	FUNC1(alink);
}