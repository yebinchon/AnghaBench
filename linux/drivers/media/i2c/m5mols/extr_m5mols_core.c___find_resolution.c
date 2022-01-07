
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ height; scalar_t__ width; int code; } ;
struct m5mols_resolution {int type; int reg; scalar_t__ height; scalar_t__ width; } ;
typedef enum m5mols_restype { ____Placeholder_m5mols_restype } m5mols_restype ;


 int ARRAY_SIZE (struct m5mols_resolution*) ;
 int EINVAL ;
 int __find_restype (int ) ;
 int abs (scalar_t__) ;
 struct m5mols_resolution* m5mols_reg_res ;

__attribute__((used)) static int __find_resolution(struct v4l2_subdev *sd,
        struct v4l2_mbus_framefmt *mf,
        enum m5mols_restype *type,
        u32 *resolution)
{
 const struct m5mols_resolution *fsize = &m5mols_reg_res[0];
 const struct m5mols_resolution *match = ((void*)0);
 enum m5mols_restype stype = __find_restype(mf->code);
 int i = ARRAY_SIZE(m5mols_reg_res);
 unsigned int min_err = ~0;

 while (i--) {
  int err;
  if (stype == fsize->type) {
   err = abs(fsize->width - mf->width)
    + abs(fsize->height - mf->height);

   if (err < min_err) {
    min_err = err;
    match = fsize;
   }
  }
  fsize++;
 }
 if (match) {
  mf->width = match->width;
  mf->height = match->height;
  *resolution = match->reg;
  *type = stype;
  return 0;
 }

 return -EINVAL;
}
