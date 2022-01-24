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
struct ieee1394_device_id {int dummy; } ;
struct fw_unit {int /*<<< orphan*/  device; int /*<<< orphan*/  directory; } ;
struct firedtv {int isochannel; int voltage; int tone; int type; int /*<<< orphan*/  list; int /*<<< orphan*/  remote_ctrl_work; int /*<<< orphan*/  demux_mutex; int /*<<< orphan*/  avc_wait; int /*<<< orphan*/  avc_mutex; int /*<<< orphan*/ * device; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CSR_MODEL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_MODEL_NAME_LEN ; 
 int FUNC2 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC3 (struct firedtv*) ; 
 int /*<<< orphan*/  avc_remote_ctrl_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct firedtv*) ; 
 int FUNC5 (struct firedtv*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct firedtv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct firedtv*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct firedtv*) ; 
 struct firedtv* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * model_names ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  node_list ; 
 int /*<<< orphan*/  node_list_lock ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC19(struct fw_unit *unit, const struct ieee1394_device_id *id)
{
	struct firedtv *fdtv;
	char name[MAX_MODEL_NAME_LEN];
	int name_len, i, err;

	fdtv = FUNC11(sizeof(*fdtv), GFP_KERNEL);
	if (!fdtv)
		return -ENOMEM;

	FUNC4(&unit->device, fdtv);
	fdtv->device		= &unit->device;
	fdtv->isochannel	= -1;
	fdtv->voltage		= 0xff;
	fdtv->tone		= 0xff;

	FUNC14(&fdtv->avc_mutex);
	FUNC9(&fdtv->avc_wait);
	FUNC14(&fdtv->demux_mutex);
	FUNC1(&fdtv->remote_ctrl_work, avc_remote_ctrl_work);

	name_len = FUNC8(unit->directory, CSR_MODEL,
				 name, sizeof(name));
	for (i = FUNC0(model_names); --i; )
		if (FUNC17(model_names[i]) <= name_len &&
		    FUNC18(name, model_names[i], name_len) == 0)
			break;
	fdtv->type = i;

	err = FUNC6(fdtv, &unit->device);
	if (err)
		goto fail_free;

	FUNC15(&node_list_lock);
	FUNC12(&fdtv->list, &node_list);
	FUNC16(&node_list_lock);

	err = FUNC2(fdtv);
	if (err)
		goto fail;

	err = FUNC5(fdtv, model_names[fdtv->type]);
	if (err)
		goto fail;

	FUNC3(fdtv);

	return 0;
fail:
	FUNC15(&node_list_lock);
	FUNC13(&fdtv->list);
	FUNC16(&node_list_lock);
	FUNC7(fdtv);
fail_free:
	FUNC10(fdtv);

	return err;
}