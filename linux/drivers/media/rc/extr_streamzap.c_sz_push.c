
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct streamzap_ir {int rdev; int dev; } ;
struct ir_raw_event {int duration; scalar_t__ pulse; } ;


 int dev_dbg (int ,char*,char*,int ) ;
 int ir_raw_event_store_with_filter (int ,struct ir_raw_event*) ;

__attribute__((used)) static void sz_push(struct streamzap_ir *sz, struct ir_raw_event rawir)
{
 dev_dbg(sz->dev, "Storing %s with duration %u us\n",
  (rawir.pulse ? "pulse" : "space"), rawir.duration);
 ir_raw_event_store_with_filter(sz->rdev, &rawir);
}
