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
typedef  int /*<<< orphan*/  u16 ;
struct wcn36xx_hal_msg_header {int /*<<< orphan*/  msg_type; } ;
struct wcn36xx {int /*<<< orphan*/  hal_rsp_compl; scalar_t__ hal_buf; int /*<<< orphan*/  smd_channel; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  HAL_MSG_TIMEOUT ; 
 int /*<<< orphan*/  WCN36XX_DBG_SMD ; 
 int /*<<< orphan*/  WCN36XX_DBG_SMD_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC8(struct wcn36xx *wcn, size_t len)
{
	int ret;
	unsigned long start;
	struct wcn36xx_hal_msg_header *hdr =
		(struct wcn36xx_hal_msg_header *)wcn->hal_buf;
	u16 req_type = hdr->msg_type;

	FUNC6(WCN36XX_DBG_SMD_DUMP, "HAL >>> ", wcn->hal_buf, len);

	FUNC0(&wcn->hal_rsp_compl);
	start = jiffies;
	ret = FUNC3(wcn->smd_channel, wcn->hal_buf, len);
	if (ret) {
		FUNC7("HAL TX failed for req %d\n", req_type);
		goto out;
	}
	if (FUNC4(&wcn->hal_rsp_compl,
		FUNC2(HAL_MSG_TIMEOUT)) <= 0) {
		FUNC7("Timeout! No SMD response to req %d in %dms\n",
			    req_type, HAL_MSG_TIMEOUT);
		ret = -ETIME;
		goto out;
	}
	FUNC5(WCN36XX_DBG_SMD,
		    "SMD command (req %d, rsp %d) completed in %dms\n",
		    req_type, hdr->msg_type,
		    FUNC1(jiffies - start));
out:
	return ret;
}