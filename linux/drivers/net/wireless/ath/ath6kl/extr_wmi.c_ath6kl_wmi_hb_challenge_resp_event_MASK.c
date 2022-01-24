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
struct wmix_hb_challenge_resp_cmd {int /*<<< orphan*/  cookie; } ;
struct wmi {int /*<<< orphan*/  parent_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wmi *wmi, u8 *datap,
					       int len)
{
	struct wmix_hb_challenge_resp_cmd *cmd;

	if (len < sizeof(struct wmix_hb_challenge_resp_cmd))
		return;

	cmd = (struct wmix_hb_challenge_resp_cmd *) datap;
	FUNC0(wmi->parent_dev,
				 FUNC1(cmd->cookie));
}