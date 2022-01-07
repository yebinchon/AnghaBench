
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct pvr2_ctrl {int dummy; } ;


 int pvr2_std_str_to_id (int*,char const*,unsigned int) ;

__attribute__((used)) static int ctrl_std_sym_to_val(struct pvr2_ctrl *cptr,
          const char *bufPtr,unsigned int bufSize,
          int *mskp,int *valp)
{
 int ret;
 v4l2_std_id id;
 ret = pvr2_std_str_to_id(&id,bufPtr,bufSize);
 if (ret < 0) return ret;
 if (mskp) *mskp = id;
 if (valp) *valp = id;
 return 0;
}
