#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mem_block_size; } ;
struct ar9170 {int /*<<< orphan*/  mem_free_blocks; TYPE_1__ fw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_MAX_FRAME_LEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct ar9170 *ar)
{
	return (FUNC0(IEEE80211_MAX_FRAME_LEN, ar->fw.mem_block_size) >
		FUNC1(&ar->mem_free_blocks));
}