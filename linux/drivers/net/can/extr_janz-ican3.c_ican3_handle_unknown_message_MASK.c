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
struct ican3_msg {int /*<<< orphan*/  len; int /*<<< orphan*/  spec; } ;
struct ican3_dev {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ican3_dev *mod,
					struct ican3_msg *msg)
{
	FUNC1(mod->ndev, "received unknown message: spec 0x%.2x length %d\n",
			   msg->spec, FUNC0(msg->len));
}