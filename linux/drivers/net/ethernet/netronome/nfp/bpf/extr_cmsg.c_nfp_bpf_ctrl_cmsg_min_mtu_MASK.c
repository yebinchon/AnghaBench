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
struct nfp_app_bpf {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_app_bpf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_app_bpf*,int) ; 

unsigned int FUNC3(struct nfp_app_bpf *bpf)
{
	return FUNC0(FUNC2(bpf, 1),
		   FUNC1(bpf, 1));
}