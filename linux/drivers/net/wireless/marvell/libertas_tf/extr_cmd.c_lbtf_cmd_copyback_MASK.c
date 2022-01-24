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
typedef  int /*<<< orphan*/  uint16_t ;
struct lbtf_private {int dummy; } ;
struct cmd_header {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_header*,struct cmd_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct lbtf_private *priv, unsigned long extra,
		     struct cmd_header *resp)
{
	struct cmd_header *buf = (void *)extra;
	uint16_t copy_len;

	copy_len = FUNC2(FUNC0(buf->size), FUNC0(resp->size));
	FUNC1(buf, resp, copy_len);
	return 0;
}