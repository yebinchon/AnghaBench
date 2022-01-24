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
typedef  scalar_t__ u32 ;
struct jme_adapter {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct jme_adapter *jme, u32 reg, u32 val)
{
	/*
	 * Read after write should cause flush
	 */
	FUNC1(jme, "REG WRITE FLUSH", val, reg);
	FUNC2(val, jme->regs + reg);
	FUNC0(jme->regs + reg);
	FUNC1(jme, "VAL AFTER WRITE", FUNC0(jme->regs + reg), reg);
}