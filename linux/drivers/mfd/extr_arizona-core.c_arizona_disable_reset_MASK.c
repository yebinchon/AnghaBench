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
struct TYPE_2__ {scalar_t__ reset; } ;
struct arizona {int type; TYPE_1__ pdata; } ;

/* Variables and functions */
#define  WM5110 129 
#define  WM8280 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct arizona *arizona)
{
	if (arizona->pdata.reset) {
		switch (arizona->type) {
		case WM5110:
		case WM8280:
			/* Meet requirements for minimum reset duration */
			FUNC1(5000, 10000);
			break;
		default:
			break;
		}

		FUNC0(arizona->pdata.reset, 1);
		FUNC1(1000, 5000);
	}
}