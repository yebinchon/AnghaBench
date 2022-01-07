
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_sensors {int assembly_3v3_power; int assembly_12v_power; int assembly_power; int chip_temp; } ;
struct nfp_nsp {int dummy; } ;
struct nfp_cpp {int dummy; } ;
typedef int s ;
typedef enum nfp_nsp_sensor_id { ____Placeholder_nfp_nsp_sensor_id } nfp_nsp_sensor_id ;


 int BIT (int) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct nfp_nsp*) ;




 int PTR_ERR (struct nfp_nsp*) ;
 long le32_to_cpu (int ) ;
 int nfp_nsp_close (struct nfp_nsp*) ;
 struct nfp_nsp* nfp_nsp_open (struct nfp_cpp*) ;
 int nfp_nsp_read_sensors (struct nfp_nsp*,int ,struct nfp_sensors*,int) ;

int nfp_hwmon_read_sensor(struct nfp_cpp *cpp, enum nfp_nsp_sensor_id id,
     long *val)
{
 struct nfp_sensors s;
 struct nfp_nsp *nsp;
 int ret;

 nsp = nfp_nsp_open(cpp);
 if (IS_ERR(nsp))
  return PTR_ERR(nsp);

 ret = nfp_nsp_read_sensors(nsp, BIT(id), &s, sizeof(s));
 nfp_nsp_close(nsp);

 if (ret < 0)
  return ret;

 switch (id) {
 case 128:
  *val = le32_to_cpu(s.chip_temp);
  break;
 case 129:
  *val = le32_to_cpu(s.assembly_power);
  break;
 case 131:
  *val = le32_to_cpu(s.assembly_12v_power);
  break;
 case 130:
  *val = le32_to_cpu(s.assembly_3v3_power);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
