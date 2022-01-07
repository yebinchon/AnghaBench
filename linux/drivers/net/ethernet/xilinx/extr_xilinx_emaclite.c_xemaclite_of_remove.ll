; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_emaclite.c_xemaclite_of_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_emaclite.c_xemaclite_of_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.net_local = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xemaclite_of_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xemaclite_of_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_local*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.net_local* @netdev_priv(%struct.net_device* %7)
  store %struct.net_local* %8, %struct.net_local** %4, align 8
  %9 = load %struct.net_local*, %struct.net_local** %4, align 8
  %10 = getelementptr inbounds %struct.net_local, %struct.net_local* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.net_local*, %struct.net_local** %4, align 8
  %15 = getelementptr inbounds %struct.net_local, %struct.net_local* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @mdiobus_unregister(i32* %16)
  %18 = load %struct.net_local*, %struct.net_local** %4, align 8
  %19 = getelementptr inbounds %struct.net_local, %struct.net_local* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @mdiobus_free(i32* %20)
  %22 = load %struct.net_local*, %struct.net_local** %4, align 8
  %23 = getelementptr inbounds %struct.net_local, %struct.net_local* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %13, %1
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @unregister_netdev(%struct.net_device* %25)
  %27 = load %struct.net_local*, %struct.net_local** %4, align 8
  %28 = getelementptr inbounds %struct.net_local, %struct.net_local* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @of_node_put(i32* %29)
  %31 = load %struct.net_local*, %struct.net_local** %4, align 8
  %32 = getelementptr inbounds %struct.net_local, %struct.net_local* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @free_netdev(%struct.net_device* %33)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(i32*) #1

declare dso_local i32 @mdiobus_free(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @of_node_put(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
