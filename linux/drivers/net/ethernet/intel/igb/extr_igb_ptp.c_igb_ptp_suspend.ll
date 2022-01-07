; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32*, i32, i32 }

@IGB_PTP_ENABLED = common dso_local global i32 0, align 4
@IGB_PTP_OVERFLOW_CHECK = common dso_local global i32 0, align 4
@__IGB_PTP_TX_IN_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_ptp_suspend(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %3 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @IGB_PTP_ENABLED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IGB_PTP_OVERFLOW_CHECK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %18, i32 0, i32 4
  %20 = call i32 @cancel_delayed_work_sync(i32* %19)
  br label %21

21:                                               ; preds = %17, %10
  %22 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %22, i32 0, i32 3
  %24 = call i32 @cancel_work_sync(i32* %23)
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @dev_kfree_skb_any(i32* %32)
  %34 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* @__IGB_PTP_TX_IN_PROGRESS, align 4
  %37 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %37, i32 0, i32 1
  %39 = call i32 @clear_bit_unlock(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %9, %29, %21
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
