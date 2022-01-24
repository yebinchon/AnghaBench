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
struct gfar_priv_grp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ER ; 
 int /*<<< orphan*/  RX ; 
 int /*<<< orphan*/  TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct gfar_priv_grp*) ; 
 TYPE_1__* FUNC1 (struct gfar_priv_grp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gfar_priv_grp *grp)
{
	FUNC0(FUNC1(grp, TX)->irq, grp);
	FUNC0(FUNC1(grp, RX)->irq, grp);
	FUNC0(FUNC1(grp, ER)->irq, grp);
}