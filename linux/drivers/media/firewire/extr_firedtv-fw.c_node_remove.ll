; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-fw.c_node_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-fw.c_node_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.firedtv = type { i32 }

@node_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_unit*)* @node_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_remove(%struct.fw_unit* %0) #0 {
  %2 = alloca %struct.fw_unit*, align 8
  %3 = alloca %struct.firedtv*, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %2, align 8
  %4 = load %struct.fw_unit*, %struct.fw_unit** %2, align 8
  %5 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %4, i32 0, i32 0
  %6 = call %struct.firedtv* @dev_get_drvdata(i32* %5)
  store %struct.firedtv* %6, %struct.firedtv** %3, align 8
  %7 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %8 = call i32 @fdtv_dvb_unregister(%struct.firedtv* %7)
  %9 = call i32 @spin_lock_irq(i32* @node_list_lock)
  %10 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %11 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %10, i32 0, i32 0
  %12 = call i32 @list_del(i32* %11)
  %13 = call i32 @spin_unlock_irq(i32* @node_list_lock)
  %14 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %15 = call i32 @fdtv_unregister_rc(%struct.firedtv* %14)
  %16 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %17 = call i32 @kfree(%struct.firedtv* %16)
  ret void
}

declare dso_local %struct.firedtv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @fdtv_dvb_unregister(%struct.firedtv*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @fdtv_unregister_rc(%struct.firedtv*) #1

declare dso_local i32 @kfree(%struct.firedtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
