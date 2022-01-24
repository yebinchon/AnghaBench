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
struct pmc_ctx {int num_descriptors; int last_cmd_status; int /*<<< orphan*/  lock; int /*<<< orphan*/  pring_va; } ;
struct wil6210_priv {struct pmc_ctx pmc; } ;
struct vring_rx_desc {int dummy; } ;
struct seq_file {struct wil6210_priv* private; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pmc_ctx*) ; 

int FUNC6(struct seq_file *s, void *data)
{
	struct wil6210_priv *wil = s->private;
	struct pmc_ctx *pmc = &wil->pmc;
	size_t pmc_ring_size =
		sizeof(struct vring_rx_desc) * pmc->num_descriptors;

	FUNC0(&pmc->lock);

	if (!FUNC5(pmc)) {
		FUNC4(wil, "error, pmc is not allocated!\n");
		pmc->last_cmd_status = -EPERM;
		FUNC1(&pmc->lock);
		return -EPERM;
	}

	FUNC3(wil, "pmcring_read: size %zu\n", pmc_ring_size);

	FUNC2(s, pmc->pring_va, pmc_ring_size);

	FUNC1(&pmc->lock);

	return 0;
}