
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dt3155_priv {unsigned int input; } ;


 struct dt3155_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int dt3155_g_input(struct file *filp, void *p, unsigned int *i)
{
 struct dt3155_priv *pd = video_drvdata(filp);

 *i = pd->input;
 return 0;
}
