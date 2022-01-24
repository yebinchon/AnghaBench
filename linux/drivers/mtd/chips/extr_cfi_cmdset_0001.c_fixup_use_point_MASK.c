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
struct mtd_info {int /*<<< orphan*/  _unpoint; scalar_t__ _point; struct map_info* priv; } ;
struct map_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ cfi_intelext_point ; 
 int /*<<< orphan*/  cfi_intelext_unpoint ; 
 scalar_t__ FUNC0 (struct map_info*) ; 

__attribute__((used)) static void FUNC1(struct mtd_info *mtd)
{
	struct map_info *map = mtd->priv;
	if (!mtd->_point && FUNC0(map)) {
		mtd->_point   = cfi_intelext_point;
		mtd->_unpoint = cfi_intelext_unpoint;
	}
}