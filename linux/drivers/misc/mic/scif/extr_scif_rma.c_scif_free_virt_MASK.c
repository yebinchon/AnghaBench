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
struct scifmsg {scalar_t__* payload; } ;
struct scif_window {int dummy; } ;
struct scif_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scif_window*) ; 

void FUNC1(struct scif_dev *scifdev, struct scifmsg *msg)
{
	struct scif_window *window = (struct scif_window *)msg->payload[1];

	FUNC0(window);
}