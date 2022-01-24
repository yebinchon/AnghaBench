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
struct jme_adapter {int reg_gpreg1; } ;

/* Variables and functions */
 int GPREG1_HALFMODEPATCH ; 
 int GPREG1_RSSPATCH ; 
 int /*<<< orphan*/  JME_GPREG1 ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC1(struct jme_adapter *jme)
{
	jme->reg_gpreg1 &= ~(GPREG1_HALFMODEPATCH |
			     GPREG1_RSSPATCH);
	FUNC0(jme, JME_GPREG1, jme->reg_gpreg1);
}