#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scif_status {int dummy; } ;
struct scif_peer_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  dnode; } ;
struct scif_dev {int /*<<< orphan*/  spdev; int /*<<< orphan*/  node; TYPE_1__* sdev; int /*<<< orphan*/  signal_pool; } ;
typedef  int /*<<< orphan*/  pool_name ;
struct TYPE_4__ {int /*<<< orphan*/  conflock; int /*<<< orphan*/  total; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct scif_peer_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__ scif_info ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct scif_dev *scifdev)
{
	struct scif_peer_dev *spdev = FUNC9(scifdev->spdev);
	char pool_name[16];
	int ret;

	ret = FUNC3(&spdev->dev);
	FUNC8(&spdev->dev);
	if (ret) {
		FUNC2(&scifdev->sdev->dev,
			"dnode %d: peer device_add failed\n", scifdev->node);
		goto put_spdev;
	}

	FUNC10(pool_name, sizeof(pool_name), "scif-%d", spdev->dnode);
	scifdev->signal_pool = FUNC5(pool_name, &scifdev->sdev->dev,
						sizeof(struct scif_status), 1,
						0);
	if (!scifdev->signal_pool) {
		FUNC2(&scifdev->sdev->dev,
			"dnode %d: dmam_pool_create failed\n", scifdev->node);
		ret = -ENOMEM;
		goto del_spdev;
	}
	FUNC1(&spdev->dev, "Added peer dnode %d\n", spdev->dnode);
	return 0;
del_spdev:
	FUNC4(&spdev->dev);
put_spdev:
	FUNC0(scifdev->spdev, NULL);
	FUNC11();
	FUNC8(&spdev->dev);

	FUNC6(&scif_info.conflock);
	scif_info.total--;
	FUNC7(&scif_info.conflock);
	return ret;
}