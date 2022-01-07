; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i8*, i8*, i8*, i32 }
%struct.hns3_nic_priv = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.hnae3_handle*)* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"could not get fw version!\0A\00", align 1
@hns3_driver_version = common dso_local global i32 0, align 4
@ETHTOOL_BUSINFO_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%lu.%lu.%lu.%lu\00", align 1
@HNAE3_FW_VERSION_BYTE3_MASK = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE3_SHIFT = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE2_MASK = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE2_SHIFT = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE1_MASK = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE1_SHIFT = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE0_MASK = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE0_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @hns3_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.hns3_nic_priv*, align 8
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.hns3_nic_priv* %9, %struct.hns3_nic_priv** %5, align 8
  %10 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %11 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %10, i32 0, i32 0
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %11, align 8
  store %struct.hnae3_handle* %12, %struct.hnae3_handle** %6, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %18, align 8
  %20 = icmp ne i32 (%struct.hnae3_handle*)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @netdev_err(%struct.net_device* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %95

24:                                               ; preds = %2
  %25 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @hns3_driver_version, align 4
  %29 = call i32 @strncpy(i8* %27, i32 %28, i32 8)
  %30 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 7
  store i8 0, i8* %33, align 1
  %34 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %38 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strncpy(i8* %36, i32 %43, i32 8)
  %45 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 7
  store i8 0, i8* %48, align 1
  %49 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %50 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %53 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i32 @pci_name(%struct.TYPE_8__* %54)
  %56 = call i32 @strncpy(i8* %51, i32 %55, i32 8)
  %57 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %58 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @ETHTOOL_BUSINFO_LEN, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %65 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %64, i32 0, i32 0
  %66 = load %struct.hnae3_handle*, %struct.hnae3_handle** %65, align 8
  %67 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %71, align 8
  %73 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %74 = call i32 %72(%struct.hnae3_handle* %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @HNAE3_FW_VERSION_BYTE3_MASK, align 4
  %80 = load i32, i32* @HNAE3_FW_VERSION_BYTE3_SHIFT, align 4
  %81 = call i32 @hnae3_get_field(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @HNAE3_FW_VERSION_BYTE2_MASK, align 4
  %84 = load i32, i32* @HNAE3_FW_VERSION_BYTE2_SHIFT, align 4
  %85 = call i32 @hnae3_get_field(i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @HNAE3_FW_VERSION_BYTE1_MASK, align 4
  %88 = load i32, i32* @HNAE3_FW_VERSION_BYTE1_SHIFT, align 4
  %89 = call i32 @hnae3_get_field(i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @HNAE3_FW_VERSION_BYTE0_MASK, align 4
  %92 = load i32, i32* @HNAE3_FW_VERSION_BYTE0_SHIFT, align 4
  %93 = call i32 @hnae3_get_field(i32 %90, i32 %91, i32 %92)
  %94 = call i32 @snprintf(i32 %77, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %85, i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %24, %21
  ret void
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.TYPE_8__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hnae3_get_field(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
