
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cal_ctx {unsigned int input; } ;


 struct cal_ctx* video_drvdata (struct file*) ;

__attribute__((used)) static int cal_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct cal_ctx *ctx = video_drvdata(file);

 *i = ctx->input;
 return 0;
}
