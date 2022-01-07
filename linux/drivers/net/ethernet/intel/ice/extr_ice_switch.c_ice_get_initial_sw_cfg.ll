; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_get_initial_sw_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_get_initial_sw_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aqc_get_sw_cfg_resp = type { %struct.ice_aqc_get_sw_cfg_resp_elem* }
%struct.ice_aqc_get_sw_cfg_resp_elem = type { i32, i32, i32 }

@ICE_SW_CFG_MAX_BUF_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_AQC_GET_SW_CONF_RESP_VSI_PORT_NUM_M = common dso_local global i32 0, align 4
@ICE_AQC_GET_SW_CONF_RESP_FUNC_NUM_M = common dso_local global i32 0, align 4
@ICE_AQC_GET_SW_CONF_RESP_IS_VF = common dso_local global i32 0, align 4
@ICE_AQC_GET_SW_CONF_RESP_TYPE_S = common dso_local global i32 0, align 4
@ICE_AQC_GET_SW_CONF_RESP_VSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_get_initial_sw_cfg(%struct.ice_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_aqc_get_sw_cfg_resp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ice_aqc_get_sw_cfg_resp_elem*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store i64 0, i64* %6, align 8
  %15 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %16 = call i32 @ice_hw_to_dev(%struct.ice_hw* %15)
  %17 = load i32, i32* @ICE_SW_CFG_MAX_BUF_LEN, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ice_aqc_get_sw_cfg_resp* @devm_kzalloc(i32 %16, i32 %17, i32 %18)
  store %struct.ice_aqc_get_sw_cfg_resp* %19, %struct.ice_aqc_get_sw_cfg_resp** %4, align 8
  %20 = load %struct.ice_aqc_get_sw_cfg_resp*, %struct.ice_aqc_get_sw_cfg_resp** %4, align 8
  %21 = icmp ne %struct.ice_aqc_get_sw_cfg_resp* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %23, i32* %2, align 4
  br label %112

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %103, %24
  %26 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %27 = load %struct.ice_aqc_get_sw_cfg_resp*, %struct.ice_aqc_get_sw_cfg_resp** %4, align 8
  %28 = load i32, i32* @ICE_SW_CFG_MAX_BUF_LEN, align 4
  %29 = call i32 @ice_aq_get_sw_cfg(%struct.ice_hw* %26, %struct.ice_aqc_get_sw_cfg_resp* %27, i32 %28, i64* %6, i64* %7, i32* null)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %105

33:                                               ; preds = %25
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %92, %33
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %95

38:                                               ; preds = %34
  store i32 0, i32* %13, align 4
  %39 = load %struct.ice_aqc_get_sw_cfg_resp*, %struct.ice_aqc_get_sw_cfg_resp** %4, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.ice_aqc_get_sw_cfg_resp, %struct.ice_aqc_get_sw_cfg_resp* %39, i64 %40
  %42 = getelementptr inbounds %struct.ice_aqc_get_sw_cfg_resp, %struct.ice_aqc_get_sw_cfg_resp* %41, i32 0, i32 0
  %43 = load %struct.ice_aqc_get_sw_cfg_resp_elem*, %struct.ice_aqc_get_sw_cfg_resp_elem** %42, align 8
  store %struct.ice_aqc_get_sw_cfg_resp_elem* %43, %struct.ice_aqc_get_sw_cfg_resp_elem** %9, align 8
  %44 = load %struct.ice_aqc_get_sw_cfg_resp_elem*, %struct.ice_aqc_get_sw_cfg_resp_elem** %9, align 8
  %45 = getelementptr inbounds %struct.ice_aqc_get_sw_cfg_resp_elem, %struct.ice_aqc_get_sw_cfg_resp_elem* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = load i32, i32* @ICE_AQC_GET_SW_CONF_RESP_VSI_PORT_NUM_M, align 4
  %49 = and i32 %47, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %12, align 8
  %51 = load %struct.ice_aqc_get_sw_cfg_resp_elem*, %struct.ice_aqc_get_sw_cfg_resp_elem** %9, align 8
  %52 = getelementptr inbounds %struct.ice_aqc_get_sw_cfg_resp_elem, %struct.ice_aqc_get_sw_cfg_resp_elem* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = load i32, i32* @ICE_AQC_GET_SW_CONF_RESP_FUNC_NUM_M, align 4
  %56 = and i32 %54, %55
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %10, align 8
  %58 = load %struct.ice_aqc_get_sw_cfg_resp_elem*, %struct.ice_aqc_get_sw_cfg_resp_elem** %9, align 8
  %59 = getelementptr inbounds %struct.ice_aqc_get_sw_cfg_resp_elem, %struct.ice_aqc_get_sw_cfg_resp_elem* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %11, align 8
  %63 = load %struct.ice_aqc_get_sw_cfg_resp_elem*, %struct.ice_aqc_get_sw_cfg_resp_elem** %9, align 8
  %64 = getelementptr inbounds %struct.ice_aqc_get_sw_cfg_resp_elem, %struct.ice_aqc_get_sw_cfg_resp_elem* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = load i32, i32* @ICE_AQC_GET_SW_CONF_RESP_IS_VF, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %38
  store i32 1, i32* %13, align 4
  br label %71

71:                                               ; preds = %70, %38
  %72 = load %struct.ice_aqc_get_sw_cfg_resp_elem*, %struct.ice_aqc_get_sw_cfg_resp_elem** %9, align 8
  %73 = getelementptr inbounds %struct.ice_aqc_get_sw_cfg_resp_elem, %struct.ice_aqc_get_sw_cfg_resp_elem* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = load i32, i32* @ICE_AQC_GET_SW_CONF_RESP_TYPE_S, align 4
  %77 = ashr i32 %75, %76
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @ICE_AQC_GET_SW_CONF_RESP_VSI, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %92

82:                                               ; preds = %71
  %83 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %84 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %12, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @ice_init_port_info(i32 %85, i64 %86, i32 %87, i64 %88, i64 %89, i32 %90)
  br label %92

92:                                               ; preds = %82, %81
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %8, align 8
  br label %34

95:                                               ; preds = %34
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %6, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi i1 [ false, %96 ], [ %102, %99 ]
  br i1 %104, label %25, label %105

105:                                              ; preds = %103, %32
  %106 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %107 = call i32 @ice_hw_to_dev(%struct.ice_hw* %106)
  %108 = load %struct.ice_aqc_get_sw_cfg_resp*, %struct.ice_aqc_get_sw_cfg_resp** %4, align 8
  %109 = bitcast %struct.ice_aqc_get_sw_cfg_resp* %108 to i8*
  %110 = call i32 @devm_kfree(i32 %107, i8* %109)
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %105, %22
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.ice_aqc_get_sw_cfg_resp* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @ice_aq_get_sw_cfg(%struct.ice_hw*, %struct.ice_aqc_get_sw_cfg_resp*, i32, i64*, i64*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ice_init_port_info(i32, i64, i32, i64, i64, i32) #1

declare dso_local i32 @devm_kfree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
