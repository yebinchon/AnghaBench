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
typedef  scalar_t__ u64 ;
struct firedtv {int /*<<< orphan*/  device; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ CMP_OUTPUT_PLUG_CONTROL_REG_0 ; 
 int EBUSY ; 
 int FUNC0 (struct firedtv*,scalar_t__,scalar_t__*) ; 
 int FUNC1 (struct firedtv*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__) ; 

int FUNC11(struct firedtv *fdtv, int plug, int channel)
{
	__be32 old_opcr, opcr[2];
	u64 opcr_address = CMP_OUTPUT_PLUG_CONTROL_REG_0 + (plug << 2);
	int attempts = 0;
	int ret;

	ret = FUNC1(fdtv, opcr_address, opcr);
	if (ret < 0)
		return ret;

repeat:
	if (!FUNC5(*opcr)) {
		FUNC2(fdtv->device, "CMP: output offline\n");
		return -EBUSY;
	}

	old_opcr = *opcr;

	if (FUNC6(*opcr)) {
		if (FUNC4(*opcr) != channel) {
			FUNC2(fdtv->device, "CMP: cannot change channel\n");
			return -EBUSY;
		}
		FUNC3(fdtv->device, "CMP: overlaying connection\n");

		/* We don't allocate isochronous resources. */
	} else {
		FUNC7(opcr, channel);
		FUNC8(opcr, 2); /* S400 */

		/* FIXME: this is for the worst case - optimize */
		FUNC9(opcr, 0);

		/* FIXME: allocate isochronous channel and bandwidth at IRM */
	}

	FUNC10(opcr, FUNC6(*opcr) + 1);

	opcr[1] = *opcr;
	opcr[0] = old_opcr;

	ret = FUNC0(fdtv, opcr_address, opcr);
	if (ret < 0)
		return ret;

	if (old_opcr != *opcr) {
		/*
		 * FIXME: if old_opcr.P2P_Connections > 0,
		 * deallocate isochronous channel and bandwidth at IRM
		 */

		if (++attempts < 6) /* arbitrary limit */
			goto repeat;
		return -EBUSY;
	}

	return 0;
}