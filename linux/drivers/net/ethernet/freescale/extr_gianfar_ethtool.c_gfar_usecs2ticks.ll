; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_usecs2ticks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_usecs2ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_private = type { %struct.net_device* }
%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }

@GFAR_GBIT_TIME = common dso_local global i32 0, align 4
@GFAR_100_TIME = common dso_local global i32 0, align 4
@GFAR_10_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfar_private*, i32)* @gfar_usecs2ticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_usecs2ticks(%struct.gfar_private* %0, i32 %1) #0 {
  %3 = alloca %struct.gfar_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  store %struct.gfar_private* %0, %struct.gfar_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %9 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %6, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %22 [
    i32 128, label %17
    i32 129, label %19
    i32 130, label %21
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @GFAR_GBIT_TIME, align 4
  store i32 %18, i32* %7, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @GFAR_100_TIME, align 4
  store i32 %20, i32* %7, align 4
  br label %24

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %2, %21
  %23 = load i32, i32* @GFAR_10_TIME, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %19, %17
  %25 = load i32, i32* %4, align 4
  %26 = mul i32 %25, 1000
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @DIV_ROUND_UP(i32 %26, i32 %27)
  ret i32 %28
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
