
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int * hostdata; } ;


 int kfree (int *) ;

__attribute__((used)) static void
mptspi_target_destroy(struct scsi_target *starget)
{
 kfree(starget->hostdata);
 starget->hostdata = ((void*)0);
}
