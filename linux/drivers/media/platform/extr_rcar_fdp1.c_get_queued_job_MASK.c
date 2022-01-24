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
struct fdp1_job {int dummy; } ;
struct fdp1_dev {int /*<<< orphan*/  queued_job_list; } ;

/* Variables and functions */
 struct fdp1_job* FUNC0 (struct fdp1_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fdp1_job *FUNC1(struct fdp1_dev *fdp1)
{
	return FUNC0(fdp1, &fdp1->queued_job_list);
}