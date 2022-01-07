; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91x.c_smc_release_datacs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91x.c_smc_release_datacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.smc_local = type { i32* }
%struct.resource = type { i32 }

@SMC_CAN_USE_DATACS = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"smc91x-data32\00", align 1
@SMC_DATA_EXTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.net_device*)* @smc_release_datacs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_release_datacs(%struct.platform_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.smc_local*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load i64, i64* @SMC_CAN_USE_DATACS, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.smc_local* @netdev_priv(%struct.net_device* %10)
  store %struct.smc_local* %11, %struct.smc_local** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = load i32, i32* @IORESOURCE_MEM, align 4
  %14 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %12, i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %14, %struct.resource** %6, align 8
  %15 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %16 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  %20 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %21 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @iounmap(i32* %22)
  br label %24

24:                                               ; preds = %19, %9
  %25 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %26 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SMC_DATA_EXTENT, align 4
  %34 = call i32 @release_mem_region(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %24
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

declare dso_local %struct.smc_local* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
