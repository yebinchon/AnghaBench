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
typedef  int /*<<< orphan*/  u32 ;
struct mvneta_bm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MVNETA_BM_POOL_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct mvneta_bm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvneta_bm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mvneta_bm *priv, int pool_id)
{
	u32 val;

	val = FUNC1(priv, FUNC0(pool_id));
	val &= ~MVNETA_BM_POOL_ENABLE_MASK;
	FUNC2(priv, FUNC0(pool_id), val);
}