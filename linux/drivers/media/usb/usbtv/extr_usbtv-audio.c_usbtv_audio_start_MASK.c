#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int member_0; int member_1; } ;
typedef  TYPE_1__ u16 ;
struct usbtv {TYPE_3__* snd_bulk_urb; int /*<<< orphan*/  udev; } ;
struct TYPE_9__ {int /*<<< orphan*/ * transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const**) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USBTV_AUDIO_ENDP ; 
 int /*<<< orphan*/  USBTV_AUDIO_URBSIZE ; 
#define  USBTV_BASE 128 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usbtv*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usbtv_audio_urb_received ; 
 int /*<<< orphan*/  FUNC8 (struct usbtv*,TYPE_1__ const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct usbtv *chip)
{
	unsigned int pipe;
	static const u16 setup[][2] = {
		/* These seem to enable the device. */
		{ USBTV_BASE + 0x0008, 0x0001 },
		{ USBTV_BASE + 0x01d0, 0x00ff },
		{ USBTV_BASE + 0x01d9, 0x0002 },

		{ USBTV_BASE + 0x01da, 0x0013 },
		{ USBTV_BASE + 0x01db, 0x0012 },
		{ USBTV_BASE + 0x01e9, 0x0002 },
		{ USBTV_BASE + 0x01ec, 0x006c },
		{ USBTV_BASE + 0x0294, 0x0020 },
		{ USBTV_BASE + 0x0255, 0x00cf },
		{ USBTV_BASE + 0x0256, 0x0020 },
		{ USBTV_BASE + 0x01eb, 0x0030 },
		{ USBTV_BASE + 0x027d, 0x00a6 },
		{ USBTV_BASE + 0x0280, 0x0011 },
		{ USBTV_BASE + 0x0281, 0x0040 },
		{ USBTV_BASE + 0x0282, 0x0011 },
		{ USBTV_BASE + 0x0283, 0x0040 },
		{ 0xf891, 0x0010 },

		/* this sets the input from composite */
		{ USBTV_BASE + 0x0284, 0x00aa },
	};

	chip->snd_bulk_urb = FUNC2(0, GFP_KERNEL);
	if (chip->snd_bulk_urb == NULL)
		goto err_alloc_urb;

	pipe = FUNC6(chip->udev, USBTV_AUDIO_ENDP);

	chip->snd_bulk_urb->transfer_buffer = FUNC1(
		USBTV_AUDIO_URBSIZE, GFP_KERNEL);
	if (chip->snd_bulk_urb->transfer_buffer == NULL)
		goto err_transfer_buffer;

	FUNC4(chip->snd_bulk_urb, chip->udev, pipe,
		chip->snd_bulk_urb->transfer_buffer, USBTV_AUDIO_URBSIZE,
		usbtv_audio_urb_received, chip);

	/* starting the stream */
	FUNC8(chip, setup, FUNC0(setup));

	FUNC3(chip->udev, pipe);
	FUNC7(chip->snd_bulk_urb, GFP_ATOMIC);

	return 0;

err_transfer_buffer:
	FUNC5(chip->snd_bulk_urb);
	chip->snd_bulk_urb = NULL;

err_alloc_urb:
	return -ENOMEM;
}