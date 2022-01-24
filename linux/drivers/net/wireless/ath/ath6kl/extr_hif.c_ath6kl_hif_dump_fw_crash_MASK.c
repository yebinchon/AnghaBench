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
typedef  int u32 ;
struct ath6kl {TYPE_1__* wiphy; int /*<<< orphan*/  target_type; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  hw_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int REGISTER_DUMP_COUNT ; 
 int REGISTER_DUMP_LEN_MAX ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct ath6kl*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct ath6kl*,int,int*) ; 
 int FUNC6 (struct ath6kl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  hi_failure_state ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ath6kl *ar)
{
	__le32 regdump_val[REGISTER_DUMP_LEN_MAX];
	u32 i, address, regdump_addr = 0;
	int ret;

	/* the reg dump pointer is copied to the host interest area */
	address = FUNC6(ar, FUNC1(hi_failure_state));
	address = FUNC2(ar->target_type, address);

	/* read RAM location through diagnostic window */
	ret = FUNC5(ar, address, &regdump_addr);

	if (ret || !regdump_addr) {
		FUNC8("failed to get ptr to register dump area: %d\n",
			    ret);
		return;
	}

	FUNC3(ATH6KL_DBG_IRQ, "register dump data address 0x%x\n",
		   regdump_addr);
	regdump_addr = FUNC2(ar->target_type, regdump_addr);

	/* fetch register dump data */
	ret = FUNC4(ar, regdump_addr, (u8 *)&regdump_val[0],
				  REGISTER_DUMP_COUNT * (sizeof(u32)));
	if (ret) {
		FUNC8("failed to get register dump: %d\n", ret);
		return;
	}

	FUNC7("crash dump:\n");
	FUNC7("hw 0x%x fw %s\n", ar->wiphy->hw_version,
		    ar->wiphy->fw_version);

	FUNC0(REGISTER_DUMP_COUNT % 4);

	for (i = 0; i < REGISTER_DUMP_COUNT; i += 4) {
		FUNC7("%d: 0x%8.8x 0x%8.8x 0x%8.8x 0x%8.8x\n",
			    i,
			    FUNC9(regdump_val[i]),
			    FUNC9(regdump_val[i + 1]),
			    FUNC9(regdump_val[i + 2]),
			    FUNC9(regdump_val[i + 3]));
	}
}