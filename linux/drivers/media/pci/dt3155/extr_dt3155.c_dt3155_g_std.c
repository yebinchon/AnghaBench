
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct dt3155_priv {int std; } ;


 struct dt3155_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int dt3155_g_std(struct file *filp, void *p, v4l2_std_id *norm)
{
 struct dt3155_priv *pd = video_drvdata(filp);

 *norm = pd->std;
 return 0;
}
