
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct camera_data {int first_image_seen; int num_frames; TYPE_1__* workbuff; TYPE_1__* curbuff; scalar_t__ mmapped; } ;
struct TYPE_2__ {unsigned char* data; int length; int max_length; void* status; int num; struct TYPE_2__* next; } ;


 int DBG (char*,...) ;
 void* FRAME_EMPTY ;
 void* FRAME_ERROR ;
 void* FRAME_READY ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void process_frame(struct camera_data *cam)
{
 static int frame_count;

 unsigned char *inbuff = cam->workbuff->data;

 DBG("Processing frame #%d, current:%d\n",
     cam->workbuff->num, cam->curbuff->num);

 if(cam->workbuff->length > cam->workbuff->max_length)
  cam->workbuff->max_length = cam->workbuff->length;

 if ((inbuff[0] == 0xFF) && (inbuff[1] == 0xD8)) {
  frame_count++;
 } else {
  cam->workbuff->status = FRAME_ERROR;
  DBG("Start of frame not found\n");
  return;
 }




 if(!cam->first_image_seen) {


  cam->first_image_seen = 1;
  cam->workbuff->status = FRAME_EMPTY;
  return;
 }
 if (cam->workbuff->length > 3) {
  if(cam->mmapped &&
     cam->workbuff->length < cam->workbuff->max_length) {

   memset(cam->workbuff->data+cam->workbuff->length,
          0, cam->workbuff->max_length-
      cam->workbuff->length);
  }
  cam->workbuff->max_length = cam->workbuff->length;
  cam->workbuff->status = FRAME_READY;

  if(!cam->mmapped && cam->num_frames > 2) {
   cam->curbuff->status = FRAME_EMPTY;
  }
  cam->curbuff = cam->workbuff;
  cam->workbuff = cam->workbuff->next;
  DBG("Changed buffers, work:%d, current:%d\n",
      cam->workbuff->num, cam->curbuff->num);
  return;
 } else {
  DBG("Not enough data for an image.\n");
 }

 cam->workbuff->status = FRAME_ERROR;
 return;
}
