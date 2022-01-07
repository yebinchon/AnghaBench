; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.be_adapter = type { i8*, i8*, i32 }

@DRV_NAME = common dso_local global i8* null, align 8
@DRV_VER = common dso_local global i8* null, align 8
@FW_VER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s [%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @be_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.be_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.be_adapter* %7, %struct.be_adapter** %5, align 8
  %8 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** @DRV_NAME, align 8
  %12 = call i32 @strlcpy(i32 %10, i8* %11, i32 4)
  %13 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** @DRV_VER, align 8
  %17 = call i32 @strlcpy(i32 %15, i8* %16, i32 4)
  %18 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @FW_VER_LEN, align 4
  %25 = call i32 @memcmp(i8* %20, i8* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %2
  %28 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strlcpy(i32 %30, i8* %33, i32 4)
  br label %46

35:                                               ; preds = %2
  %36 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @snprintf(i32 %38, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %44)
  br label %46

46:                                               ; preds = %35, %27
  %47 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %51 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @pci_name(i32 %52)
  %54 = call i32 @strlcpy(i32 %49, i8* %53, i32 4)
  ret void
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
