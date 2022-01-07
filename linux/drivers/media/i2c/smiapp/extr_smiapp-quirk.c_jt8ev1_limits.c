
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smiapp_sensor {int dummy; } ;


 int SMIAPP_LIMIT_MIN_LINE_BLANKING_PCK_BIN ;
 int SMIAPP_LIMIT_X_ADDR_MAX ;
 int smiapp_replace_limit (struct smiapp_sensor*,int ,int) ;

__attribute__((used)) static int jt8ev1_limits(struct smiapp_sensor *sensor)
{
 smiapp_replace_limit(sensor, SMIAPP_LIMIT_X_ADDR_MAX, 4271);
 smiapp_replace_limit(sensor,
        SMIAPP_LIMIT_MIN_LINE_BLANKING_PCK_BIN, 184);

 return 0;
}
