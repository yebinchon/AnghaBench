
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int * health_thread; } ;



__attribute__((used)) static int genwqe_health_thread_running(struct genwqe_dev *cd)
{
 return cd->health_thread != ((void*)0);
}
