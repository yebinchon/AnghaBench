
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_reset_cmd {int por_rst; int cold_rst; int warm_rst; int otp_rst; int car_rst; int cfg_rst; int switch_rst; } ;


 int SJA1105_SIZE_RESET_CMD ;
 int memset (void*,int ,int const) ;
 int sja1105_pack (void*,int *,int,int,int const) ;

__attribute__((used)) static void
sja1105pqrs_reset_cmd_pack(void *buf, const struct sja1105_reset_cmd *reset)
{
 const int size = SJA1105_SIZE_RESET_CMD;

 memset(buf, 0, size);

 sja1105_pack(buf, &reset->switch_rst, 8, 8, size);
 sja1105_pack(buf, &reset->cfg_rst, 7, 7, size);
 sja1105_pack(buf, &reset->car_rst, 5, 5, size);
 sja1105_pack(buf, &reset->otp_rst, 4, 4, size);
 sja1105_pack(buf, &reset->warm_rst, 3, 3, size);
 sja1105_pack(buf, &reset->cold_rst, 2, 2, size);
 sja1105_pack(buf, &reset->por_rst, 1, 1, size);
}
