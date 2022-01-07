
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int *) ;
 scalar_t__ pegasus_count ;
 int * pegasus_workqueue ;

__attribute__((used)) static void pegasus_dec_workqueue(void)
{
 pegasus_count--;
 if (pegasus_count == 0) {
  destroy_workqueue(pegasus_workqueue);
  pegasus_workqueue = ((void*)0);
 }
}
