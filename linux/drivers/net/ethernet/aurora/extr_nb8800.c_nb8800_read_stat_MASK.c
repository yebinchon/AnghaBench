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
struct net_device {int dummy; } ;
struct nb8800_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NB8800_STAT_DATA ; 
 int /*<<< orphan*/  NB8800_STAT_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct nb8800_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nb8800_priv*,int /*<<< orphan*/ ,int) ; 
 struct nb8800_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static u32 FUNC3(struct net_device *dev, int index)
{
	struct nb8800_priv *priv = FUNC2(dev);

	FUNC1(priv, NB8800_STAT_INDEX, index);

	return FUNC0(priv, NB8800_STAT_DATA);
}