
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fza_driver ;
 int tc_register_driver (int *) ;

__attribute__((used)) static int fza_init(void)
{
 return tc_register_driver(&fza_driver);
}
