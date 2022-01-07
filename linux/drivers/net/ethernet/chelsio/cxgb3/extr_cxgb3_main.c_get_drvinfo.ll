; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@DRV_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s %u.%u.%u TP %u.%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.port_info* @netdev_priv(%struct.net_device* %9)
  store %struct.port_info* %10, %struct.port_info** %5, align 8
  %11 = load %struct.port_info*, %struct.port_info** %5, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 0
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.adapter*, %struct.adapter** %6, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.adapter*, %struct.adapter** %6, align 8
  %18 = call i32 @t3_get_fw_version(%struct.adapter* %17, i64* %7)
  %19 = load %struct.adapter*, %struct.adapter** %6, align 8
  %20 = call i32 @t3_get_tp_version(%struct.adapter* %19, i64* %8)
  %21 = load %struct.adapter*, %struct.adapter** %6, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DRV_NAME, align 4
  %28 = call i32 @strlcpy(i32 %26, i32 %27, i32 4)
  %29 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DRV_VERSION, align 4
  %33 = call i32 @strlcpy(i32 %31, i32 %32, i32 4)
  %34 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.adapter*, %struct.adapter** %6, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pci_name(i32 %39)
  %41 = call i32 @strlcpy(i32 %36, i32 %40, i32 4)
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %2
  %45 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @G_FW_VERSION_TYPE(i64 %48)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @G_FW_VERSION_MAJOR(i64 %53)
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @G_FW_VERSION_MINOR(i64 %55)
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @G_FW_VERSION_MICRO(i64 %57)
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @G_TP_VERSION_MAJOR(i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @G_TP_VERSION_MINOR(i64 %61)
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @G_TP_VERSION_MICRO(i64 %63)
  %65 = call i32 @snprintf(i32 %47, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %54, i32 %56, i32 %58, i32 %60, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %44, %2
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t3_get_fw_version(%struct.adapter*, i64*) #1

declare dso_local i32 @t3_get_tp_version(%struct.adapter*, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @G_FW_VERSION_TYPE(i64) #1

declare dso_local i32 @G_FW_VERSION_MAJOR(i64) #1

declare dso_local i32 @G_FW_VERSION_MINOR(i64) #1

declare dso_local i32 @G_FW_VERSION_MICRO(i64) #1

declare dso_local i32 @G_TP_VERSION_MAJOR(i64) #1

declare dso_local i32 @G_TP_VERSION_MINOR(i64) #1

declare dso_local i32 @G_TP_VERSION_MICRO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
