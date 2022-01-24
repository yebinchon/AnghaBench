#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct ttusb_dec {int /*<<< orphan*/  filter_stream_count; int /*<<< orphan*/  filter_info_list_lock; } ;
struct filter_info {int stream_id; int /*<<< orphan*/  filter_info_list; } ;
struct dvb_demux_feed {scalar_t__ priv; TYPE_1__* demux; } ;
typedef  int /*<<< orphan*/  b0 ;
struct TYPE_2__ {struct ttusb_dec* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filter_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct ttusb_dec*,int,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ttusb_dec*) ; 

__attribute__((used)) static int FUNC6(struct dvb_demux_feed *dvbdmxfeed)
{
	struct ttusb_dec *dec = dvbdmxfeed->demux->priv;
	u8 b0[] = { 0x00, 0x00 };
	struct filter_info *finfo = (struct filter_info *)dvbdmxfeed->priv;
	unsigned long flags;

	b0[1] = finfo->stream_id;
	FUNC2(&dec->filter_info_list_lock, flags);
	FUNC1(&finfo->filter_info_list);
	FUNC3(&dec->filter_info_list_lock, flags);
	FUNC0(finfo);
	FUNC4(dec, 0x62, sizeof(b0), b0, NULL, NULL);

	dec->filter_stream_count--;

	FUNC5(dec);

	return 0;
}