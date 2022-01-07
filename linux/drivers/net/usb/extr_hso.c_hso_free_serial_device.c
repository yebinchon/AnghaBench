
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hso_serial {TYPE_1__* shared_int; } ;
struct hso_device {TYPE_1__* shared_int; } ;
struct TYPE_2__ {scalar_t__ ref_count; int shared_int_lock; } ;


 struct hso_serial* dev2ser (struct hso_serial*) ;
 int hso_free_shared_int (TYPE_1__*) ;
 int hso_free_tiomget (struct hso_serial*) ;
 int hso_serial_common_free (struct hso_serial*) ;
 int kfree (struct hso_serial*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hso_free_serial_device(struct hso_device *hso_dev)
{
 struct hso_serial *serial = dev2ser(hso_dev);

 if (!serial)
  return;

 hso_serial_common_free(serial);

 if (serial->shared_int) {
  mutex_lock(&serial->shared_int->shared_int_lock);
  if (--serial->shared_int->ref_count == 0)
   hso_free_shared_int(serial->shared_int);
  else
   mutex_unlock(&serial->shared_int->shared_int_lock);
 }
 hso_free_tiomget(serial);
 kfree(serial);
 kfree(hso_dev);
}
