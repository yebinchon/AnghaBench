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
struct sun6i_csi_dev {int dummy; } ;
struct sun6i_csi_config {int dummy; } ;
struct sun6i_csi {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sun6i_csi_config*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sun6i_csi_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct sun6i_csi_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct sun6i_csi_dev*) ; 
 struct sun6i_csi_dev* FUNC4 (struct sun6i_csi*) ; 

int FUNC5(struct sun6i_csi *csi,
			    struct sun6i_csi_config *config)
{
	struct sun6i_csi_dev *sdev = FUNC4(csi);

	if (!config)
		return -EINVAL;

	FUNC0(&csi->config, config, sizeof(csi->config));

	FUNC3(sdev);
	FUNC1(sdev);
	FUNC2(sdev);

	return 0;
}