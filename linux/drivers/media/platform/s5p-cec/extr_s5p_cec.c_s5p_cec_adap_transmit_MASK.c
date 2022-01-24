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
typedef  int /*<<< orphan*/  u32 ;
struct s5p_cec_dev {int dummy; } ;
struct cec_msg {int /*<<< orphan*/  len; int /*<<< orphan*/  msg; } ;
struct cec_adapter {int dummy; } ;

/* Variables and functions */
 struct s5p_cec_dev* FUNC0 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_cec_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cec_adapter *adap, u8 attempts,
				 u32 signal_free_time, struct cec_msg *msg)
{
	struct s5p_cec_dev *cec = FUNC0(adap);

	/*
	 * Unclear if 0 retries are allowed by the hardware, so have 1 as
	 * the minimum.
	 */
	FUNC2(cec, msg->msg, msg->len, FUNC1(1, attempts - 1));
	return 0;
}