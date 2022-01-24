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
struct nfp_net {struct nfp_bpf_vnic* app_priv; } ;
struct nfp_bpf_vnic {int /*<<< orphan*/  tc_prog; } ;
struct nfp_app {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_bpf_vnic*) ; 

__attribute__((used)) static void FUNC2(struct nfp_app *app, struct nfp_net *nn)
{
	struct nfp_bpf_vnic *bv = nn->app_priv;

	FUNC0(bv->tc_prog);
	FUNC1(bv);
}