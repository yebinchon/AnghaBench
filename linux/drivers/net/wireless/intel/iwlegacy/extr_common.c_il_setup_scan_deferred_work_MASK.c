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
struct il_priv {int /*<<< orphan*/  scan_check; int /*<<< orphan*/  abort_scan; int /*<<< orphan*/  scan_completed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  il_bg_abort_scan ; 
 int /*<<< orphan*/  il_bg_scan_check ; 
 int /*<<< orphan*/  il_bg_scan_completed ; 

void
FUNC2(struct il_priv *il)
{
	FUNC1(&il->scan_completed, il_bg_scan_completed);
	FUNC1(&il->abort_scan, il_bg_abort_scan);
	FUNC0(&il->scan_check, il_bg_scan_check);
}