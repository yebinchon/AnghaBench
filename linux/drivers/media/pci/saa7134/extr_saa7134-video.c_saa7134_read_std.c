
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef int u8 ;
struct saa7134_dev {int dummy; } ;


 int SAA7134_STATUS_VIDEO1 ;
 int SAA7134_STATUS_VIDEO2 ;




 int saa_readb (int ) ;

__attribute__((used)) static v4l2_std_id saa7134_read_std(struct saa7134_dev *dev)
{
 static v4l2_std_id stds[] = {
  128,
  131,
  130,
  129 };

 v4l2_std_id result = 0;

 u8 st1 = saa_readb(SAA7134_STATUS_VIDEO1);
 u8 st2 = saa_readb(SAA7134_STATUS_VIDEO2);

 if (!(st2 & 0x1))
  result = 128;
 else
  result = stds[st1 & 0x03];

 return result;
}
