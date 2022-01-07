; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.typhoon = type { i32 }

@WaitSleep = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unable to stop runtime\0A\00", align 1
@TYPHOON_STATUS_WAITING_FOR_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to boot sleep image\0A\00", align 1
@PCI_D3hot = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to put card to sleep\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @typhoon_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.typhoon*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.typhoon* @netdev_priv(%struct.net_device* %4)
  store %struct.typhoon* %5, %struct.typhoon** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %9 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %8, i32 0, i32 0
  %10 = call i32 @napi_disable(i32* %9)
  %11 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %12 = load i32, i32* @WaitSleep, align 4
  %13 = call i64 @typhoon_stop_runtime(%struct.typhoon* %11, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @netdev_err(%struct.net_device* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.net_device* %22)
  %24 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %25 = call i32 @typhoon_free_rx_rings(%struct.typhoon* %24)
  %26 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %27 = call i32 @typhoon_init_rings(%struct.typhoon* %26)
  %28 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %29 = load i32, i32* @TYPHOON_STATUS_WAITING_FOR_HOST, align 4
  %30 = call i64 @typhoon_boot_3XP(%struct.typhoon* %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @netdev_err(%struct.net_device* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %18
  %36 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %37 = load i32, i32* @PCI_D3hot, align 4
  %38 = call i64 @typhoon_sleep(%struct.typhoon* %36, i32 %37, i32 0)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @netdev_err(%struct.net_device* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  ret i32 0
}

declare dso_local %struct.typhoon* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i64 @typhoon_stop_runtime(%struct.typhoon*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @typhoon_free_rx_rings(%struct.typhoon*) #1

declare dso_local i32 @typhoon_init_rings(%struct.typhoon*) #1

declare dso_local i64 @typhoon_boot_3XP(%struct.typhoon*, i32) #1

declare dso_local i64 @typhoon_sleep(%struct.typhoon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
