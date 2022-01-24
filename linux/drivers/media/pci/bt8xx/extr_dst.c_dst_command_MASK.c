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
typedef  scalar_t__ u8 ;
struct dst_state {int type_flags; scalar_t__* rxbuffer; int /*<<< orphan*/  dst_mutex; } ;

/* Variables and functions */
 scalar_t__ ACK ; 
 int DST_TYPE_HAS_FW_1 ; 
 int EIO ; 
 int /*<<< orphan*/  FIXED_COMM ; 
 int /*<<< orphan*/  GET_ACK ; 
 int /*<<< orphan*/  NO_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__*,int) ; 
 scalar_t__ FUNC2 (struct dst_state*) ; 
 scalar_t__ FUNC3 (struct dst_state*) ; 
 scalar_t__ FUNC4 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (struct dst_state*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (struct dst_state*,scalar_t__*,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct dst_state *state, u8 *data, u8 len)
{
	u8 reply;

	FUNC7(&state->dst_mutex);
	if ((FUNC2(state)) < 0) {
		FUNC0(1, "DST Communication Initialization Failed.\n");
		goto error;
	}
	if (FUNC12(state, data, len)) {
		FUNC0(2, "Trying to recover..\n");
		if ((FUNC3(state)) < 0) {
			FUNC9("Recovery Failed.\n");
			goto error;
		}
		goto error;
	}
	if ((FUNC4(state)) < 0) {
		FUNC9("PIO Disable Failed.\n");
		goto error;
	}
	if (state->type_flags & DST_TYPE_HAS_FW_1)
		FUNC6(3);
	if (FUNC10(state, &reply, GET_ACK)) {
		FUNC0(3, "Trying to recover..\n");
		if ((FUNC3(state)) < 0) {
			FUNC0(2, "Recovery Failed.\n");
			goto error;
		}
		goto error;
	}
	if (reply != ACK) {
		FUNC0(2, "write not acknowledged 0x%02x\n", reply);
		goto error;
	}
	if (len >= 2 && data[0] == 0 && (data[1] == 1 || data[1] == 3))
		goto error;
	if (state->type_flags & DST_TYPE_HAS_FW_1)
		FUNC6(3);
	else
		FUNC11(2000);
	if (!FUNC5(state, NO_DELAY))
		goto error;
	if (FUNC10(state, state->rxbuffer, FIXED_COMM)) {
		FUNC0(3, "Trying to recover..\n");
		if ((FUNC3(state)) < 0) {
			FUNC0(2, "Recovery failed.\n");
			goto error;
		}
		goto error;
	}
	if (state->rxbuffer[7] != FUNC1(state->rxbuffer, 7)) {
		FUNC0(2, "checksum failure\n");
		goto error;
	}
	FUNC8(&state->dst_mutex);
	return 0;

error:
	FUNC8(&state->dst_mutex);
	return -EIO;

}