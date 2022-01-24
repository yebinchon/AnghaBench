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
struct stimx274 {int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX274_RESET_DELAY1 ; 
 int /*<<< orphan*/  IMX274_RESET_DELAY2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct stimx274 *priv, int rst)
{
	FUNC0(priv->reset_gpio, 0);
	FUNC1(IMX274_RESET_DELAY1, IMX274_RESET_DELAY2);
	FUNC0(priv->reset_gpio, !!rst);
	FUNC1(IMX274_RESET_DELAY1, IMX274_RESET_DELAY2);
}