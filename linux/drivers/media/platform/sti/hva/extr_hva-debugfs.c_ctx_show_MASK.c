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
struct seq_file {struct hva_ctx* private; } ;
struct hva_ctx {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct seq_file *s, void *data)
{
	struct hva_ctx *ctx = s->private;

	FUNC2(s, "[running encoding %d]\n", ctx->id);

	FUNC1(ctx);
	FUNC0(s, ctx);

	return 0;
}