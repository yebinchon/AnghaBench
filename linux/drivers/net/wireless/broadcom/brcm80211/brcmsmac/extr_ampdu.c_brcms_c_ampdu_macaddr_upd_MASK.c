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
typedef  int /*<<< orphan*/  template ;
struct brcms_c_info {int /*<<< orphan*/  hw; TYPE_1__* pub; } ;
struct TYPE_2__ {int /*<<< orphan*/  cur_etheraddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ T_BA_TPL_BASE ; 
 int T_RAM_ACCESS_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct brcms_c_info *wlc)
{
	char template[T_RAM_ACCESS_SZ * 2];

	/* driver needs to write the ta in the template; ta is at offset 16 */
	FUNC2(template, 0, sizeof(template));
	FUNC1(template, wlc->pub->cur_etheraddr, ETH_ALEN);
	FUNC0(wlc->hw, (T_BA_TPL_BASE + 16),
				  (T_RAM_ACCESS_SZ * 2),
				  template);
}