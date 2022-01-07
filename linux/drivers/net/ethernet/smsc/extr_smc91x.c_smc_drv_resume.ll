; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91x.c_smc_drv_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91x.c_smc_drv_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.smc_local = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @smc_drv_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_drv_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.smc_local*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.platform_device* @to_platform_device(%struct.device* %6)
  store %struct.platform_device* %7, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.smc_local* @netdev_priv(%struct.net_device* %13)
  store %struct.smc_local* %14, %struct.smc_local** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call i32 @smc_enable_device(%struct.platform_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i64 @netif_running(%struct.net_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %12
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @smc_reset(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @smc_enable(%struct.net_device* %23)
  %25 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %26 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %31 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %30, i32 0, i32 1
  %32 = call i32 @smc_phy_configure(i32* %31)
  br label %33

33:                                               ; preds = %29, %20
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @netif_device_attach(%struct.net_device* %34)
  br label %36

36:                                               ; preds = %33, %12
  br label %37

37:                                               ; preds = %36, %1
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.smc_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smc_enable_device(%struct.platform_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @smc_reset(%struct.net_device*) #1

declare dso_local i32 @smc_enable(%struct.net_device*) #1

declare dso_local i32 @smc_phy_configure(i32*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
