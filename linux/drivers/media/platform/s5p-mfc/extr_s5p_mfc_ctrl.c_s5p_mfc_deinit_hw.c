
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int mfc_ops; } ;


 int release_dev_context_buffer ;
 int s5p_mfc_clock_off () ;
 int s5p_mfc_clock_on () ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*) ;
 int s5p_mfc_reset (struct s5p_mfc_dev*) ;

void s5p_mfc_deinit_hw(struct s5p_mfc_dev *dev)
{
 s5p_mfc_clock_on();

 s5p_mfc_reset(dev);
 s5p_mfc_hw_call(dev->mfc_ops, release_dev_context_buffer, dev);

 s5p_mfc_clock_off();
}
