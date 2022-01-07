; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_detach_mailbox_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_detach_mailbox_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_mailbox* }
%struct.qlcnic_mailbox = type { i32, i32, i32, i32 }

@QLC_83XX_MBX_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_detach_mailbox_work(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_mailbox*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %4 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %7, align 8
  store %struct.qlcnic_mailbox* %8, %struct.qlcnic_mailbox** %3, align 8
  %9 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %3, align 8
  %10 = icmp ne %struct.qlcnic_mailbox* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %29

12:                                               ; preds = %1
  %13 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %14 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %3, align 8
  %15 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %14, i32 0, i32 3
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %17, i32 0, i32 2
  %19 = call i32 @complete(i32* %18)
  %20 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %3, align 8
  %21 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %20, i32 0, i32 1
  %22 = call i32 @cancel_work_sync(i32* %21)
  %23 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %3, align 8
  %24 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @flush_workqueue(i32 %25)
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %28 = call i32 @qlcnic_83xx_flush_mbx_queue(%struct.qlcnic_adapter* %27)
  br label %29

29:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @qlcnic_83xx_flush_mbx_queue(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
