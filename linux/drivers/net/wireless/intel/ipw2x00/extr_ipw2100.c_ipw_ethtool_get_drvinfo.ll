; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw_ethtool_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw_ethtool_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.ipw2100_priv = type { i32, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@DRV_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s:%d:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @ipw_ethtool_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_ethtool_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.ipw2100_priv*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %8)
  store %struct.ipw2100_priv* %9, %struct.ipw2100_priv** %5, align 8
  %10 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DRV_NAME, align 4
  %14 = call i32 @strlcpy(i32 %12, i32 %13, i32 4)
  %15 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DRV_VERSION, align 4
  %19 = call i32 @strlcpy(i32 %17, i32 %18, i32 4)
  %20 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %22 = call i32 @ipw2100_get_fwversion(%struct.ipw2100_priv* %20, i8* %21, i32 64)
  %23 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %25 = call i32 @ipw2100_get_ucodeversion(%struct.ipw2100_priv* %23, i8* %24, i32 64)
  %26 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %30 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %34 = call i32 @snprintf(i32 %28, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %32, i8* %33)
  %35 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %39 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pci_name(i32 %40)
  %42 = call i32 @strlcpy(i32 %37, i32 %41, i32 4)
  ret void
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ipw2100_get_fwversion(%struct.ipw2100_priv*, i8*, i32) #1

declare dso_local i32 @ipw2100_get_ucodeversion(%struct.ipw2100_priv*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
