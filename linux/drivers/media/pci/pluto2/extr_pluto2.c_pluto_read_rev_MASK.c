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
typedef  int u32 ;
struct pluto {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MISC_DVR ; 
 int /*<<< orphan*/  REG_MISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (struct pluto*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pluto *pluto)
{
	u32 val = FUNC1(pluto, REG_MISC) & MISC_DVR;
	FUNC0(&pluto->pdev->dev, "board revision %d.%d\n",
			(val >> 12) & 0x0f, (val >> 4) & 0xff);
}