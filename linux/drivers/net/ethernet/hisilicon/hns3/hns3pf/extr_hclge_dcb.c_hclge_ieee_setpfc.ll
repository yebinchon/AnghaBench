; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_ieee_setpfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_ieee_setpfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ieee_pfc = type { i64 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64*, i64, i64 }

@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@HCLGE_FLAG_MQPRIO_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HNAE3_MAX_USER_PRIO = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"set pfc: pfc_en=%x, pfc_map=%x, num_tc=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, %struct.ieee_pfc*)* @hclge_ieee_setpfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_ieee_setpfc(%struct.hnae3_handle* %0, %struct.ieee_pfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.ieee_pfc*, align 8
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.hclge_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store %struct.ieee_pfc* %1, %struct.ieee_pfc** %5, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %14 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %13)
  store %struct.hclge_vport* %14, %struct.hclge_vport** %6, align 8
  %15 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %16 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %7, align 8
  %19 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %20 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %19, i32 0, i32 0
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %20, align 8
  store %struct.hclge_dev* %21, %struct.hclge_dev** %8, align 8
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %30 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HCLGE_FLAG_MQPRIO_ENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %120

38:                                               ; preds = %28
  %39 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %40 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %43 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %120

48:                                               ; preds = %38
  %49 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %50 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  store i64* %52, i64** %12, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %53

53:                                               ; preds = %90, %48
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %56 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %54, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %53
  store i64 0, i64* %10, align 8
  br label %61

61:                                               ; preds = %86, %60
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @HNAE3_MAX_USER_PRIO, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = load i64*, i64** %12, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %65
  %73 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %74 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i64 @BIT(i64 %76)
  %78 = and i64 %75, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load i64, i64* %9, align 8
  %82 = call i64 @BIT(i64 %81)
  %83 = load i64, i64* %11, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %11, align 8
  br label %89

85:                                               ; preds = %72, %65
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %10, align 8
  br label %61

89:                                               ; preds = %80, %61
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %9, align 8
  br label %53

93:                                               ; preds = %53
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %96 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i64 %94, i64* %97, align 8
  %98 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %99 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %102 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  %104 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %105 = load i32, i32* @drv, align 4
  %106 = load %struct.net_device*, %struct.net_device** %7, align 8
  %107 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %108 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %112 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @netif_dbg(%struct.hnae3_handle* %104, i32 %105, %struct.net_device* %106, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %109, i64 %110, i64 %114)
  %116 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %117 = call i32 @hclge_tm_pfc_info_update(%struct.hclge_dev* %116)
  %118 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %119 = call i32 @hclge_pause_setup_hw(%struct.hclge_dev* %118, i32 0)
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %93, %47, %35
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @netif_dbg(%struct.hnae3_handle*, i32, %struct.net_device*, i8*, i64, i64, i64) #1

declare dso_local i32 @hclge_tm_pfc_info_update(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_pause_setup_hw(%struct.hclge_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
