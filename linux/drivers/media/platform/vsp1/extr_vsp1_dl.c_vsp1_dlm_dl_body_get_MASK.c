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
struct vsp1_dl_manager {int /*<<< orphan*/  pool; } ;
struct vsp1_dl_body {int dummy; } ;

/* Variables and functions */
 struct vsp1_dl_body* FUNC0 (int /*<<< orphan*/ ) ; 

struct vsp1_dl_body *FUNC1(struct vsp1_dl_manager *dlm)
{
	return FUNC0(dlm->pool);
}