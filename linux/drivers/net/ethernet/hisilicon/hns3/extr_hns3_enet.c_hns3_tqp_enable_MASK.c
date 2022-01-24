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
struct hnae3_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HNS3_RING_EN_B ; 
 int /*<<< orphan*/  HNS3_RING_EN_REG ; 
 int /*<<< orphan*/  FUNC1 (struct hnae3_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hnae3_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hnae3_queue *tqp)
{
	u32 rcb_reg;

	rcb_reg = FUNC1(tqp, HNS3_RING_EN_REG);
	rcb_reg |= FUNC0(HNS3_RING_EN_B);
	FUNC2(tqp, HNS3_RING_EN_REG, rcb_reg);
}