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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fm10k_mbx_info {int state; int /*<<< orphan*/  tail; void* remote; void* local; int /*<<< orphan*/  mbx_hdr; } ;
struct fm10k_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 void* FM10K_MBX_CRC_SEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int const FM10K_STATE_CONNECT ; 
#define  FM10K_STATE_DISCONNECT 129 
#define  FM10K_STATE_OPEN 128 
 int /*<<< orphan*/  HEAD ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_hw*,struct fm10k_mbx_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_mbx_info*) ; 

__attribute__((used)) static s32 FUNC4(struct fm10k_hw *hw,
				   struct fm10k_mbx_info *mbx)
{
	const u32 *hdr = &mbx->mbx_hdr;
	u16 head;

	/* we will need to pull all of the fields for verification */
	head = FUNC0(*hdr, HEAD);

	switch (mbx->state) {
	case FM10K_STATE_OPEN:
	case FM10K_STATE_DISCONNECT:
		/* flush any uncompleted work */
		FUNC3(mbx);

		/* reset CRC seeds */
		mbx->local = FM10K_MBX_CRC_SEED;
		mbx->remote = FM10K_MBX_CRC_SEED;

		/* reset tail index and size to prepare for reconnect */
		mbx->tail = head;

		/* if open then reset max_size and go back to connect */
		if (mbx->state == FM10K_STATE_OPEN) {
			mbx->state = FM10K_STATE_CONNECT;
			break;
		}

		/* send a connect message to get data flowing again */
		FUNC1(mbx);
		return 0;
	default:
		break;
	}

	return FUNC2(hw, mbx, mbx->tail);
}