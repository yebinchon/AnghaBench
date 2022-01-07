
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cobalt_stream {unsigned int input; } ;


 struct cobalt_stream* video_drvdata (struct file*) ;

__attribute__((used)) static int cobalt_g_input(struct file *file, void *priv_fh, unsigned int *i)
{
 struct cobalt_stream *s = video_drvdata(file);

 *i = s->input;
 return 0;
}
