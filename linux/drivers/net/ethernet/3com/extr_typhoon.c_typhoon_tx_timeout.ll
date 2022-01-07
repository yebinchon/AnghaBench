; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.typhoon = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@WaitNoSleep = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not reset in tx timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"could not start runtime in tx timeout\0A\00", align 1
@NoWait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @typhoon_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typhoon_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.typhoon*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.typhoon* @netdev_priv(%struct.net_device* %4)
  store %struct.typhoon* %5, %struct.typhoon** %3, align 8
  %6 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %7 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @WaitNoSleep, align 4
  %10 = call i64 @typhoon_reset(i32 %8, i32 %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netdev_warn(%struct.net_device* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %17 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %18 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %17, i32 0, i32 2
  %19 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %20 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @typhoon_clean_tx(%struct.typhoon* %16, i32* %18, i32* %22)
  %24 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %25 = call i32 @typhoon_free_rx_rings(%struct.typhoon* %24)
  %26 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %27 = call i64 @typhoon_start_runtime(%struct.typhoon* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @netdev_err(%struct.net_device* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %35

32:                                               ; preds = %15
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @netif_wake_queue(%struct.net_device* %33)
  br label %43

35:                                               ; preds = %29, %12
  %36 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %37 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NoWait, align 4
  %40 = call i64 @typhoon_reset(i32 %38, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @netif_carrier_off(%struct.net_device* %41)
  br label %43

43:                                               ; preds = %35, %32
  ret void
}

declare dso_local %struct.typhoon* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @typhoon_reset(i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @typhoon_clean_tx(%struct.typhoon*, i32*, i32*) #1

declare dso_local i32 @typhoon_free_rx_rings(%struct.typhoon*) #1

declare dso_local i64 @typhoon_start_runtime(%struct.typhoon*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
