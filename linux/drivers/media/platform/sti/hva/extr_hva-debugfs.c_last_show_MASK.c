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
struct seq_file {struct hva_dev* private; } ;
struct hva_ctx {int flags; } ;
struct TYPE_2__ {struct hva_ctx last_ctx; } ;
struct hva_dev {TYPE_1__ dbg; } ;

/* Variables and functions */
 int HVA_FLAG_STREAMINFO ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *s, void *data)
{
	struct hva_dev *hva = s->private;
	struct hva_ctx *last_ctx = &hva->dbg.last_ctx;

	if (last_ctx->flags & HVA_FLAG_STREAMINFO) {
		FUNC2(s, "[last encoding]\n");

		FUNC1(last_ctx);
		FUNC0(s, last_ctx);
	} else {
		FUNC2(s, "[no information recorded about last encoding]\n");
	}

	return 0;
}