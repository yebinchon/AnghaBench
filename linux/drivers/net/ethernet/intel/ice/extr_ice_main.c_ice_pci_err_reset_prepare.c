
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ice_pf {int state; } ;


 int __ICE_PFR_REQ ;
 int __ICE_PREPARED_FOR_RESET ;
 int __ICE_SUSPENDED ;
 int ice_prepare_for_reset (struct ice_pf*) ;
 int ice_service_task_stop (struct ice_pf*) ;
 struct ice_pf* pci_get_drvdata (struct pci_dev*) ;
 int set_bit (int ,int ) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void ice_pci_err_reset_prepare(struct pci_dev *pdev)
{
 struct ice_pf *pf = pci_get_drvdata(pdev);

 if (!test_bit(__ICE_SUSPENDED, pf->state)) {
  ice_service_task_stop(pf);

  if (!test_bit(__ICE_PREPARED_FOR_RESET, pf->state)) {
   set_bit(__ICE_PFR_REQ, pf->state);
   ice_prepare_for_reset(pf);
  }
 }
}
