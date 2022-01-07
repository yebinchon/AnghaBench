; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.mv643xx_eth_private = type { i32, %struct.tx_queue* }
%struct.tx_queue = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @mv643xx_eth_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @mv643xx_eth_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tx_queue*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %10)
  store %struct.mv643xx_eth_private* %11, %struct.mv643xx_eth_private** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %42, %1
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %17 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %14
  %21 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %22 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %21, i32 0, i32 1
  %23 = load %struct.tx_queue*, %struct.tx_queue** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %23, i64 %25
  store %struct.tx_queue* %26, %struct.tx_queue** %9, align 8
  %27 = load %struct.tx_queue*, %struct.tx_queue** %9, align 8
  %28 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %5, align 8
  %32 = load %struct.tx_queue*, %struct.tx_queue** %9, align 8
  %33 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %6, align 8
  %37 = load %struct.tx_queue*, %struct.tx_queue** %9, align 8
  %38 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %20
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %14

45:                                               ; preds = %14
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %48 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %51 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %54 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  ret %struct.net_device_stats* %55
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
