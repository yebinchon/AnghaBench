; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i32, i32, i32, i32, i64, i64 }
%struct.qlcnic_info = type { i32, i32, i32, i64 }

@QLC_83XX_SRIOV_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_sriov_pf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_init(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_hardware_context*, align 8
  %5 = alloca %struct.qlcnic_info, align 8
  %6 = alloca %struct.qlcnic_info, align 8
  %7 = alloca %struct.qlcnic_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %11, align 8
  store %struct.qlcnic_hardware_context* %12, %struct.qlcnic_hardware_context** %4, align 8
  %13 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %14 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = call i32 @qlcnic_sriov_enable_check(%struct.qlcnic_adapter* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

20:                                               ; preds = %1
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %22 = call i32 @qlcnic_sriov_pf_cfg_vlan_filtering(%struct.qlcnic_adapter* %21, i32 1)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %2, align 4
  br label %111

27:                                               ; preds = %20
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %29 = call i64 @qlcnic_84xx_check(%struct.qlcnic_adapter* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %33 = call i32 @qlcnic_sriov_pf_cfg_flood(%struct.qlcnic_adapter* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %107

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %27
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @qlcnic_sriov_pf_cfg_eswitch(%struct.qlcnic_adapter* %39, i64 %40, i32 1)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %107

45:                                               ; preds = %38
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @qlcnic_sriov_pf_config_vport(%struct.qlcnic_adapter* %46, i32 1, i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %103

52:                                               ; preds = %45
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %54 = call i32 @qlcnic_sriov_get_pf_info(%struct.qlcnic_adapter* %53, %struct.qlcnic_info* %6)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %99

58:                                               ; preds = %52
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter* %59, %struct.qlcnic_info* %5, i64 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %99

65:                                               ; preds = %58
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @qlcnic_sriov_pf_cal_res_limit(%struct.qlcnic_adapter* %66, %struct.qlcnic_info* %7, i64 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %99

72:                                               ; preds = %65
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %74 = call i32 @qlcnic_sriov_cfg_bc_intr(%struct.qlcnic_adapter* %73, i32 1)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %99

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %82 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %81, i32 0, i32 4
  store i64 %80, i64* %82, align 8
  %83 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %86 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %90 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %94 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @QLC_83XX_SRIOV_MODE, align 4
  %96 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %97 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %2, align 4
  br label %111

99:                                               ; preds = %77, %71, %64, %57
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @qlcnic_sriov_pf_config_vport(%struct.qlcnic_adapter* %100, i32 0, i64 %101)
  br label %103

103:                                              ; preds = %99, %51
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @qlcnic_sriov_pf_cfg_eswitch(%struct.qlcnic_adapter* %104, i64 %105, i32 0)
  br label %107

107:                                              ; preds = %103, %44, %36
  %108 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %109 = call i32 @qlcnic_sriov_pf_cfg_vlan_filtering(%struct.qlcnic_adapter* %108, i32 0)
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %78, %25, %19
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @qlcnic_sriov_enable_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_pf_cfg_vlan_filtering(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_84xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_pf_cfg_flood(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_pf_cfg_eswitch(%struct.qlcnic_adapter*, i64, i32) #1

declare dso_local i32 @qlcnic_sriov_pf_config_vport(%struct.qlcnic_adapter*, i32, i64) #1

declare dso_local i32 @qlcnic_sriov_get_pf_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*) #1

declare dso_local i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i64) #1

declare dso_local i32 @qlcnic_sriov_pf_cal_res_limit(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i64) #1

declare dso_local i32 @qlcnic_sriov_cfg_bc_intr(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
