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
struct qcom_ethqos {unsigned int speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qcom_ethqos*) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_ethqos*,unsigned int) ; 

__attribute__((used)) static void FUNC2(void *priv, unsigned int speed)
{
	struct qcom_ethqos *ethqos = priv;

	ethqos->speed = speed;
	FUNC1(ethqos, speed);
	FUNC0(ethqos);
}