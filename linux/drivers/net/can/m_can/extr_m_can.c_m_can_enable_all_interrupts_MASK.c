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
struct m_can_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ILE_EINT0 ; 
 int /*<<< orphan*/  M_CAN_ILE ; 
 int /*<<< orphan*/  FUNC0 (struct m_can_classdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct m_can_classdev *cdev)
{
	/* Only interrupt line 0 is used in this driver */
	FUNC0(cdev, M_CAN_ILE, ILE_EINT0);
}