
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int ds; } ;


 int dsa_unregister_switch (int ) ;

__attribute__((used)) static void mv88e6xxx_unregister_switch(struct mv88e6xxx_chip *chip)
{
 dsa_unregister_switch(chip->ds);
}
