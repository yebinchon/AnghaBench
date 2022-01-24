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
struct si470x_device {int* registers; scalar_t__ rd_index; scalar_t__ wr_index; int /*<<< orphan*/  read_queue; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 size_t SYSCONFIG1 ; 
 int SYSCONFIG1_RDS ; 
 int FUNC0 (struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct si470x_device*) ; 
 int FUNC3 (struct file*,struct poll_table_struct*) ; 
 struct si470x_device* FUNC4 (struct file*) ; 

__attribute__((used)) static __poll_t FUNC5(struct file *file,
		struct poll_table_struct *pts)
{
	struct si470x_device *radio = FUNC4(file);
	__poll_t req_events = FUNC0(pts);
	__poll_t retval = FUNC3(file, pts);

	if (req_events & (EPOLLIN | EPOLLRDNORM)) {
		/* switch on rds reception */
		if ((radio->registers[SYSCONFIG1] & SYSCONFIG1_RDS) == 0)
			FUNC2(radio);

		FUNC1(file, &radio->read_queue, pts);

		if (radio->rd_index != radio->wr_index)
			retval |= EPOLLIN | EPOLLRDNORM;
	}

	return retval;
}