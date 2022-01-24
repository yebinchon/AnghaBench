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
struct ath_hw {int dummy; } ;
typedef  enum ath9k_ani_cmd { ____Placeholder_ath9k_ani_cmd } ath9k_ani_cmd ;
struct TYPE_2__ {int (* ani_control ) (struct ath_hw*,int,int) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hw*) ; 
 int FUNC1 (struct ath_hw*,int,int) ; 

__attribute__((used)) static inline bool FUNC2(struct ath_hw *ah,
					enum ath9k_ani_cmd cmd, int param)
{
	return FUNC0(ah)->ani_control(ah, cmd, param);
}