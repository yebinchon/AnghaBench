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
struct wil_rx_buff_mgmt {int size; int free_list_empty_cnt; int /*<<< orphan*/  free; int /*<<< orphan*/  active; int /*<<< orphan*/  buff_arr; } ;
struct wil6210_priv {struct wil_rx_buff_mgmt rx_buff_mgmt; } ;
struct seq_file {struct wil6210_priv* private; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 
 int FUNC2 (struct seq_file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct seq_file *s, void *data)
{
	struct wil6210_priv *wil = s->private;
	struct wil_rx_buff_mgmt *rbm = &wil->rx_buff_mgmt;
	int num_active;
	int num_free;

	if (!rbm->buff_arr)
		return -EINVAL;

	FUNC0(s, "  size = %zu\n", rbm->size);
	FUNC0(s, "  free_list_empty_cnt = %lu\n",
		   rbm->free_list_empty_cnt);

	/* Print active list */
	FUNC1(s, "  Active list:\n");
	num_active = FUNC2(s, &rbm->active);
	FUNC1(s, "\n  Free list:\n");
	num_free = FUNC2(s, &rbm->free);

	FUNC0(s, "  Total number of buffers: %u\n",
		   num_active + num_free);

	return 0;
}