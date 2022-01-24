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
typedef  int /*<<< orphan*/  u32 ;
struct nfp_net {int /*<<< orphan*/  reconfig_in_progress_update; int /*<<< orphan*/  qcp_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_NET_CFG_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nfp_net *nn, u32 update)
{
	FUNC2(nn, NFP_NET_CFG_UPDATE, update);
	/* ensure update is written before pinging HW */
	FUNC1(nn);
	FUNC0(nn->qcp_cfg, 1);
	nn->reconfig_in_progress_update = update;
}