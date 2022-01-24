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
struct nfp_net {struct msix_entry* irq_entries; } ;
struct msix_entry {int /*<<< orphan*/  entry; int /*<<< orphan*/  vector; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct nfp_net *nn, u32 ctrl_offset,
			const char *format, char *name, size_t name_sz,
			unsigned int vector_idx, irq_handler_t handler)
{
	struct msix_entry *entry;
	int err;

	entry = &nn->irq_entries[vector_idx];

	FUNC5(name, name_sz, format, FUNC1(nn));
	err = FUNC4(entry->vector, handler, 0, name, nn);
	if (err) {
		FUNC2(nn, "Failed to request IRQ %d (err=%d).\n",
		       entry->vector, err);
		return err;
	}
	FUNC3(nn, ctrl_offset, entry->entry);
	FUNC0(nn, entry->entry);

	return 0;
}