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
struct fman_port {TYPE_2__* cfg; } ;
struct fman_buffer_prefix_content {int dummy; } ;
struct TYPE_3__ {scalar_t__ data_align; } ;
struct TYPE_4__ {TYPE_1__ buffer_prefix_content; } ;

/* Variables and functions */
 scalar_t__ DFLT_PORT_BUFFER_PREFIX_CONTEXT_DATA_ALIGN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct fman_buffer_prefix_content*,int) ; 

int FUNC2(struct fman_port *port,
				     struct fman_buffer_prefix_content *
				     buffer_prefix_content)
{
	if (FUNC0(port->cfg))
		return -EINVAL;

	FUNC1(&port->cfg->buffer_prefix_content,
	       buffer_prefix_content,
	       sizeof(struct fman_buffer_prefix_content));
	/* if data_align was not initialized by user,
	 * we return to driver's default
	 */
	if (!port->cfg->buffer_prefix_content.data_align)
		port->cfg->buffer_prefix_content.data_align =
		DFLT_PORT_BUFFER_PREFIX_CONTEXT_DATA_ALIGN;

	return 0;
}