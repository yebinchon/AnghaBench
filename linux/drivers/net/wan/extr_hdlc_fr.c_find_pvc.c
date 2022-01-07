
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct pvc_device {scalar_t__ dlci; struct pvc_device* next; } ;
typedef int hdlc_device ;
struct TYPE_2__ {struct pvc_device* first_pvc; } ;


 TYPE_1__* state (int *) ;

__attribute__((used)) static inline struct pvc_device *find_pvc(hdlc_device *hdlc, u16 dlci)
{
 struct pvc_device *pvc = state(hdlc)->first_pvc;

 while (pvc) {
  if (pvc->dlci == dlci)
   return pvc;
  if (pvc->dlci > dlci)
   return ((void*)0);
  pvc = pvc->next;
 }

 return ((void*)0);
}
