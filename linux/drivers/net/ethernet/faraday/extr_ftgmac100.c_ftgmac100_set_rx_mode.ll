; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ftgmac100 = type { i64, i32, i32 }

@FTGMAC100_OFFSET_MAHT0 = common dso_local global i64 0, align 8
@FTGMAC100_OFFSET_MAHT1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ftgmac100_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftgmac100_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ftgmac100*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ftgmac100* @netdev_priv(%struct.net_device* %4)
  store %struct.ftgmac100* %5, %struct.ftgmac100** %3, align 8
  %6 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %7 = call i32 @ftgmac100_calc_mc_hash(%struct.ftgmac100* %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netif_running(%struct.net_device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %14 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %17 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FTGMAC100_OFFSET_MAHT0, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @iowrite32(i32 %15, i64 %20)
  %22 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %23 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %26 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FTGMAC100_OFFSET_MAHT1, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @iowrite32(i32 %24, i64 %29)
  %31 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %32 = call i32 @ftgmac100_start_hw(%struct.ftgmac100* %31)
  br label %33

33:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.ftgmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ftgmac100_calc_mc_hash(%struct.ftgmac100*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ftgmac100_start_hw(%struct.ftgmac100*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
