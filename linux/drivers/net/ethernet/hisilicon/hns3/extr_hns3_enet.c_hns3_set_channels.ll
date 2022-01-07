; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i64, i64 }
%struct.hnae3_handle = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Change tqps fail, the tqp range is from 1 to %d\00", align 1
@drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"set channels: tqp_num=%u, rxfh=%d\0A\00", align 1
@HNAE3_DOWN_CLIENT = common dso_local global i32 0, align 4
@HNAE3_UNINIT_CLIENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Change channels fail, revert to old value\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"revert to old channel fail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns3_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca %struct.hnae3_knic_private_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %13)
  store %struct.hnae3_handle* %14, %struct.hnae3_handle** %6, align 8
  %15 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %16 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %15, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %16, %struct.hnae3_knic_private_info** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i32 @netif_is_rxfh_configured(%struct.net_device* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i64 @hns3_nic_resetting(%struct.net_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %113

28:                                               ; preds = %2
  %29 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %113

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %44 = call i32 @hns3_get_max_available_channels(%struct.hnae3_handle* %43)
  %45 = icmp sgt i32 %42, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %57

49:                                               ; preds = %46, %41
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %53 = call i32 @hns3_get_max_available_channels(%struct.hnae3_handle* %52)
  %54 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %113

57:                                               ; preds = %46
  %58 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %7, align 8
  %59 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %113

64:                                               ; preds = %57
  %65 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %66 = load i32, i32* @drv, align 4
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @netif_dbg(%struct.hnae3_handle* %65, i32 %66, %struct.net_device* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %72 = load i32, i32* @HNAE3_DOWN_CLIENT, align 4
  %73 = call i32 @hns3_reset_notify(%struct.hnae3_handle* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %3, align 4
  br label %113

78:                                               ; preds = %64
  %79 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %80 = load i32, i32* @HNAE3_UNINIT_CLIENT, align 4
  %81 = call i32 @hns3_reset_notify(%struct.hnae3_handle* %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %3, align 4
  br label %113

86:                                               ; preds = %78
  %87 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %88 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %10, align 4
  %91 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @hns3_change_channels(%struct.hnae3_handle* %91, i32 %92, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %86
  %98 = load %struct.net_device*, %struct.net_device** %4, align 8
  %99 = call i32 @netdev_warn(%struct.net_device* %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @hns3_change_channels(%struct.hnae3_handle* %100, i32 %101, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = call i32 @netdev_err(%struct.net_device* %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %3, align 4
  br label %113

110:                                              ; preds = %97
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %3, align 4
  br label %113

112:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %110, %106, %84, %76, %63, %49, %38, %25
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i32 @netif_is_rxfh_configured(%struct.net_device*) #1

declare dso_local i64 @hns3_nic_resetting(%struct.net_device*) #1

declare dso_local i32 @hns3_get_max_available_channels(%struct.hnae3_handle*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @netif_dbg(%struct.hnae3_handle*, i32, %struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @hns3_reset_notify(%struct.hnae3_handle*, i32) #1

declare dso_local i32 @hns3_change_channels(%struct.hnae3_handle*, i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
