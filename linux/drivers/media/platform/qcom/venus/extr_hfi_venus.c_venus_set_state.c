
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int state; int lock; } ;
typedef enum venus_state { ____Placeholder_venus_state } venus_state ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void venus_set_state(struct venus_hfi_device *hdev,
       enum venus_state state)
{
 mutex_lock(&hdev->lock);
 hdev->state = state;
 mutex_unlock(&hdev->lock);
}
