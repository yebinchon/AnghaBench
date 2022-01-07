
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int * dev; } ;



__attribute__((used)) static int genwqe_device_initialized(struct genwqe_dev *cd)
{
 return cd->dev != ((void*)0);
}
