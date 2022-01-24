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
struct venus_inst {int num_output_bufs; int /*<<< orphan*/  m2m_dev; TYPE_1__ fh; int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  reconf_wait; scalar_t__ buf_count; int /*<<< orphan*/  codec_state; int /*<<< orphan*/  session_type; struct venus_core* core; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; int /*<<< orphan*/  internalbufs; int /*<<< orphan*/  registeredbufs; int /*<<< orphan*/  dpbbufs; } ;
struct venus_core {int /*<<< orphan*/  dev_dec; int /*<<< orphan*/  vdev_dec; } ;
struct file {TYPE_1__* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VENUS_DEC_STATE_DEINIT ; 
 int /*<<< orphan*/  VIDC_SESSION_TYPE_DEC ; 
 int FUNC3 (struct venus_inst*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct venus_inst*) ; 
 struct venus_inst* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m2m_queue_init ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct venus_inst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct venus_inst*) ; 
 int FUNC17 (struct venus_inst*) ; 
 int /*<<< orphan*/  vdec_hfi_ops ; 
 int /*<<< orphan*/  FUNC18 (struct venus_inst*) ; 
 int /*<<< orphan*/  vdec_m2m_ops ; 
 int /*<<< orphan*/  FUNC19 (struct venus_inst*) ; 
 struct venus_core* FUNC20 (struct file*) ; 

__attribute__((used)) static int FUNC21(struct file *file)
{
	struct venus_core *core = FUNC20(file);
	struct venus_inst *inst;
	int ret;

	inst = FUNC7(sizeof(*inst), GFP_KERNEL);
	if (!inst)
		return -ENOMEM;

	FUNC0(&inst->dpbbufs);
	FUNC0(&inst->registeredbufs);
	FUNC0(&inst->internalbufs);
	FUNC0(&inst->list);
	FUNC8(&inst->lock);

	inst->core = core;
	inst->session_type = VIDC_SESSION_TYPE_DEC;
	inst->num_output_bufs = 1;
	inst->codec_state = VENUS_DEC_STATE_DEINIT;
	inst->buf_count = 0;
	FUNC5(&inst->reconf_wait);
	FUNC19(inst);

	ret = FUNC9(core->dev_dec);
	if (ret < 0)
		goto err_free_inst;

	ret = FUNC17(inst);
	if (ret)
		goto err_put_sync;

	ret = FUNC3(inst, &vdec_hfi_ops);
	if (ret)
		goto err_ctrl_deinit;

	FUNC18(inst);

	/*
	 * create m2m device for every instance, the m2m context scheduling
	 * is made by firmware side so we do not need to care about.
	 */
	inst->m2m_dev = FUNC14(&vdec_m2m_ops);
	if (FUNC1(inst->m2m_dev)) {
		ret = FUNC2(inst->m2m_dev);
		goto err_session_destroy;
	}

	inst->m2m_ctx = FUNC13(inst->m2m_dev, inst, m2m_queue_init);
	if (FUNC1(inst->m2m_ctx)) {
		ret = FUNC2(inst->m2m_ctx);
		goto err_m2m_release;
	}

	FUNC12(&inst->fh, core->vdev_dec);

	inst->fh.ctrl_handler = &inst->ctrl_handler;
	FUNC11(&inst->fh);
	inst->fh.m2m_ctx = inst->m2m_ctx;
	file->private_data = &inst->fh;

	return 0;

err_m2m_release:
	FUNC15(inst->m2m_dev);
err_session_destroy:
	FUNC4(inst);
err_ctrl_deinit:
	FUNC16(inst);
err_put_sync:
	FUNC10(core->dev_dec);
err_free_inst:
	FUNC6(inst);
	return ret;
}