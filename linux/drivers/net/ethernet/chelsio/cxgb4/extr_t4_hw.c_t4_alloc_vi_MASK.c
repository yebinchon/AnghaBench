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
struct fw_vi_cmd {unsigned int nmac; int /*<<< orphan*/  type_viid; void* alloc_to_len16; int /*<<< orphan*/  rsssize_pkd; int /*<<< orphan*/  nmac0; int /*<<< orphan*/  nmac1; int /*<<< orphan*/  nmac2; int /*<<< orphan*/  nmac3; int /*<<< orphan*/  mac; int /*<<< orphan*/  portid_pkd; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int FW_CMD_EXEC_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int FUNC1 (struct fw_vi_cmd) ; 
 int /*<<< orphan*/  FW_VI_CMD ; 
 int FW_VI_CMD_ALLOC_F ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 void* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct fw_vi_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct adapter*,unsigned int,struct fw_vi_cmd*,int,struct fw_vi_cmd*) ; 

int FUNC15(struct adapter *adap, unsigned int mbox, unsigned int port,
		unsigned int pf, unsigned int vf, unsigned int nmac, u8 *mac,
		unsigned int *rss_size, u8 *vivld, u8 *vin)
{
	int ret;
	struct fw_vi_cmd c;

	FUNC13(&c, 0, sizeof(c));
	c.op_to_vfn = FUNC11(FUNC0(FW_VI_CMD) | FW_CMD_REQUEST_F |
				  FW_CMD_WRITE_F | FW_CMD_EXEC_F |
				  FUNC2(pf) | FUNC5(vf));
	c.alloc_to_len16 = FUNC11(FW_VI_CMD_ALLOC_F | FUNC1(c));
	c.portid_pkd = FUNC3(port);
	c.nmac = nmac - 1;

	ret = FUNC14(adap, mbox, &c, sizeof(c), &c);
	if (ret)
		return ret;

	if (mac) {
		FUNC12(mac, c.mac, sizeof(c.mac));
		switch (nmac) {
		case 5:
			FUNC12(mac + 24, c.nmac3, sizeof(c.nmac3));
			/* Fall through */
		case 4:
			FUNC12(mac + 18, c.nmac2, sizeof(c.nmac2));
			/* Fall through */
		case 3:
			FUNC12(mac + 12, c.nmac1, sizeof(c.nmac1));
			/* Fall through */
		case 2:
			FUNC12(mac + 6,  c.nmac0, sizeof(c.nmac0));
		}
	}
	if (rss_size)
		*rss_size = FUNC4(FUNC9(c.rsssize_pkd));

	if (vivld)
		*vivld = FUNC6(FUNC10(c.alloc_to_len16));

	if (vin)
		*vin = FUNC8(FUNC10(c.alloc_to_len16));

	return FUNC7(FUNC9(c.type_viid));
}