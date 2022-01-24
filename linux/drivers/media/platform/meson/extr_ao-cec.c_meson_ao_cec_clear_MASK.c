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
struct meson_ao_cec_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_RX_CLEAR_BUF ; 
 int /*<<< orphan*/  CEC_RX_MSG_CMD ; 
 int /*<<< orphan*/  CEC_TX_CLEAR_BUF ; 
 int /*<<< orphan*/  CEC_TX_MSG_CMD ; 
 int RX_DISABLE ; 
 int RX_NO_OP ; 
 int TX_ABORT ; 
 int TX_NO_OP ; 
 int /*<<< orphan*/  FUNC0 (struct meson_ao_cec_device*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2(struct meson_ao_cec_device *ao_cec)
{
	int ret = 0;

	FUNC0(ao_cec, CEC_RX_MSG_CMD, RX_DISABLE, &ret);
	FUNC0(ao_cec, CEC_TX_MSG_CMD, TX_ABORT, &ret);
	FUNC0(ao_cec, CEC_RX_CLEAR_BUF, 1, &ret);
	FUNC0(ao_cec, CEC_TX_CLEAR_BUF, 1, &ret);
	if (ret)
		return ret;

	FUNC1(100);

	FUNC0(ao_cec, CEC_RX_CLEAR_BUF, 0, &ret);
	FUNC0(ao_cec, CEC_TX_CLEAR_BUF, 0, &ret);
	if (ret)
		return ret;

	FUNC1(100);

	FUNC0(ao_cec, CEC_RX_MSG_CMD, RX_NO_OP, &ret);
	FUNC0(ao_cec, CEC_TX_MSG_CMD, TX_NO_OP, &ret);

	return ret;
}