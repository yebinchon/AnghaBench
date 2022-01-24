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
struct st_data_s {int rx_count; scalar_t__ rx_chnl; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  rx_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_W4_DATA ; 
 int /*<<< orphan*/  ST_W4_PACKET_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,struct st_data_s*) ; 

__attribute__((used)) static inline int FUNC5(struct st_data_s *st_gdata,
	unsigned char chnl_id, int len)
{
	int room = FUNC3(st_gdata->rx_skb);

	FUNC1("len %d room %d", len, room);

	if (!len) {
		/* Received packet has only packet header and
		 * has zero length payload. So, ask ST CORE to
		 * forward the packet to protocol driver (BT/FM/GPS)
		 */
		FUNC4(chnl_id, st_gdata);

	} else if (len > room) {
		/* Received packet's payload length is larger.
		 * We can't accommodate it in created skb.
		 */
		FUNC2("Data length is too large len %d room %d", len,
			   room);
		FUNC0(st_gdata->rx_skb);
	} else {
		/* Packet header has non-zero payload length and
		 * we have enough space in created skb. Lets read
		 * payload data */
		st_gdata->rx_state = ST_W4_DATA;
		st_gdata->rx_count = len;
		return len;
	}

	/* Change ST state to continue to process next
	 * packet */
	st_gdata->rx_state = ST_W4_PACKET_TYPE;
	st_gdata->rx_skb = NULL;
	st_gdata->rx_count = 0;
	st_gdata->rx_chnl = 0;

	return 0;
}