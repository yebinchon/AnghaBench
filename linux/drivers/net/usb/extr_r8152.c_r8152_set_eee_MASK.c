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
typedef  int /*<<< orphan*/  u16 ;
struct r8152 {int /*<<< orphan*/  eee_en; int /*<<< orphan*/  eee_adv; } ;
struct ethtool_eee {int /*<<< orphan*/  eee_enabled; int /*<<< orphan*/  advertised; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct r8152 *tp, struct ethtool_eee *eee)
{
	u16 val = FUNC0(eee->advertised);

	tp->eee_en = eee->eee_enabled;
	tp->eee_adv = val;

	FUNC1(tp, tp->eee_en);

	return 0;
}