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
struct net_device {scalar_t__ irq; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  ipg_timer; } ;
struct amd8111e_priv {int options; int opened; int /*<<< orphan*/  lock; TYPE_1__ ipg_data; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int OPTION_DYN_IPG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct amd8111e_priv*) ; 
 int /*<<< orphan*/  amd8111e_interrupt ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 struct amd8111e_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct amd8111e_priv *lp = FUNC7(dev);

	if(dev->irq ==0 || FUNC9(dev->irq, amd8111e_interrupt, IRQF_SHARED,
					 dev->name, dev))
		return -EAGAIN;

	FUNC5(&lp->napi);

	FUNC10(&lp->lock);

	FUNC1(lp);

	if(FUNC2(dev)){
		FUNC11(&lp->lock);
		FUNC4(&lp->napi);
		if (dev->irq)
			FUNC3(dev->irq, dev);
		return -ENOMEM;
	}
	/* Start ipg timer */
	if(lp->options & OPTION_DYN_IPG_ENABLE){
		FUNC0(&lp->ipg_data.ipg_timer);
		FUNC6(dev, "Dynamic IPG Enabled\n");
	}

	lp->opened = 1;

	FUNC11(&lp->lock);

	FUNC8(dev);

	return 0;
}