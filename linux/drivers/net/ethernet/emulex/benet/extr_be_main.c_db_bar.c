
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int dummy; } ;


 scalar_t__ be_virtfn (struct be_adapter*) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;

__attribute__((used)) static int db_bar(struct be_adapter *adapter)
{
 if (lancer_chip(adapter) || be_virtfn(adapter))
  return 0;
 else
  return 4;
}
