
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_feature_list; scalar_t__ supports_set_get_features; } ;
struct nand_chip {TYPE_1__ parameters; } ;


 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static bool nand_supports_set_features(struct nand_chip *chip, int addr)
{
 return (chip->parameters.supports_set_get_features &&
  test_bit(addr, chip->parameters.set_feature_list));
}
