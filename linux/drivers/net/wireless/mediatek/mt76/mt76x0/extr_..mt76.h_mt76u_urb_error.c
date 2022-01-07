
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; } ;


 int ECONNRESET ;
 int ENOENT ;
 int ESHUTDOWN ;

__attribute__((used)) static inline bool mt76u_urb_error(struct urb *urb)
{
 return urb->status &&
        urb->status != -ECONNRESET &&
        urb->status != -ESHUTDOWN &&
        urb->status != -ENOENT;
}
