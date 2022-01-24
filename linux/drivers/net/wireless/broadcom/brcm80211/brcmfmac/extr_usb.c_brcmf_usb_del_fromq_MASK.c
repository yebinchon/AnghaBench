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
struct brcmf_usbreq {int /*<<< orphan*/  list; } ;
struct brcmf_usbdev_info {int /*<<< orphan*/  qlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct brcmf_usbdev_info *devinfo,
				struct brcmf_usbreq *req)
{
	unsigned long flags;

	FUNC1(&devinfo->qlock, flags);
	FUNC0(&req->list);
	FUNC2(&devinfo->qlock, flags);
}