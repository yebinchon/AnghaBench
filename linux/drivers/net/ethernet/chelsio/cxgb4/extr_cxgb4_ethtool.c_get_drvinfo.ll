; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@cxgb4_driver_name = common dso_local global i32 0, align 4
@cxgb4_driver_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%u.%u.%u.%u, TP %u.%u.%u.%u\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@cxgb4_priv_flags_strings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.adapter* @netdev2adap(%struct.net_device* %7)
  store %struct.adapter* %8, %struct.adapter** %5, align 8
  %9 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @cxgb4_driver_name, align 4
  %13 = call i32 @strlcpy(i32 %11, i32 %12, i32 4)
  %14 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @cxgb4_driver_version, align 4
  %18 = call i32 @strlcpy(i32 %16, i32 %17, i32 4)
  %19 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.adapter*, %struct.adapter** %5, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pci_name(i32 %24)
  %26 = call i32 @strlcpy(i32 %21, i32 %25, i32 4)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @get_regs_len(%struct.net_device* %27)
  %29 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.adapter*, %struct.adapter** %5, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %2
  %37 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcpy(i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %86

41:                                               ; preds = %2
  %42 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.adapter*, %struct.adapter** %5, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @FW_HDR_FW_VER_MAJOR_G(i32 %48)
  %50 = load %struct.adapter*, %struct.adapter** %5, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @FW_HDR_FW_VER_MINOR_G(i32 %53)
  %55 = load %struct.adapter*, %struct.adapter** %5, align 8
  %56 = getelementptr inbounds %struct.adapter, %struct.adapter* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @FW_HDR_FW_VER_MICRO_G(i32 %58)
  %60 = load %struct.adapter*, %struct.adapter** %5, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @FW_HDR_FW_VER_BUILD_G(i32 %63)
  %65 = load %struct.adapter*, %struct.adapter** %5, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @FW_HDR_FW_VER_MAJOR_G(i32 %68)
  %70 = load %struct.adapter*, %struct.adapter** %5, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @FW_HDR_FW_VER_MINOR_G(i32 %73)
  %75 = load %struct.adapter*, %struct.adapter** %5, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @FW_HDR_FW_VER_MICRO_G(i32 %78)
  %80 = load %struct.adapter*, %struct.adapter** %5, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @FW_HDR_FW_VER_BUILD_G(i32 %83)
  %85 = call i32 (i32, i32, i8*, i32, i32, i32, i32, ...) @snprintf(i32 %44, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %54, i32 %59, i32 %64, i32 %69, i32 %74, i32 %79, i32 %84)
  br label %86

86:                                               ; preds = %41, %36
  %87 = load %struct.adapter*, %struct.adapter** %5, align 8
  %88 = call i32 @t4_get_exprom_version(%struct.adapter* %87, i32* %6)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %86
  %91 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %92 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @FW_HDR_FW_VER_MAJOR_G(i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @FW_HDR_FW_VER_MINOR_G(i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @FW_HDR_FW_VER_MICRO_G(i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @FW_HDR_FW_VER_BUILD_G(i32 %100)
  %102 = call i32 (i32, i32, i8*, i32, i32, i32, i32, ...) @snprintf(i32 %93, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %97, i32 %99, i32 %101)
  br label %103

103:                                              ; preds = %90, %86
  %104 = load i32, i32* @cxgb4_priv_flags_strings, align 4
  %105 = call i32 @ARRAY_SIZE(i32 %104)
  %106 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %107 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  ret void
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @get_regs_len(%struct.net_device*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @FW_HDR_FW_VER_MAJOR_G(i32) #1

declare dso_local i32 @FW_HDR_FW_VER_MINOR_G(i32) #1

declare dso_local i32 @FW_HDR_FW_VER_MICRO_G(i32) #1

declare dso_local i32 @FW_HDR_FW_VER_BUILD_G(i32) #1

declare dso_local i32 @t4_get_exprom_version(%struct.adapter*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
