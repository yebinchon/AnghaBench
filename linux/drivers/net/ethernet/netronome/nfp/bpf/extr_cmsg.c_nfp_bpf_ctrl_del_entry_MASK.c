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
struct bpf_offloaded_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_CCM_TYPE_BPF_MAP_DELETE ; 
 int FUNC0 (struct bpf_offloaded_map*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC1(struct bpf_offloaded_map *offmap, void *key)
{
	return FUNC0(offmap, NFP_CCM_TYPE_BPF_MAP_DELETE,
				     key, NULL, 0, NULL, NULL);
}