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
struct z8530_channel {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  R1 ; 
 scalar_t__ Z85230 ; 
 int /*<<< orphan*/  FUNC0 (struct z8530_channel*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct z8530_channel *c)
{
	FUNC0(c, R1);
	FUNC0(c, R1);
	FUNC0(c, R1);
	FUNC0(c, R1);
	if(c->dev->type==Z85230)
	{
		FUNC0(c, R1);
		FUNC0(c, R1);
		FUNC0(c, R1);
		FUNC0(c, R1);
	}
}