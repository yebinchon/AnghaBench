#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct file {struct dvb_device* private_data; } ;
struct dvb_device {struct ddb_output* priv; } ;
struct ddb_output {TYPE_2__* dma; TYPE_3__* port; } ;
struct ddb_input {TYPE_1__* dma; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_6__ {struct ddb_input** input; } ;
struct TYPE_5__ {int /*<<< orphan*/  wq; } ;
struct TYPE_4__ {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int FUNC0 (struct ddb_input*) ; 
 int FUNC1 (struct ddb_output*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC3(struct file *file, poll_table *wait)
{
	struct dvb_device *dvbdev = file->private_data;
	struct ddb_output *output = dvbdev->priv;
	struct ddb_input *input = output->port->input[0];

	__poll_t mask = 0;

	FUNC2(file, &input->dma->wq, wait);
	FUNC2(file, &output->dma->wq, wait);
	if (FUNC0(input) >= 188)
		mask |= EPOLLIN | EPOLLRDNORM;
	if (FUNC1(output) >= 188)
		mask |= EPOLLOUT | EPOLLWRNORM;
	return mask;
}