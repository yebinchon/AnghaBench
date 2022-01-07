
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ddb_link {int nr; struct ddb* dev; } ;
struct ddb {int dev; } ;


 int ddbridge_flashread (struct ddb*,int ,int *,int,int ) ;
 int dev_info (int ,char*,int ) ;

__attribute__((used)) static int mxl_fw_read(void *priv, u8 *buf, u32 len)
{
 struct ddb_link *link = priv;
 struct ddb *dev = link->dev;

 dev_info(dev->dev, "Read mxl_fw from link %u\n", link->nr);

 return ddbridge_flashread(dev, link->nr, buf, 0xc0000, len);
}
