
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct da903x_chip {int client; } ;


 int DA9034_STATUS_A ;
 int __da903x_reads (int ,int ,int,int*) ;

__attribute__((used)) static int da9034_read_status(struct da903x_chip *chip, unsigned int *status)
{
 uint8_t v[2] = {0, 0};
 int ret = 0;

 ret = __da903x_reads(chip->client, DA9034_STATUS_A, 2, v);
 if (ret)
  return ret;

 *status = (v[1] << 8) | v[0];
 return 0;
}
