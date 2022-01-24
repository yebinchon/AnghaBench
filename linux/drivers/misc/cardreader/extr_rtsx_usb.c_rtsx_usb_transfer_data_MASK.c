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
struct scatterlist {int dummy; } ;
struct rtsx_ucr {int /*<<< orphan*/  pusb_dev; } ;

/* Variables and functions */
 int FUNC0 (struct rtsx_ucr*,unsigned int,struct scatterlist*,int,unsigned int,unsigned int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,void*,unsigned int,unsigned int*,int) ; 

int FUNC2(struct rtsx_ucr *ucr, unsigned int pipe,
			      void *buf, unsigned int len, int num_sg,
			      unsigned int *act_len, int timeout)
{
	if (timeout < 600)
		timeout = 600;

	if (num_sg)
		return FUNC0(ucr, pipe,
				(struct scatterlist *)buf, num_sg, len, act_len,
				timeout);
	else
		return FUNC1(ucr->pusb_dev, pipe, buf, len, act_len,
				timeout);
}