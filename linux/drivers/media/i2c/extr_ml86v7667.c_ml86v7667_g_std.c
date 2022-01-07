
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct ml86v7667_priv {int std; } ;


 struct ml86v7667_priv* to_ml86v7667 (struct v4l2_subdev*) ;

__attribute__((used)) static int ml86v7667_g_std(struct v4l2_subdev *sd, v4l2_std_id *std)
{
 struct ml86v7667_priv *priv = to_ml86v7667(sd);

 *std = priv->std;

 return 0;
}
