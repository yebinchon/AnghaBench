
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hva_h264_po {int stuffing_bits; } ;
struct hva_h264_task {struct hva_h264_po po; } ;



__attribute__((used)) static u32 hva_h264_get_stuffing_bytes(struct hva_h264_task *task)
{
 struct hva_h264_po *po = &task->po;

 return po->stuffing_bits >> 3;
}
