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
struct ubi_volume {int dummy; } ;
struct ubi_notification {int /*<<< orphan*/  vi; int /*<<< orphan*/  di; } ;
struct ubi_device {int dummy; } ;

/* Variables and functions */
#define  UBI_VOLUME_ADDED 131 
#define  UBI_VOLUME_REMOVED 130 
#define  UBI_VOLUME_RENAMED 129 
#define  UBI_VOLUME_RESIZED 128 
 int FUNC0 (int /*<<< orphan*/ *,int,struct ubi_notification*) ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device*,struct ubi_volume*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*,char*,int) ; 
 int /*<<< orphan*/  ubi_notifiers ; 
 int FUNC4 (struct ubi_device*) ; 

int FUNC5(struct ubi_device *ubi, struct ubi_volume *vol, int ntype)
{
	int ret;
	struct ubi_notification nt;

	FUNC1(ubi, &nt.di);
	FUNC2(ubi, vol, &nt.vi);

	switch (ntype) {
	case UBI_VOLUME_ADDED:
	case UBI_VOLUME_REMOVED:
	case UBI_VOLUME_RESIZED:
	case UBI_VOLUME_RENAMED:
		ret = FUNC4(ubi);
		if (ret)
			FUNC3(ubi, "Unable to write a new fastmap: %i", ret);
	}

	return FUNC0(&ubi_notifiers, ntype, &nt);
}