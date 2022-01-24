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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct lbtf_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_beacon_set {TYPE_1__ hdr; int /*<<< orphan*/  beacon; void* len; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_BEACON_SET ; 
 int /*<<< orphan*/  LBTF_DEB_CMD ; 
 int MRVL_MAX_BCN_SIZE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lbtf_private*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC5(struct lbtf_private *priv, struct sk_buff *beacon)
{
	struct cmd_ds_802_11_beacon_set cmd;
	int size;

	FUNC2(LBTF_DEB_CMD);

	if (beacon->len > MRVL_MAX_BCN_SIZE) {
		FUNC3(LBTF_DEB_CMD, "ret %d", -1);
		return -1;
	}
	size =  sizeof(cmd) - sizeof(cmd.beacon) + beacon->len;
	cmd.hdr.size = FUNC0(size);
	cmd.len = FUNC0(beacon->len);
	FUNC4(cmd.beacon, (u8 *) beacon->data, beacon->len);

	FUNC1(priv, CMD_802_11_BEACON_SET, &cmd.hdr, size);

	FUNC3(LBTF_DEB_CMD, "ret %d", 0);
	return 0;
}