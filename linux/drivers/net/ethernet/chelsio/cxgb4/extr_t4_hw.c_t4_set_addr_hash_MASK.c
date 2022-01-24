#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  hashvec; } ;
struct TYPE_4__ {TYPE_1__ hash; } ;
struct fw_vi_mac_cmd {TYPE_2__ u; void* freemacs_to_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FW_VI_MAC_CMD ; 
 int FUNC3 (int) ; 
 int FW_VI_MAC_CMD_HASHVECEN_F ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_vi_mac_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct adapter*,unsigned int,struct fw_vi_mac_cmd*,int,int /*<<< orphan*/ *,int) ; 

int FUNC8(struct adapter *adap, unsigned int mbox, unsigned int viid,
		     bool ucast, u64 vec, bool sleep_ok)
{
	struct fw_vi_mac_cmd c;

	FUNC6(&c, 0, sizeof(c));
	c.op_to_viid = FUNC4(FUNC1(FW_VI_MAC_CMD) |
				   FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
				   FUNC2(viid));
	c.freemacs_to_len16 = FUNC4(FW_VI_MAC_CMD_HASHVECEN_F |
					  FUNC3(ucast) |
					  FUNC0(1));
	c.u.hash.hashvec = FUNC5(vec);
	return FUNC7(adap, mbox, &c, sizeof(c), NULL, sleep_ok);
}