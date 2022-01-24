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
struct net_device {int dummy; } ;
struct macsec_rxh_data {int /*<<< orphan*/  secys; } ;
struct macsec_dev {struct net_device* real_dev; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct macsec_rxh_data*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct list_head*) ; 
 struct macsec_rxh_data* FUNC3 (struct net_device*) ; 
 struct macsec_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, struct list_head *head)
{
	struct macsec_dev *macsec = FUNC4(dev);
	struct net_device *real_dev = macsec->real_dev;
	struct macsec_rxh_data *rxd = FUNC3(real_dev);

	FUNC2(dev, head);

	if (FUNC1(&rxd->secys)) {
		FUNC5(real_dev);
		FUNC0(rxd);
	}
}