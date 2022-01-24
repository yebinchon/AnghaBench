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
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_buffer_length; } ;
struct gspca_dev {int /*<<< orphan*/  dev; struct urb** urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 unsigned int MAX_NURBS ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev)
{
	struct urb *urb;
	unsigned int i;

	FUNC0(gspca_dev, D_STREAM, "kill transfer\n");

	/* Killing all URBs guarantee that no URB completion
	 * handler is running. Therefore, there shouldn't
	 * be anyone trying to access gspca_dev->urb[i]
	 */
	for (i = 0; i < MAX_NURBS; i++)
		FUNC3(gspca_dev->urb[i]);

	FUNC0(gspca_dev, D_STREAM, "releasing urbs\n");
	for (i = 0; i < MAX_NURBS; i++) {
		urb = gspca_dev->urb[i];
		if (!urb)
			continue;
		gspca_dev->urb[i] = NULL;
		FUNC1(gspca_dev->dev,
				  urb->transfer_buffer_length,
				  urb->transfer_buffer,
				  urb->transfer_dma);
		FUNC2(urb);
	}
}