#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ u16 ;
struct usbtv {TYPE_3__* snd_bulk_urb; } ;
struct TYPE_7__ {int /*<<< orphan*/  transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const**) ; 
#define  USBTV_BASE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbtv*,TYPE_1__ const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usbtv *chip)
{
	static const u16 setup[][2] = {
	/* The original windows driver sometimes sends also:
	 *   { USBTV_BASE + 0x00a2, 0x0013 }
	 * but it seems useless and its real effects are untested at
	 * the moment.
	 */
		{ USBTV_BASE + 0x027d, 0x0000 },
		{ USBTV_BASE + 0x0280, 0x0010 },
		{ USBTV_BASE + 0x0282, 0x0010 },
	};

	if (chip->snd_bulk_urb) {
		FUNC3(chip->snd_bulk_urb);
		FUNC1(chip->snd_bulk_urb->transfer_buffer);
		FUNC2(chip->snd_bulk_urb);
		chip->snd_bulk_urb = NULL;
	}

	FUNC4(chip, setup, FUNC0(setup));

	return 0;
}