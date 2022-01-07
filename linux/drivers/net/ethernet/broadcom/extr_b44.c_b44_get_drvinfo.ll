; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32 }
%struct.b44 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i32, i32 }

@DRV_MODULE_NAME = common dso_local global i8* null, align 8
@DRV_MODULE_VERSION = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"SSB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @b44_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.b44*, align 8
  %6 = alloca %struct.ssb_bus*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.b44* @netdev_priv(%struct.net_device* %7)
  store %struct.b44* %8, %struct.b44** %5, align 8
  %9 = load %struct.b44*, %struct.b44** %5, align 8
  %10 = getelementptr inbounds %struct.b44, %struct.b44* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %12, align 8
  store %struct.ssb_bus* %13, %struct.ssb_bus** %6, align 8
  %14 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** @DRV_MODULE_NAME, align 8
  %18 = call i32 @strlcpy(i32 %16, i8* %17, i32 4)
  %19 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** @DRV_MODULE_VERSION, align 8
  %23 = call i32 @strlcpy(i32 %21, i8* %22, i32 4)
  %24 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %25 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %43 [
    i32 131, label %27
    i32 128, label %36
    i32 130, label %41
    i32 129, label %41
  ]

27:                                               ; preds = %2
  %28 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %32 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @pci_name(i32 %33)
  %35 = call i32 @strlcpy(i32 %30, i8* %34, i32 4)
  br label %43

36:                                               ; preds = %2
  %37 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strlcpy(i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %43

41:                                               ; preds = %2, %2
  %42 = call i32 @WARN_ON(i32 1)
  br label %43

43:                                               ; preds = %2, %41, %36, %27
  ret void
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @pci_name(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
