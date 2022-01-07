; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc_mqprio_qopt_offload = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64* }
%struct.hnae3_knic_private_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hnae3_handle*, i64, i64*)* }
%struct.hnae3_handle = type { %struct.hnae3_knic_private_info }

@TC_MQPRIO_HW_OFFLOAD_TCS = common dso_local global i64 0, align 8
@TC_MQPRIO_MODE_CHANNEL = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@HNAE3_MAX_TC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"setup tc: num_tc=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @hns3_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_setup_tc(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tc_mqprio_qopt_offload*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.hnae3_knic_private_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hnae3_handle*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.tc_mqprio_qopt_offload*
  store %struct.tc_mqprio_qopt_offload* %14, %struct.tc_mqprio_qopt_offload** %6, align 8
  %15 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %16 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %7, align 8
  %19 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %20 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %24 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %27 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @TC_MQPRIO_HW_OFFLOAD_TCS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @TC_MQPRIO_MODE_CHANNEL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %33, %2
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %95

46:                                               ; preds = %40, %33
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @HNAE3_MAX_TC, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %95

53:                                               ; preds = %46
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = icmp ne %struct.net_device* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %95

59:                                               ; preds = %53
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %60)
  store %struct.hnae3_handle* %61, %struct.hnae3_handle** %12, align 8
  %62 = load %struct.hnae3_handle*, %struct.hnae3_handle** %12, align 8
  %63 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %62, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %63, %struct.hnae3_knic_private_info** %8, align 8
  %64 = load %struct.hnae3_handle*, %struct.hnae3_handle** %12, align 8
  %65 = load i32, i32* @drv, align 4
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @netif_dbg(%struct.hnae3_handle* %64, i32 %65, %struct.net_device* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %8, align 8
  %70 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %59
  %74 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %8, align 8
  %75 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32 (%struct.hnae3_handle*, i64, i64*)*, i32 (%struct.hnae3_handle*, i64, i64*)** %77, align 8
  %79 = icmp ne i32 (%struct.hnae3_handle*, i64, i64*)* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %8, align 8
  %82 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32 (%struct.hnae3_handle*, i64, i64*)*, i32 (%struct.hnae3_handle*, i64, i64*)** %84, align 8
  %86 = load %struct.hnae3_handle*, %struct.hnae3_handle** %12, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64*, i64** %7, align 8
  %89 = call i32 %85(%struct.hnae3_handle* %86, i64 %87, i64* %88)
  br label %93

90:                                               ; preds = %73, %59
  %91 = load i32, i32* @EOPNOTSUPP, align 4
  %92 = sub nsw i32 0, %91
  br label %93

93:                                               ; preds = %90, %80
  %94 = phi i32 [ %89, %80 ], [ %92, %90 ]
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %56, %50, %43
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.hnae3_handle*, i32, %struct.net_device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
