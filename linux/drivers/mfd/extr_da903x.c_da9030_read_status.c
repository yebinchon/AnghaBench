
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct da903x_chip {int client; } ;


 int DA9030_STATUS ;
 int __da903x_read (int ,int ,int *) ;

__attribute__((used)) static int da9030_read_status(struct da903x_chip *chip, unsigned int *status)
{
 return __da903x_read(chip->client, DA9030_STATUS, (uint8_t *)status);
}
