; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.ei_device = type { i32 }
%struct.ax_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ax_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ei_device*, align 8
  %5 = alloca %struct.ax_device*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.ei_device* @netdev_priv(%struct.net_device* %9)
  store %struct.ei_device* %10, %struct.ei_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ax_device* @to_ax_dev(%struct.net_device* %11)
  store %struct.ax_device* %12, %struct.ax_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @unregister_netdev(%struct.net_device* %13)
  %15 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %16 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @iounmap(i32 %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %6, align 8
  %22 = load %struct.resource*, %struct.resource** %6, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = call i32 @resource_size(%struct.resource* %25)
  %27 = call i32 @release_mem_region(i32 %24, i32 %26)
  %28 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %29 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %1
  %33 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %34 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @iounmap(i32 %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = call %struct.resource* @platform_get_resource(%struct.platform_device* %37, i32 %38, i32 1)
  store %struct.resource* %39, %struct.resource** %6, align 8
  %40 = load %struct.resource*, %struct.resource** %6, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = call i32 @resource_size(%struct.resource* %43)
  %45 = call i32 @release_mem_region(i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %32, %1
  %47 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %48 = call i32 @platform_set_drvdata(%struct.platform_device* %47, i32* null)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = call i32 @free_netdev(%struct.net_device* %49)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ax_device* @to_ax_dev(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
