
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hso_serial {int * parent; } ;


 int ** serial_table ;
 int serial_table_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void set_serial_by_index(unsigned index, struct hso_serial *serial)
{
 unsigned long flags;

 spin_lock_irqsave(&serial_table_lock, flags);
 if (serial)
  serial_table[index] = serial->parent;
 else
  serial_table[index] = ((void*)0);
 spin_unlock_irqrestore(&serial_table_lock, flags);
}
