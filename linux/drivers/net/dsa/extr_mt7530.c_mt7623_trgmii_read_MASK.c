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
typedef  int u32 ;
struct mt7530_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  ethernet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static u32
FUNC3(struct mt7530_priv *priv, u32 reg)
{
	int ret;
	u32 val;

	ret = FUNC2(priv->ethernet, FUNC0(reg), &val);
	if (ret < 0) {
		FUNC1(priv->dev,
			"failed to priv read register\n");
		return ret;
	}

	return val;
}