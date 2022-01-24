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
struct macsec_dev {int /*<<< orphan*/  secys; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct macsec_rxh_data*) ; 
 struct macsec_rxh_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct macsec_rxh_data* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  macsec_handle_frame ; 
 struct macsec_dev* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*,int /*<<< orphan*/ ,struct macsec_rxh_data*) ; 

__attribute__((used)) static int FUNC7(struct net_device *real_dev,
			       struct net_device *dev)
{
	struct macsec_dev *macsec = FUNC5(dev);
	struct macsec_rxh_data *rxd = FUNC4(real_dev);

	if (!rxd) {
		int err;

		rxd = FUNC2(sizeof(*rxd), GFP_KERNEL);
		if (!rxd)
			return -ENOMEM;

		FUNC0(&rxd->secys);

		err = FUNC6(real_dev, macsec_handle_frame,
						 rxd);
		if (err < 0) {
			FUNC1(rxd);
			return err;
		}
	}

	FUNC3(&macsec->secys, &rxd->secys);
	return 0;
}