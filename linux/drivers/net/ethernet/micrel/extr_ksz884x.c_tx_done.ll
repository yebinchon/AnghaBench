; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { %struct.ksz_hw }
%struct.ksz_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_info*)* @tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_done(%struct.dev_info* %0) #0 {
  %2 = alloca %struct.dev_info*, align 8
  %3 = alloca %struct.ksz_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.dev_info* %0, %struct.dev_info** %2, align 8
  %6 = load %struct.dev_info*, %struct.dev_info** %2, align 8
  %7 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %6, i32 0, i32 0
  store %struct.ksz_hw* %7, %struct.ksz_hw** %3, align 8
  %8 = load %struct.dev_info*, %struct.dev_info** %2, align 8
  %9 = call i32 @transmit_cleanup(%struct.dev_info* %8, i32 1)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %36, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %5, align 8
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i64 @netif_running(%struct.net_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call i64 @netif_queue_stopped(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i32 @netif_wake_queue(%struct.net_device* %33)
  br label %35

35:                                               ; preds = %32, %28, %16
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %10

39:                                               ; preds = %10
  ret void
}

declare dso_local i32 @transmit_cleanup(%struct.dev_info*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
