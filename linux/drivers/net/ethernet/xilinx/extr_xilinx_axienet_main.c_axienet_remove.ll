; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.axienet_local = type { i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axienet_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axienet_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.axienet_local*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %7)
  store %struct.axienet_local* %8, %struct.axienet_local** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %12 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %17 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @phylink_destroy(i64 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %22 = call i32 @axienet_mdio_teardown(%struct.axienet_local* %21)
  %23 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %24 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %29 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @clk_disable_unprepare(i64 %30)
  br label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %34 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @of_node_put(i32* %35)
  %37 = load %struct.axienet_local*, %struct.axienet_local** %4, align 8
  %38 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @free_netdev(%struct.net_device* %39)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @phylink_destroy(i64) #1

declare dso_local i32 @axienet_mdio_teardown(%struct.axienet_local*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @of_node_put(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
