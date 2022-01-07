
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int S3C64XX_CMD_MAP_SHIFT ;

__attribute__((used)) static unsigned int s3c64xx_cmd_map(unsigned type, unsigned val)
{
 return (type << S3C64XX_CMD_MAP_SHIFT) | val;
}
