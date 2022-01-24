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
struct mvpp2_bm_pool {int buf_size; int /*<<< orphan*/  id; } ;
struct mvpp2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int MVPP2_POOL_BUF_SIZE_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mvpp2 *priv,
				      struct mvpp2_bm_pool *bm_pool,
				      int buf_size)
{
	u32 val;

	bm_pool->buf_size = buf_size;

	val = FUNC0(buf_size, 1 << MVPP2_POOL_BUF_SIZE_OFFSET);
	FUNC2(priv, FUNC1(bm_pool->id), val);
}