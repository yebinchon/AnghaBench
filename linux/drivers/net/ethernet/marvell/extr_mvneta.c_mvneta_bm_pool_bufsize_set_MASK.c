#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct mvneta_port {TYPE_2__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int MVNETA_PORT_POOL_BUFFER_SZ_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC4 (struct mvneta_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC6(struct mvneta_port *pp,
					      int buf_size,
					      u8 pool_id)
{
	u32 val;

	if (!FUNC1(buf_size, 8)) {
		FUNC3(pp->dev->dev.parent,
			 "illegal buf_size value %d, round to %d\n",
			 buf_size, FUNC0(buf_size, 8));
		buf_size = FUNC0(buf_size, 8);
	}

	val = FUNC4(pp, FUNC2(pool_id));
	val |= buf_size & MVNETA_PORT_POOL_BUFFER_SZ_MASK;
	FUNC5(pp, FUNC2(pool_id), val);
}