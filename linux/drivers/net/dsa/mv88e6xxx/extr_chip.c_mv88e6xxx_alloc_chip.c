
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int policies; int mdios; int reg_lock; struct device* dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct mv88e6xxx_chip* devm_kzalloc (struct device*,int,int ) ;
 int idr_init (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct mv88e6xxx_chip *mv88e6xxx_alloc_chip(struct device *dev)
{
 struct mv88e6xxx_chip *chip;

 chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return ((void*)0);

 chip->dev = dev;

 mutex_init(&chip->reg_lock);
 INIT_LIST_HEAD(&chip->mdios);
 idr_init(&chip->policies);

 return chip;
}
