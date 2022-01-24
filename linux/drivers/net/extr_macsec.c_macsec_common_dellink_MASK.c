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
struct macsec_dev {int /*<<< orphan*/  secys; struct net_device* real_dev; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct macsec_dev*) ; 
 int /*<<< orphan*/  macsec_generation ; 
 struct macsec_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct list_head*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, struct list_head *head)
{
	struct macsec_dev *macsec = FUNC2(dev);
	struct net_device *real_dev = macsec->real_dev;

	FUNC4(dev, head);
	FUNC0(&macsec->secys);
	FUNC1(macsec);
	FUNC3(real_dev, dev);

	macsec_generation++;
}