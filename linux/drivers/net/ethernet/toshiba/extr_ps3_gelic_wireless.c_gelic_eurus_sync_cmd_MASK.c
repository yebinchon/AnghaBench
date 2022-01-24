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
struct gelic_wl_info {int /*<<< orphan*/  eurus_cmd_queue; } ;
struct gelic_eurus_cmd {unsigned int cmd; unsigned int buf_size; int /*<<< orphan*/  done; int /*<<< orphan*/  work; struct gelic_wl_info* wl; void* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gelic_eurus_sync_cmd_worker ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gelic_eurus_cmd* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct gelic_eurus_cmd *FUNC5(struct gelic_wl_info *wl,
						    unsigned int eurus_cmd,
						    void *buffer,
						    unsigned int buf_size)
{
	struct gelic_eurus_cmd *cmd;

	/* allocate cmd */
	cmd = FUNC2(sizeof(*cmd), GFP_KERNEL);
	if (!cmd)
		return NULL;

	/* initialize members */
	cmd->cmd = eurus_cmd;
	cmd->buffer = buffer;
	cmd->buf_size = buf_size;
	cmd->wl = wl;
	FUNC0(&cmd->work, gelic_eurus_sync_cmd_worker);
	FUNC1(&cmd->done);
	FUNC3(wl->eurus_cmd_queue, &cmd->work);

	/* wait for command completion */
	FUNC4(&cmd->done);

	return cmd;
}