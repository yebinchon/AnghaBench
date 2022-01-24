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
struct tcan4x5x_priv {scalar_t__ device_wake_gpio; scalar_t__ device_state_gpio; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct tcan4x5x_priv *priv)
{
	int wake_state = 0;

	if (priv->device_state_gpio)
		wake_state = FUNC0(priv->device_state_gpio);

	if (priv->device_wake_gpio && wake_state) {
		FUNC1(priv->device_wake_gpio, 0);
		FUNC2(5, 50);
		FUNC1(priv->device_wake_gpio, 1);
	}
}