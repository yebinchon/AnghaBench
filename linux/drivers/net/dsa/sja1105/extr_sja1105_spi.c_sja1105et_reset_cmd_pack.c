
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_reset_cmd {int warm_rst; int cold_rst; } ;


 int SJA1105_SIZE_RESET_CMD ;
 int memset (void*,int ,int const) ;
 int sja1105_pack (void*,int *,int,int,int const) ;

__attribute__((used)) static void
sja1105et_reset_cmd_pack(void *buf, const struct sja1105_reset_cmd *reset)
{
 const int size = SJA1105_SIZE_RESET_CMD;

 memset(buf, 0, size);

 sja1105_pack(buf, &reset->cold_rst, 3, 3, size);
 sja1105_pack(buf, &reset->warm_rst, 2, 2, size);
}
