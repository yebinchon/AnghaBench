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
struct TYPE_2__ {size_t size; int /*<<< orphan*/  data; } ;
struct mei_cl_cb {TYPE_1__ buf; } ;
struct mei_cl {int dummy; } ;
struct file {int dummy; } ;
typedef  enum mei_cb_file_ops { ____Placeholder_mei_cb_file_ops } mei_cb_file_ops ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEI_SLOT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_cl_cb*) ; 
 struct mei_cl_cb* FUNC2 (struct mei_cl*,int,struct file const*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 

struct mei_cl_cb *FUNC4(struct mei_cl *cl, size_t length,
				  enum mei_cb_file_ops fop_type,
				  const struct file *fp)
{
	struct mei_cl_cb *cb;

	cb = FUNC2(cl, fop_type, fp);
	if (!cb)
		return NULL;

	if (length == 0)
		return cb;

	cb->buf.data = FUNC0(FUNC3(length, MEI_SLOT_SIZE), GFP_KERNEL);
	if (!cb->buf.data) {
		FUNC1(cb);
		return NULL;
	}
	cb->buf.size = length;

	return cb;
}