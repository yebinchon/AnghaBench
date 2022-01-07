; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_suspend_data_pass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_suspend_data_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpsw_common = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cpsw_suspend_data_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_suspend_data_pass(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cpsw_common*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device* %5)
  store %struct.cpsw_common* %6, %struct.cpsw_common** %3, align 8
  %7 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %8 = call i32 @cpsw_intr_disable(%struct.cpsw_common* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %36, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %12 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %9
  %17 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %18 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %2, align 8
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = icmp ne %struct.net_device* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i64 @netif_running(%struct.net_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %16
  br label %36

32:                                               ; preds = %27
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %33)
  %35 = call i32 (...) @smp_mb__after_atomic()
  br label %36

36:                                               ; preds = %32, %31
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %9

39:                                               ; preds = %9
  %40 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %41 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @cpdma_ctlr_stop(i32 %42)
  ret void
}

declare dso_local %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device*) #1

declare dso_local i32 @cpsw_intr_disable(%struct.cpsw_common*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @cpdma_ctlr_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
