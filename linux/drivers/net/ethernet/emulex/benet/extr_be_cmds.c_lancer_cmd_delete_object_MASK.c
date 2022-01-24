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
struct lancer_cmd_req_delete_object {int /*<<< orphan*/  object_name; int /*<<< orphan*/  hdr; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_DELETE_OBJECT ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 struct lancer_cmd_req_delete_object* FUNC2 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC7(struct be_adapter *adapter,
				    const char *obj_name)
{
	struct lancer_cmd_req_delete_object *req;
	struct be_mcc_wrb *wrb;
	int status;

	FUNC3(&adapter->mcc_lock);

	wrb = FUNC6(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC2(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_DELETE_OBJECT,
			       sizeof(*req), wrb, NULL);

	FUNC5(req->object_name, obj_name, sizeof(req->object_name));

	status = FUNC0(adapter);
err:
	FUNC4(&adapter->mcc_lock);
	return status;
}