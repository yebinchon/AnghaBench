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
struct bpf_offloaded_map {int /*<<< orphan*/  dev_priv; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_offloaded_map*,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC2(struct bpf_offloaded_map *offmap,
			 void *key, void *value)
{
	int err;

	err = FUNC0(offmap, key, value);
	if (err)
		return err;

	FUNC1(offmap->dev_priv, value);
	return 0;
}