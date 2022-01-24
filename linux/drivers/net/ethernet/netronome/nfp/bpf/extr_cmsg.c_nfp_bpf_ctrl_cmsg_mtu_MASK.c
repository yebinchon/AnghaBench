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
 int /*<<< orphan*/  NFP_BPF_MAP_CACHE_CNT ; 
 int /*<<< orphan*/  NFP_NET_DEFAULT_MTU ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_app_bpf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_app_bpf*,int /*<<< orphan*/ ) ; 

unsigned int FUNC3(struct nfp_app_bpf *bpf)
{
	return FUNC0(NFP_NET_DEFAULT_MTU,
		    FUNC2(bpf, NFP_BPF_MAP_CACHE_CNT),
		    FUNC1(bpf, NFP_BPF_MAP_CACHE_CNT));
}