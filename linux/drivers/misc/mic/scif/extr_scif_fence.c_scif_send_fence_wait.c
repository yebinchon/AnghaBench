
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scif_epd_t ;


 int SCIF_WAIT ;
 int _scif_send_fence (int ,int ,int,int *) ;

__attribute__((used)) static int scif_send_fence_wait(scif_epd_t epd, int mark)
{
 return _scif_send_fence(epd, SCIF_WAIT, mark, ((void*)0));
}
