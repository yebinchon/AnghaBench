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
struct nfp_app_bpf {int /*<<< orphan*/  maps_neutral; scalar_t__ map_elems_in_use; scalar_t__ maps_in_use; int /*<<< orphan*/  map_list; int /*<<< orphan*/  ccm; int /*<<< orphan*/  bpf_dev; } ;
struct nfp_app {struct nfp_app_bpf* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_app_bpf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfp_check_rhashtable_empty ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nfp_app *app)
{
	struct nfp_app_bpf *bpf = app->priv;

	FUNC1(bpf->bpf_dev);
	FUNC4(&bpf->ccm);
	FUNC0(!FUNC3(&bpf->map_list));
	FUNC0(bpf->maps_in_use || bpf->map_elems_in_use);
	FUNC5(&bpf->maps_neutral,
				    nfp_check_rhashtable_empty, NULL);
	FUNC2(bpf);
}