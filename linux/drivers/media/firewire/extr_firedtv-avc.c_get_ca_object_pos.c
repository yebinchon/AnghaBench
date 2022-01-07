
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct avc_response_frame {int* operand; } ;



__attribute__((used)) static int get_ca_object_pos(struct avc_response_frame *r)
{
 int length = 1;


 if (r->operand[7] & 0x80)
  length = (r->operand[7] & 0x7f) + 1;
 return length + 7;
}
