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
typedef  int u32 ;
struct ipaq_micro {int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ UTDR ; 
 scalar_t__ UTSR1 ; 
 int UTSR1_FRE ; 
 int UTSR1_PRE ; 
 int UTSR1_RNE ; 
 int UTSR1_ROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipaq_micro*,int) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ipaq_micro *micro)
{
	u32 status, ch;

	while ((status = FUNC2(micro->base + UTSR1)) & UTSR1_RNE) {
		ch = FUNC2(micro->base + UTDR);
		if (status & UTSR1_PRE)
			FUNC0(micro->dev, "rx: parity error\n");
		else if (status & UTSR1_FRE)
			FUNC0(micro->dev, "rx: framing error\n");
		else if (status & UTSR1_ROR)
			FUNC0(micro->dev, "rx: overrun error\n");
		FUNC1(micro, ch);
	}
}