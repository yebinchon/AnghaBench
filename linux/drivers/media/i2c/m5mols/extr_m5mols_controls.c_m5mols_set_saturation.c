
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m5mols_info {int sd; } ;


 int MON_CHROMA_EN ;
 int MON_CHROMA_LVL ;
 int REG_CHROMA_ON ;
 int m5mols_write (int *,int ,int) ;

__attribute__((used)) static int m5mols_set_saturation(struct m5mols_info *info, int val)
{
 int ret = m5mols_write(&info->sd, MON_CHROMA_LVL, val);
 if (ret < 0)
  return ret;

 return m5mols_write(&info->sd, MON_CHROMA_EN, REG_CHROMA_ON);
}
