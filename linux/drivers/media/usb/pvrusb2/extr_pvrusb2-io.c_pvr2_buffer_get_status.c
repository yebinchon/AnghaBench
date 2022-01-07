
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_buffer {int status; } ;



int pvr2_buffer_get_status(struct pvr2_buffer *bp)
{
 return bp->status;
}
