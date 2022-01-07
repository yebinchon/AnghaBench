; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.net_device = type { i32* }
%struct.macb = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @macb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.macb*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.net_device* %11, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %94

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.macb* @netdev_priv(%struct.net_device* %15)
  store %struct.macb* %16, %struct.macb** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @phy_disconnect(i32* %24)
  br label %26

26:                                               ; preds = %21, %14
  %27 = load %struct.macb*, %struct.macb** %4, align 8
  %28 = getelementptr inbounds %struct.macb, %struct.macb* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mdiobus_unregister(i32 %29)
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = icmp ne %struct.device_node* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = call i64 @of_phy_is_fixed_link(%struct.device_node* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32 @of_phy_deregister_fixed_link(%struct.device_node* %38)
  br label %40

40:                                               ; preds = %37, %33, %26
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.macb*, %struct.macb** %4, align 8
  %44 = getelementptr inbounds %struct.macb, %struct.macb* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mdiobus_free(i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @unregister_netdev(%struct.net_device* %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @pm_runtime_disable(%struct.TYPE_5__* %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_5__* %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @pm_runtime_suspended(%struct.TYPE_5__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %40
  %60 = load %struct.macb*, %struct.macb** %4, align 8
  %61 = getelementptr inbounds %struct.macb, %struct.macb* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clk_disable_unprepare(i32 %62)
  %64 = load %struct.macb*, %struct.macb** %4, align 8
  %65 = getelementptr inbounds %struct.macb, %struct.macb* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clk_unregister(i32 %66)
  %68 = load %struct.macb*, %struct.macb** %4, align 8
  %69 = getelementptr inbounds %struct.macb, %struct.macb* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @clk_disable_unprepare(i32 %70)
  %72 = load %struct.macb*, %struct.macb** %4, align 8
  %73 = getelementptr inbounds %struct.macb, %struct.macb* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @clk_disable_unprepare(i32 %74)
  %76 = load %struct.macb*, %struct.macb** %4, align 8
  %77 = getelementptr inbounds %struct.macb, %struct.macb* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @clk_disable_unprepare(i32 %78)
  %80 = load %struct.macb*, %struct.macb** %4, align 8
  %81 = getelementptr inbounds %struct.macb, %struct.macb* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clk_disable_unprepare(i32 %82)
  %84 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @pm_runtime_set_suspended(%struct.TYPE_5__* %85)
  br label %87

87:                                               ; preds = %59, %40
  %88 = load %struct.macb*, %struct.macb** %4, align 8
  %89 = getelementptr inbounds %struct.macb, %struct.macb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @of_node_put(i32 %90)
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = call i32 @free_netdev(%struct.net_device* %92)
  br label %94

94:                                               ; preds = %87, %1
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_deregister_fixed_link(%struct.device_node*) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_5__*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_5__*) #1

declare dso_local i32 @pm_runtime_suspended(%struct.TYPE_5__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_unregister(i32) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_5__*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
