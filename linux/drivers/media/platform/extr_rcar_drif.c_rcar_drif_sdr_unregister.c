
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_drif_sdr {int * vdev; } ;


 int video_unregister_device (int *) ;

__attribute__((used)) static void rcar_drif_sdr_unregister(struct rcar_drif_sdr *sdr)
{
 video_unregister_device(sdr->vdev);
 sdr->vdev = ((void*)0);
}
