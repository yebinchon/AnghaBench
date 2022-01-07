; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.smsc911x_data = type { i32, i32 }
%struct.resource = type { i32 }

@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Stopping driver\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"smsc911x-memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @smsc911x_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = icmp ne %struct.net_device* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %13)
  store %struct.smsc911x_data* %14, %struct.smsc911x_data** %4, align 8
  %15 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %16 = icmp ne %struct.smsc911x_data* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %21 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %28 = load i32, i32* @ifdown, align 4
  %29 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %27, i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @unregister_netdev(%struct.net_device* %30)
  %32 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %33 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mdiobus_unregister(i32 %34)
  %36 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %37 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mdiobus_free(i32 %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %40, i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %42, %struct.resource** %5, align 8
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = icmp ne %struct.resource* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %1
  %46 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %47 = load i32, i32* @IORESOURCE_MEM, align 4
  %48 = call %struct.resource* @platform_get_resource(%struct.platform_device* %46, i32 %47, i32 0)
  store %struct.resource* %48, %struct.resource** %5, align 8
  br label %49

49:                                               ; preds = %45, %1
  %50 = load %struct.resource*, %struct.resource** %5, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.resource*, %struct.resource** %5, align 8
  %54 = call i32 @resource_size(%struct.resource* %53)
  %55 = call i32 @release_mem_region(i32 %52, i32 %54)
  %56 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %57 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @iounmap(i32 %58)
  %60 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %61 = call i32 @smsc911x_disable_resources(%struct.platform_device* %60)
  %62 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %63 = call i32 @smsc911x_free_resources(%struct.platform_device* %62)
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i32 @free_netdev(%struct.net_device* %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @pm_runtime_put(i32* %67)
  %69 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @pm_runtime_disable(i32* %70)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SMSC_TRACE(%struct.smsc911x_data*, i32, i8*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @smsc911x_disable_resources(%struct.platform_device*) #1

declare dso_local i32 @smsc911x_free_resources(%struct.platform_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
