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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ expires; int /*<<< orphan*/ * function; } ;
struct tlan_priv {int timer_type; int /*<<< orphan*/  lock; TYPE_1__ timer; scalar_t__ timer_set_at; struct net_device* dev; } ;
struct timer_list {int dummy; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLAN_LED_LINK ; 
 int /*<<< orphan*/  TLAN_LED_REG ; 
#define  TLAN_TIMER_ACTIVITY 134 
 scalar_t__ TLAN_TIMER_ACT_DELAY ; 
#define  TLAN_TIMER_FINISH_RESET 133 
#define  TLAN_TIMER_PHY_FINISH_AN 132 
#define  TLAN_TIMER_PHY_PDOWN 131 
#define  TLAN_TIMER_PHY_PUP 130 
#define  TLAN_TIMER_PHY_RESET 129 
#define  TLAN_TIMER_PHY_START_LINK 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct tlan_priv* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 struct tlan_priv* priv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static void FUNC11(struct timer_list *t)
{
	struct tlan_priv	*priv = FUNC1(priv, t, timer);
	struct net_device	*dev = priv->dev;
	u32		elapsed;
	unsigned long	flags = 0;

	priv->timer.function = NULL;

	switch (priv->timer_type) {
	case TLAN_TIMER_PHY_PDOWN:
		FUNC7(dev);
		break;
	case TLAN_TIMER_PHY_PUP:
		FUNC8(dev);
		break;
	case TLAN_TIMER_PHY_RESET:
		FUNC9(dev);
		break;
	case TLAN_TIMER_PHY_START_LINK:
		FUNC10(dev);
		break;
	case TLAN_TIMER_PHY_FINISH_AN:
		FUNC6(dev);
		break;
	case TLAN_TIMER_FINISH_RESET:
		FUNC5(dev);
		break;
	case TLAN_TIMER_ACTIVITY:
		FUNC2(&priv->lock, flags);
		if (priv->timer.function == NULL) {
			elapsed = jiffies - priv->timer_set_at;
			if (elapsed >= TLAN_TIMER_ACT_DELAY) {
				FUNC4(dev->base_addr,
						TLAN_LED_REG, TLAN_LED_LINK);
			} else  {
				priv->timer.expires = priv->timer_set_at
					+ TLAN_TIMER_ACT_DELAY;
				FUNC3(&priv->lock, flags);
				FUNC0(&priv->timer);
				break;
			}
		}
		FUNC3(&priv->lock, flags);
		break;
	default:
		break;
	}

}