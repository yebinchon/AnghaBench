
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HNS3_BD_SIZE_1024_TYPE ;
 int HNS3_BD_SIZE_2048_TYPE ;
 int HNS3_BD_SIZE_4096_TYPE ;
 int HNS3_BD_SIZE_512_TYPE ;

__attribute__((used)) static int hns3_buf_size2type(u32 buf_size)
{
 int bd_size_type;

 switch (buf_size) {
 case 512:
  bd_size_type = HNS3_BD_SIZE_512_TYPE;
  break;
 case 1024:
  bd_size_type = HNS3_BD_SIZE_1024_TYPE;
  break;
 case 2048:
  bd_size_type = HNS3_BD_SIZE_2048_TYPE;
  break;
 case 4096:
  bd_size_type = HNS3_BD_SIZE_4096_TYPE;
  break;
 default:
  bd_size_type = HNS3_BD_SIZE_2048_TYPE;
 }

 return bd_size_type;
}
