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
struct nfp_nsp {int dummy; } ;
struct nfp_app {int /*<<< orphan*/  cpp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_FWVERS_LEN ; 
 scalar_t__ FUNC0 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_nsp*) ; 
 struct nfp_nsp* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nfp_app *app, char *version)
{
	struct nfp_nsp *nsp;

	if (!app)
		return;

	nsp = FUNC4(app->cpp);
	if (FUNC0(nsp))
		return;

	FUNC5(version, ETHTOOL_FWVERS_LEN, "%hu.%hu",
		 FUNC2(nsp),
		 FUNC3(nsp));

	FUNC1(nsp);
}