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
typedef  int /*<<< orphan*/  u8 ;
struct gspca_dev {int /*<<< orphan*/  last_packet_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCARD_PACKET ; 
 int DT_COLS ; 
 int /*<<< orphan*/  FIRST_PACKET ; 
 int /*<<< orphan*/  INTER_PACKET ; 
 int /*<<< orphan*/  LAST_PACKET ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev,
			u8 *data,  /* packet data */
			int len)   /* packet data length */
{
	/* drop incomplete frames */
	if (len != DT_COLS*512) {
		gspca_dev->last_packet_type = DISCARD_PACKET;
		/* gspca.c: discard invalidates the whole frame. */
		return;
	}

	/* forward complete frames */
	FUNC0(gspca_dev, FIRST_PACKET, NULL, 0);
	FUNC0(gspca_dev, INTER_PACKET,
		data + 16*DT_COLS,
		len  - 32*DT_COLS); /* skip first & last 16 lines */
	FUNC0(gspca_dev, LAST_PACKET,  NULL, 0);

	return;
}