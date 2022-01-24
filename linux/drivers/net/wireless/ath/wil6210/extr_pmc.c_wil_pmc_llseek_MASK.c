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
struct pmc_ctx {size_t last_cmd_status; size_t descriptor_size; size_t num_descriptors; int /*<<< orphan*/  lock; } ;
struct wil6210_priv {struct pmc_ctx pmc; } ;
struct file {size_t f_pos; struct wil6210_priv* private_data; } ;
typedef  size_t loff_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pmc_ctx*) ; 

loff_t FUNC4(struct file *filp, loff_t off, int whence)
{
	loff_t newpos;
	struct wil6210_priv *wil = filp->private_data;
	struct pmc_ctx *pmc = &wil->pmc;
	size_t pmc_size;

	FUNC0(&pmc->lock);

	if (!FUNC3(pmc)) {
		FUNC2(wil, "error, pmc is not allocated!\n");
		pmc->last_cmd_status = -EPERM;
		FUNC1(&pmc->lock);
		return -EPERM;
	}

	pmc_size = pmc->descriptor_size * pmc->num_descriptors;

	switch (whence) {
	case 0: /* SEEK_SET */
		newpos = off;
		break;

	case 1: /* SEEK_CUR */
		newpos = filp->f_pos + off;
		break;

	case 2: /* SEEK_END */
		newpos = pmc_size;
		break;

	default: /* can't happen */
		newpos = -EINVAL;
		goto out;
	}

	if (newpos < 0) {
		newpos = -EINVAL;
		goto out;
	}
	if (newpos > pmc_size)
		newpos = pmc_size;

	filp->f_pos = newpos;

out:
	FUNC1(&pmc->lock);

	return newpos;
}