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
struct airspy {int buf_num; int /*<<< orphan*/  flags; int /*<<< orphan*/ * dma_addr; int /*<<< orphan*/ * buf_list; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  udev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_STATE_URB_BUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct airspy *s)
{
	if (FUNC2(USB_STATE_URB_BUF, &s->flags)) {
		while (s->buf_num) {
			s->buf_num--;
			FUNC1(s->dev, "free buf=%d\n", s->buf_num);
			FUNC3(s->udev, s->buf_size,
					  s->buf_list[s->buf_num],
					  s->dma_addr[s->buf_num]);
		}
	}
	FUNC0(USB_STATE_URB_BUF, &s->flags);

	return 0;
}