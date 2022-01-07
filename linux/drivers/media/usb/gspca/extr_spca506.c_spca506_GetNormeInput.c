
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int channel; int norme; } ;
struct gspca_dev {int dummy; } ;
typedef int __u16 ;


 int D_STREAM ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ) ;

__attribute__((used)) static void spca506_GetNormeInput(struct gspca_dev *gspca_dev,
      __u16 *norme, __u16 *channel)
{
 struct sd *sd = (struct sd *) gspca_dev;



 *norme = sd->norme;
 *channel = sd->channel;
 gspca_dbg(gspca_dev, D_STREAM, "Get Norme: %d Channel %d\n",
    *norme, *channel);
}
