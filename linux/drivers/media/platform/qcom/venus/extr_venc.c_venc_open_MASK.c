#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/ * ctrl_handler; } ;
struct venus_inst {int /*<<< orphan*/  m2m_dev; TYPE_1__ fh; int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  session_type; struct venus_core* core; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; int /*<<< orphan*/  internalbufs; int /*<<< orphan*/  registeredbufs; int /*<<< orphan*/  dpbbufs; } ;
struct venus_core {int /*<<< orphan*/  dev_enc; int /*<<< orphan*/  vdev_enc; } ;
struct file {TYPE_1__* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIDC_SESSION_TYPE_ENC ; 
 int FUNC3 (struct venus_inst*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC5 (struct venus_inst*) ; 
 struct venus_inst* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m2m_queue_init ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct venus_inst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct venus_inst*) ; 
 int FUNC16 (struct venus_inst*) ; 
 int /*<<< orphan*/  venc_hfi_ops ; 
 int /*<<< orphan*/  FUNC17 (struct venus_inst*) ; 
 int /*<<< orphan*/  venc_m2m_ops ; 
 int /*<<< orphan*/  FUNC18 (struct venus_inst*) ; 
 struct venus_core* FUNC19 (struct file*) ; 

__attribute__((used)) static int FUNC20(struct file *file)
{
	struct venus_core *core = FUNC19(file);
	struct venus_inst *inst;
	int ret;

	inst = FUNC6(sizeof(*inst), GFP_KERNEL);
	if (!inst)
		return -ENOMEM;

	FUNC0(&inst->dpbbufs);
	FUNC0(&inst->registeredbufs);
	FUNC0(&inst->internalbufs);
	FUNC0(&inst->list);
	FUNC7(&inst->lock);

	inst->core = core;
	inst->session_type = VIDC_SESSION_TYPE_ENC;

	FUNC18(inst);

	ret = FUNC8(core->dev_enc);
	if (ret < 0)
		goto err_free_inst;

	ret = FUNC16(inst);
	if (ret)
		goto err_put_sync;

	ret = FUNC3(inst, &venc_hfi_ops);
	if (ret)
		goto err_ctrl_deinit;

	FUNC17(inst);

	/*
	 * create m2m device for every instance, the m2m context scheduling
	 * is made by firmware side so we do not need to care about.
	 */
	inst->m2m_dev = FUNC13(&venc_m2m_ops);
	if (FUNC1(inst->m2m_dev)) {
		ret = FUNC2(inst->m2m_dev);
		goto err_session_destroy;
	}

	inst->m2m_ctx = FUNC12(inst->m2m_dev, inst, m2m_queue_init);
	if (FUNC1(inst->m2m_ctx)) {
		ret = FUNC2(inst->m2m_ctx);
		goto err_m2m_release;
	}

	FUNC11(&inst->fh, core->vdev_enc);

	inst->fh.ctrl_handler = &inst->ctrl_handler;
	FUNC10(&inst->fh);
	inst->fh.m2m_ctx = inst->m2m_ctx;
	file->private_data = &inst->fh;

	return 0;

err_m2m_release:
	FUNC14(inst->m2m_dev);
err_session_destroy:
	FUNC4(inst);
err_ctrl_deinit:
	FUNC15(inst);
err_put_sync:
	FUNC9(core->dev_enc);
err_free_inst:
	FUNC5(inst);
	return ret;
}