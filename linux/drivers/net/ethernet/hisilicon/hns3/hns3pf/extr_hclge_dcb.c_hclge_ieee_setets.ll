; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_ieee_setets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_ieee_setets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ieee_ets = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i32, i32 }

@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@HCLGE_FLAG_MQPRIO_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"set ets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, %struct.ieee_ets*)* @hclge_ieee_setets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_ieee_setets(%struct.hnae3_handle* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.ieee_ets*, align 8
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.hclge_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %5, align 8
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %13 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %12)
  store %struct.hclge_vport* %13, %struct.hclge_vport** %6, align 8
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %15 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %19 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %18, i32 0, i32 0
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %19, align 8
  store %struct.hclge_dev* %20, %struct.hclge_dev** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %29 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HCLGE_FLAG_MQPRIO_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %105

37:                                               ; preds = %27
  %38 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %39 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %40 = call i32 @hclge_ets_validate(%struct.hclge_dev* %38, %struct.ieee_ets* %39, i32* %10, i32* %9)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %3, align 4
  br label %105

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %50 = load i32, i32* @drv, align 4
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = call i32 @netif_dbg(%struct.hnae3_handle* %49, i32 %50, %struct.net_device* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %54 = call i32 @hclge_notify_down_uinit(%struct.hclge_dev* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %3, align 4
  br label %105

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @hclge_tm_schd_info_update(%struct.hclge_dev* %61, i32 %62)
  %64 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %65 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %66 = call i32 @hclge_ieee_ets_to_tm_info(%struct.hclge_dev* %64, %struct.ieee_ets* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %96

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %70
  %74 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %75 = call i32 @hclge_map_update(%struct.hclge_dev* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %96

79:                                               ; preds = %73
  %80 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %81 = call i32 @hclge_client_setup_tc(%struct.hclge_dev* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %96

85:                                               ; preds = %79
  %86 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %87 = call i32 @hclge_notify_init_up(%struct.hclge_dev* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %3, align 4
  br label %105

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %70
  %94 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %95 = call i32 @hclge_tm_dwrr_cfg(%struct.hclge_dev* %94)
  store i32 %95, i32* %3, align 4
  br label %105

96:                                               ; preds = %84, %78, %69
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %3, align 4
  br label %105

101:                                              ; preds = %96
  %102 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %103 = call i32 @hclge_notify_init_up(%struct.hclge_dev* %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %99, %93, %90, %57, %43, %34
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_ets_validate(%struct.hclge_dev*, %struct.ieee_ets*, i32*, i32*) #1

declare dso_local i32 @netif_dbg(%struct.hnae3_handle*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @hclge_notify_down_uinit(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_tm_schd_info_update(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_ieee_ets_to_tm_info(%struct.hclge_dev*, %struct.ieee_ets*) #1

declare dso_local i32 @hclge_map_update(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_client_setup_tc(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_notify_init_up(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_tm_dwrr_cfg(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
