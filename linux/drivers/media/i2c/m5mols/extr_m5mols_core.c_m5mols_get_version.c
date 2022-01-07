
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct m5mols_version {int project; int customer; int af; int awb; int param; int hw; int fw; int * str; } ;
struct m5mols_info {struct m5mols_version ver; } ;


 int AF_VERSION ;
 int REG_SAMSUNG_ELECTRO ;
 int REG_SAMSUNG_OPTICS ;
 int REG_SAMSUNG_TECHWIN ;
 int SYSTEM_VER_AWB ;
 int SYSTEM_VER_CUSTOMER ;
 int SYSTEM_VER_FIRMWARE ;
 int SYSTEM_VER_HARDWARE ;
 int SYSTEM_VER_PARAMETER ;
 int SYSTEM_VER_PROJECT ;
 int SYSTEM_VER_STRING ;
 int VERSION_STRING_SIZE ;
 int is_available_af (struct m5mols_info*) ;
 scalar_t__ is_manufacturer (struct m5mols_info*,int ) ;
 int m5mols_read_u16 (struct v4l2_subdev*,int ,int *) ;
 int m5mols_read_u8 (struct v4l2_subdev*,int ,int *) ;
 struct m5mols_info* to_m5mols (struct v4l2_subdev*) ;
 int v4l2_info (struct v4l2_subdev*,char*,...) ;

__attribute__((used)) static int m5mols_get_version(struct v4l2_subdev *sd)
{
 struct m5mols_info *info = to_m5mols(sd);
 struct m5mols_version *ver = &info->ver;
 u8 *str = ver->str;
 int i;
 int ret;

 ret = m5mols_read_u8(sd, SYSTEM_VER_CUSTOMER, &ver->customer);
 if (!ret)
  ret = m5mols_read_u8(sd, SYSTEM_VER_PROJECT, &ver->project);
 if (!ret)
  ret = m5mols_read_u16(sd, SYSTEM_VER_FIRMWARE, &ver->fw);
 if (!ret)
  ret = m5mols_read_u16(sd, SYSTEM_VER_HARDWARE, &ver->hw);
 if (!ret)
  ret = m5mols_read_u16(sd, SYSTEM_VER_PARAMETER, &ver->param);
 if (!ret)
  ret = m5mols_read_u16(sd, SYSTEM_VER_AWB, &ver->awb);
 if (!ret)
  ret = m5mols_read_u8(sd, AF_VERSION, &ver->af);
 if (ret)
  return ret;

 for (i = 0; i < VERSION_STRING_SIZE; i++) {
  ret = m5mols_read_u8(sd, SYSTEM_VER_STRING, &str[i]);
  if (ret)
   return ret;
 }

 v4l2_info(sd, "Manufacturer\t[%s]\n",
   is_manufacturer(info, REG_SAMSUNG_ELECTRO) ?
   "Samsung Electro-Mechanics" :
   is_manufacturer(info, REG_SAMSUNG_OPTICS) ?
   "Samsung Fiber-Optics" :
   is_manufacturer(info, REG_SAMSUNG_TECHWIN) ?
   "Samsung Techwin" : "None");
 v4l2_info(sd, "Customer/Project\t[0x%02x/0x%02x]\n",
   info->ver.customer, info->ver.project);

 if (!is_available_af(info))
  v4l2_info(sd, "No support Auto Focus on this firmware\n");

 return ret;
}
