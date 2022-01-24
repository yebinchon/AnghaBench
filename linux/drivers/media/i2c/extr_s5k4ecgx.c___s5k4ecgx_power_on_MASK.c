#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s5k4ecgx {TYPE_1__* gpio; int /*<<< orphan*/  supplies; } ;
struct TYPE_2__ {int /*<<< orphan*/  level; } ;

/* Variables and functions */
 size_t RST ; 
 int /*<<< orphan*/  S5K4ECGX_NUM_SUPPLIES ; 
 size_t STBY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct s5k4ecgx*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct s5k4ecgx *priv)
{
	int ret;

	ret = FUNC0(S5K4ECGX_NUM_SUPPLIES, priv->supplies);
	if (ret)
		return ret;
	FUNC2(30, 50);

	/* The polarity of STBY is controlled by TSP */
	if (FUNC1(priv, STBY, priv->gpio[STBY].level))
		FUNC2(30, 50);

	if (FUNC1(priv, RST, priv->gpio[RST].level))
		FUNC2(30, 50);

	return 0;
}