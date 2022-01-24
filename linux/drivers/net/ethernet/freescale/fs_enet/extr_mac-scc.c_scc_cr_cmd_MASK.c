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
typedef  int /*<<< orphan*/  u32 ;
struct fs_platform_info {int /*<<< orphan*/  cp_command; } ;
struct fs_enet_private {struct fs_platform_info* fpi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct fs_enet_private *fep, u32 op)
{
	const struct fs_platform_info *fpi = fep->fpi;

	return FUNC0(fpi->cp_command, op);
}