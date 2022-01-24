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
struct ov772x_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  COM2 ; 
 int /*<<< orphan*/  COM7 ; 
 int /*<<< orphan*/  SCCB_RESET ; 
 int /*<<< orphan*/  SOFT_SLEEP_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct ov772x_priv *priv)
{
	int ret;

	ret = FUNC1(priv->regmap, COM7, SCCB_RESET);
	if (ret < 0)
		return ret;

	FUNC2(1000, 5000);

	return FUNC0(priv->regmap, COM2, SOFT_SLEEP_MODE,
				  SOFT_SLEEP_MODE);
}