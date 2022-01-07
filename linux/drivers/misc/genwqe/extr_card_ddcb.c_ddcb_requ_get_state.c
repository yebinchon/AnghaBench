
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddcb_requ {int req_state; } ;
typedef enum genwqe_requ_state { ____Placeholder_genwqe_requ_state } genwqe_requ_state ;



__attribute__((used)) static inline enum genwqe_requ_state ddcb_requ_get_state(struct ddcb_requ *req)
{
 return req->req_state;
}
