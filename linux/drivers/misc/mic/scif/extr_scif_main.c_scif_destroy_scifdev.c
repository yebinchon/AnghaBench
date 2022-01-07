
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (int *) ;
 int * scif_dev ;

__attribute__((used)) static void scif_destroy_scifdev(void)
{
 kfree(scif_dev);
 scif_dev = ((void*)0);
}
