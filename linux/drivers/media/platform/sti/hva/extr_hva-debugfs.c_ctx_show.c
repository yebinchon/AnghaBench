
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct hva_ctx* private; } ;
struct hva_ctx {int id; } ;


 int format_ctx (struct seq_file*,struct hva_ctx*) ;
 int hva_dbg_perf_compute (struct hva_ctx*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int ctx_show(struct seq_file *s, void *data)
{
 struct hva_ctx *ctx = s->private;

 seq_printf(s, "[running encoding %d]\n", ctx->id);

 hva_dbg_perf_compute(ctx);
 format_ctx(s, ctx);

 return 0;
}
