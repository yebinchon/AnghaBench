; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_ethtool.c_fjes_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_ethtool.c_fjes_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.fjes_adapter = type { %struct.platform_device* }
%struct.platform_device = type { i8* }

@fjes_driver_name = common dso_local global i8* null, align 8
@fjes_driver_version = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @fjes_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fjes_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.fjes_adapter*, align 8
  %6 = alloca %struct.platform_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.fjes_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.fjes_adapter* %8, %struct.fjes_adapter** %5, align 8
  %9 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %9, i32 0, i32 0
  %11 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  store %struct.platform_device* %11, %struct.platform_device** %6, align 8
  %12 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** @fjes_driver_name, align 8
  %16 = call i32 @strlcpy(i32 %14, i8* %15, i32 4)
  %17 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** @fjes_driver_version, align 8
  %21 = call i32 @strlcpy(i32 %19, i8* %20, i32 4)
  %22 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strlcpy(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @snprintf(i32 %28, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  ret void
}

declare dso_local %struct.fjes_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
