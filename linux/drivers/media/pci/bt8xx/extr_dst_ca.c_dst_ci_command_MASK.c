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
struct dst_state {int /*<<< orphan*/  dst_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_CA_ERROR ; 
 int /*<<< orphan*/  DST_CA_INFO ; 
 int /*<<< orphan*/  DST_CA_NOTICE ; 
 int EIO ; 
 int GET_ACK ; 
 int /*<<< orphan*/  LONG_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_state*) ; 
 scalar_t__ FUNC3 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct dst_state*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  verbose ; 
 scalar_t__ FUNC9 (struct dst_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct dst_state* state, u8 * data, u8 *ca_string, u8 len, int read)
{
	u8 reply;

	FUNC6(&state->dst_mutex);
	FUNC1(state);
	FUNC5(65);

	if (FUNC9(state, data, len)) {
		FUNC0(verbose, DST_CA_INFO, 1, " Write not successful, trying to recover");
		FUNC2(state);
		goto error;
	}
	if ((FUNC3(state)) < 0) {
		FUNC0(verbose, DST_CA_ERROR, 1, " DST PIO disable failed.");
		goto error;
	}
	if (FUNC8(state, &reply, GET_ACK) < 0) {
		FUNC0(verbose, DST_CA_INFO, 1, " Read not successful, trying to recover");
		FUNC2(state);
		goto error;
	}
	if (read) {
		if (! FUNC4(state, LONG_DELAY)) {
			FUNC0(verbose, DST_CA_NOTICE, 1, " 8820 not ready");
			goto error;
		}
		if (FUNC8(state, ca_string, 128) < 0) {	/*	Try to make this dynamic	*/
			FUNC0(verbose, DST_CA_INFO, 1, " Read not successful, trying to recover");
			FUNC2(state);
			goto error;
		}
	}
	FUNC7(&state->dst_mutex);
	return 0;

error:
	FUNC7(&state->dst_mutex);
	return -EIO;
}