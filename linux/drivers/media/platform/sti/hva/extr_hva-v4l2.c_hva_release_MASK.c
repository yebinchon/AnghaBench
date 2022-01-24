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
struct hva_enc {int /*<<< orphan*/  (* close ) (struct hva_ctx*) ;int /*<<< orphan*/  name; } ;
struct hva_dev {int /*<<< orphan*/  nb_of_instances; int /*<<< orphan*/ ** instances; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct hva_ctx {size_t id; int /*<<< orphan*/  name; TYPE_1__ fh; int /*<<< orphan*/  ctrl_handler; struct hva_enc* enc; } ;
struct file {int /*<<< orphan*/  private_data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (struct hva_ctx*) ; 
 struct hva_dev* FUNC1 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct hva_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct file *file)
{
	struct hva_ctx *ctx = FUNC4(file->private_data);
	struct hva_dev *hva = FUNC1(ctx);
	struct device *dev = FUNC0(ctx);
	const struct hva_enc *enc = ctx->enc;

	if (enc) {
		FUNC2(dev, "%s %s encoder closed\n", ctx->name, enc->name);
		enc->close(ctx);
		ctx->enc = NULL;

		/* clear instance context in instances array */
		hva->instances[ctx->id] = NULL;
		hva->nb_of_instances--;
	}

	/* trace a summary of instance before closing (debug purpose) */
	FUNC6(ctx);

	FUNC12(ctx->fh.m2m_ctx);

	FUNC9(&ctx->ctrl_handler);

	FUNC10(&ctx->fh);
	FUNC11(&ctx->fh);

#ifdef CONFIG_VIDEO_STI_HVA_DEBUGFS
	hva_dbg_ctx_remove(ctx);
#endif

	FUNC3(dev, "%s encoder instance released\n", ctx->name);

	FUNC7(ctx);

	return 0;
}