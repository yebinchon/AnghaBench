; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.niu = type { i32, %struct.TYPE_2__*, %struct.niu_vpd }
%struct.TYPE_2__ = type { i64 }
%struct.niu_vpd = type { i32, i32 }

@DRV_MODULE_NAME = common dso_local global i32 0, align 4
@DRV_MODULE_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@PLAT_TYPE_NIU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @niu_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.niu*, align 8
  %6 = alloca %struct.niu_vpd*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.niu* @netdev_priv(%struct.net_device* %7)
  store %struct.niu* %8, %struct.niu** %5, align 8
  %9 = load %struct.niu*, %struct.niu** %5, align 8
  %10 = getelementptr inbounds %struct.niu, %struct.niu* %9, i32 0, i32 2
  store %struct.niu_vpd* %10, %struct.niu_vpd** %6, align 8
  %11 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DRV_MODULE_NAME, align 4
  %15 = call i32 @strlcpy(i32 %13, i32 %14, i32 4)
  %16 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DRV_MODULE_VERSION, align 4
  %20 = call i32 @strlcpy(i32 %18, i32 %19, i32 4)
  %21 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.niu_vpd*, %struct.niu_vpd** %6, align 8
  %25 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.niu_vpd*, %struct.niu_vpd** %6, align 8
  %28 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snprintf(i32 %23, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.niu*, %struct.niu** %5, align 8
  %32 = getelementptr inbounds %struct.niu, %struct.niu* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %2
  %39 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.niu*, %struct.niu** %5, align 8
  %43 = getelementptr inbounds %struct.niu, %struct.niu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pci_name(i32 %44)
  %46 = call i32 @strlcpy(i32 %41, i32 %45, i32 4)
  br label %47

47:                                               ; preds = %38, %2
  ret void
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
