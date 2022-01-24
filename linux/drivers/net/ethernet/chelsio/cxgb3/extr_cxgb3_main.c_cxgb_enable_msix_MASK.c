#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct msix_entry {int entry; int /*<<< orphan*/  vector; } ;
struct TYPE_3__ {scalar_t__ nports; } ;
struct adapter {int msix_nvectors; TYPE_2__* msix_info; TYPE_1__ params; int /*<<< orphan*/  pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  vec; } ;

/* Variables and functions */
 int FUNC0 (struct msix_entry*) ; 
 int /*<<< orphan*/  SGE_QSETS ; 
 int FUNC1 (int /*<<< orphan*/ ,struct msix_entry*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct adapter *adap)
{
	struct msix_entry entries[SGE_QSETS + 1];
	int vectors;
	int i;

	vectors = FUNC0(entries);
	for (i = 0; i < vectors; ++i)
		entries[i].entry = i;

	vectors = FUNC1(adap->pdev, entries,
					adap->params.nports + 1, vectors);
	if (vectors < 0)
		return vectors;

	for (i = 0; i < vectors; ++i)
		adap->msix_info[i].vec = entries[i].vector;
	adap->msix_nvectors = vectors;

	return 0;
}