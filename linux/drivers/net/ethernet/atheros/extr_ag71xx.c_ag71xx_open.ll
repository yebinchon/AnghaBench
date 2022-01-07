; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.ag71xx = type { i32 }

@NET_SKB_PAD = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@AG71XX_REG_MAC_MFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ag71xx_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ag71xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ag71xx* @netdev_priv(%struct.net_device* %7)
  store %struct.ag71xx* %8, %struct.ag71xx** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ag71xx_max_frame_len(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* @NET_SKB_PAD, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @NET_IP_ALIGN, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @SKB_DATA_ALIGN(i64 %18)
  %20 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %21 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %23 = load i32, i32* @AG71XX_REG_MAC_MFL, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ag71xx_wr(%struct.ag71xx* %22, i32 %23, i32 %24)
  %26 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ag71xx_hw_set_macaddr(%struct.ag71xx* %26, i32 %29)
  %31 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %32 = call i32 @ag71xx_hw_enable(%struct.ag71xx* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %47

36:                                               ; preds = %1
  %37 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %38 = call i32 @ag71xx_phy_connect(%struct.ag71xx* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %47

42:                                               ; preds = %36
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @phy_start(i32 %45)
  store i32 0, i32* %2, align 4
  br label %51

47:                                               ; preds = %41, %35
  %48 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %49 = call i32 @ag71xx_rings_cleanup(%struct.ag71xx* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.ag71xx* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ag71xx_max_frame_len(i32) #1

declare dso_local i32 @SKB_DATA_ALIGN(i64) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @ag71xx_hw_set_macaddr(%struct.ag71xx*, i32) #1

declare dso_local i32 @ag71xx_hw_enable(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_phy_connect(%struct.ag71xx*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @ag71xx_rings_cleanup(%struct.ag71xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
