; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_rockchip.c_emac_rockchip_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_rockchip.c_emac_rockchip_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.rockchip_priv_data = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @emac_rockchip_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_rockchip_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rockchip_priv_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.rockchip_priv_data* @netdev_priv(%struct.net_device* %8)
  store %struct.rockchip_priv_data* %9, %struct.rockchip_priv_data** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @arc_emac_remove(%struct.net_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %4, align 8
  %13 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_disable_unprepare(i32 %14)
  %16 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %4, align 8
  %17 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %4, align 8
  %22 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @regulator_disable(i64 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %4, align 8
  %27 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %4, align 8
  %34 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clk_disable_unprepare(i32 %35)
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @free_netdev(%struct.net_device* %38)
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.rockchip_priv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_emac_remove(%struct.net_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
