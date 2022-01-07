
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hva_h264_po {unsigned int bitstream_size; } ;
struct hva_h264_task {struct hva_h264_po po; } ;



__attribute__((used)) static unsigned int hva_h264_get_stream_size(struct hva_h264_task *task)
{
 struct hva_h264_po *po = &task->po;

 return po->bitstream_size;
}
