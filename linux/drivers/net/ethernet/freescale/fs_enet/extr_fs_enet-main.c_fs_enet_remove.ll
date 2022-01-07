; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_enet_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_enet_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32 }
%struct.fs_enet_private = type { %struct.TYPE_4__*, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fs_enet_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_enet_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fs_enet_private*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fs_enet_private* %8, %struct.fs_enet_private** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %12 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %14, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 %15(%struct.net_device* %16)
  %18 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %19 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 %22(%struct.net_device* %23)
  %25 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %26 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_set_drvdata(i32 %27, i32* null)
  %29 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %30 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @of_node_put(i32 %33)
  %35 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %36 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %43 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @clk_disable_unprepare(i64 %46)
  br label %48

48:                                               ; preds = %41, %1
  %49 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @of_phy_is_fixed_link(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @of_phy_deregister_fixed_link(i32 %59)
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 @free_netdev(%struct.net_device* %62)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_set_drvdata(i32, i32*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i64 @of_phy_is_fixed_link(i32) #1

declare dso_local i32 @of_phy_deregister_fixed_link(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
