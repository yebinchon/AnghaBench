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
struct nfp_pf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nfp_pf*,char*,int) ; 

__attribute__((used)) static int FUNC1(struct nfp_pf *pf)
{
	return FUNC0(pf, "nfd_cfg_pf%u_num_ports", 1);
}