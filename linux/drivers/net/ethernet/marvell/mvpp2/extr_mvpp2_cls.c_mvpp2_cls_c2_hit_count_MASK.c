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
struct mvpp2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP22_CLS_C2_HIT_CTR ; 
 int /*<<< orphan*/  MVPP22_CLS_C2_TCAM_IDX ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,int /*<<< orphan*/ ,int) ; 

u32 FUNC2(struct mvpp2 *priv, int c2_index)
{
	FUNC1(priv, MVPP22_CLS_C2_TCAM_IDX, c2_index);

	return FUNC0(priv, MVPP22_CLS_C2_HIT_CTR);
}