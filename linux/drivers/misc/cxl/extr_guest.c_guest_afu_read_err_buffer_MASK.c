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
typedef  int /*<<< orphan*/  u64 ;
struct cxl_afu {TYPE_1__* guest; } ;
typedef  int ssize_t ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t ERR_BUFF_MAX_COPY_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static ssize_t FUNC5(struct cxl_afu *afu, char *buf,
					loff_t off, size_t count)
{
	void *tbuf = NULL;
	int rc = 0;

	tbuf = (void *) FUNC2(GFP_KERNEL);
	if (!tbuf)
		return -ENOMEM;

	rc = FUNC0(afu->guest->handle,
			       off & 0x7,
			       FUNC4(tbuf),
			       count);
	if (rc)
		goto err;

	if (count > ERR_BUFF_MAX_COPY_SIZE)
		count = ERR_BUFF_MAX_COPY_SIZE - (off & 0x7);
	FUNC3(buf, tbuf, count);
err:
	FUNC1((u64)tbuf);

	return rc;
}