
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct da903x_chip {int client; } ;


 int DA9034_EVENT_A ;
 int __da903x_reads (int ,int ,int,int*) ;

__attribute__((used)) static int da9034_read_events(struct da903x_chip *chip, unsigned int *events)
{
 uint8_t v[4] = {0, 0, 0, 0};
 int ret;

 ret = __da903x_reads(chip->client, DA9034_EVENT_A, 4, v);
 if (ret < 0)
  return ret;

 *events = (v[3] << 24) | (v[2] << 16) | (v[1] << 8) | v[0];
 return 0;
}
