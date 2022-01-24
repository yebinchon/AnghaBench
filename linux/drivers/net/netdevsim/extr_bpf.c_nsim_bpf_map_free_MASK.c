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
struct nsim_bpf_bound_map {int /*<<< orphan*/  mutex; int /*<<< orphan*/  l; TYPE_1__* entry; } ;
struct bpf_offloaded_map {struct nsim_bpf_bound_map* dev_priv; } ;
struct TYPE_2__ {struct nsim_bpf_bound_map* value; struct nsim_bpf_bound_map* key; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nsim_bpf_bound_map*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bpf_offloaded_map *offmap)
{
	struct nsim_bpf_bound_map *nmap = offmap->dev_priv;
	unsigned int i;

	for (i = 0; i < FUNC0(nmap->entry); i++) {
		FUNC1(nmap->entry[i].key);
		FUNC1(nmap->entry[i].value);
	}
	FUNC2(&nmap->l);
	FUNC3(&nmap->mutex);
	FUNC1(nmap);
}