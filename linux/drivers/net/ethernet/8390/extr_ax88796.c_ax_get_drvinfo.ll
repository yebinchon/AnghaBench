; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32 }
%struct.platform_device = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@DRV_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @ax_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ax_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.platform_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.platform_device* @to_platform_device(i32 %9)
  store %struct.platform_device* %10, %struct.platform_device** %5, align 8
  %11 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DRV_NAME, align 4
  %15 = call i32 @strlcpy(i32 %13, i32 %14, i32 4)
  %16 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DRV_VERSION, align 4
  %20 = call i32 @strlcpy(i32 %18, i32 %19, i32 4)
  %21 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strlcpy(i32 %23, i32 %26, i32 4)
  ret void
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
