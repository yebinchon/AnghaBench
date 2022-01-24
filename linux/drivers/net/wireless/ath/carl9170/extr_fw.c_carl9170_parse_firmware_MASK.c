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
struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct carl9170fw_desc_head {int dummy; } ;
struct TYPE_3__ {struct carl9170fw_desc_head const* desc; struct firmware* fw; } ;
struct ar9170 {TYPE_2__* udev; TYPE_1__ fw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODATA ; 
 scalar_t__ FUNC0 (int) ; 
 struct carl9170fw_desc_head* FUNC1 (struct ar9170*,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct ar9170*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*) ; 
 int FUNC4 (struct ar9170*,struct carl9170fw_desc_head const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 

int FUNC6(struct ar9170 *ar)
{
	const struct carl9170fw_desc_head *fw_desc = NULL;
	const struct firmware *fw = ar->fw.fw;
	unsigned long header_offset = 0;
	int err;

	if (FUNC0(!fw))
		return -EINVAL;

	fw_desc = FUNC1(ar, fw->data, fw->size);

	if (!fw_desc) {
		FUNC5(&ar->udev->dev, "unsupported firmware.\n");
		return -ENODATA;
	}

	header_offset = (unsigned long)fw_desc - (unsigned long)fw->data;

	err = FUNC4(ar, fw_desc, fw->size - header_offset);
	if (err) {
		FUNC5(&ar->udev->dev, "damaged firmware (%d).\n", err);
		return err;
	}

	ar->fw.desc = fw_desc;

	FUNC3(ar);

	err = FUNC2(ar, fw->data, fw->size);
	if (err) {
		FUNC5(&ar->udev->dev, "failed to parse firmware (%d).\n",
			err);
		return err;
	}

	return 0;
}