; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_fw_log_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_fw_log_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ice_aqc_fw_logging_data = type { i32* }
%struct.ice_aq_desc = type { i32 }

@ICE_FW_LOG_DESC_SIZE_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ice_aqc_opc_fw_logging_info = common dso_local global i32 0, align 4
@ICE_AQ_FLAG_BUF = common dso_local global i32 0, align 4
@ICE_AQ_FLAG_RD = common dso_local global i32 0, align 4
@ICE_AQC_FW_LOG_ID_MAX = common dso_local global i64 0, align 8
@ICE_AQC_FW_LOG_ID_M = common dso_local global i64 0, align 8
@ICE_AQC_FW_LOG_ID_S = common dso_local global i64 0, align 8
@ICE_AQC_FW_LOG_EN_M = common dso_local global i64 0, align 8
@ICE_AQC_FW_LOG_EN_S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*)* @ice_get_fw_log_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_get_fw_log_cfg(%struct.ice_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_aqc_fw_logging_data*, align 8
  %5 = alloca %struct.ice_aq_desc, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  %12 = load i64, i64* @ICE_FW_LOG_DESC_SIZE_MAX, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %14 = call i32 @ice_hw_to_dev(%struct.ice_hw* %13)
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ice_aqc_fw_logging_data* @devm_kzalloc(i32 %14, i64 %15, i32 %16)
  store %struct.ice_aqc_fw_logging_data* %17, %struct.ice_aqc_fw_logging_data** %4, align 8
  %18 = load %struct.ice_aqc_fw_logging_data*, %struct.ice_aqc_fw_logging_data** %4, align 8
  %19 = icmp ne %struct.ice_aqc_fw_logging_data* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %21, i32* %2, align 4
  br label %87

22:                                               ; preds = %1
  %23 = load i32, i32* @ice_aqc_opc_fw_logging_info, align 4
  %24 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %5, i32 %23)
  %25 = load i32, i32* @ICE_AQ_FLAG_BUF, align 4
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @ICE_AQ_FLAG_RD, align 4
  %31 = call i32 @cpu_to_le16(i32 %30)
  %32 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %36 = load %struct.ice_aqc_fw_logging_data*, %struct.ice_aqc_fw_logging_data** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %35, %struct.ice_aq_desc* %5, %struct.ice_aqc_fw_logging_data* %36, i64 %37, i32* null)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %81, label %41

41:                                               ; preds = %22
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %77, %41
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @ICE_AQC_FW_LOG_ID_MAX, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = load %struct.ice_aqc_fw_logging_data*, %struct.ice_aqc_fw_logging_data** %4, align 8
  %48 = getelementptr inbounds %struct.ice_aqc_fw_logging_data, %struct.ice_aqc_fw_logging_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le16_to_cpu(i32 %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @ICE_AQC_FW_LOG_ID_M, align 8
  %56 = and i64 %54, %55
  %57 = load i64, i64* @ICE_AQC_FW_LOG_ID_S, align 8
  %58 = lshr i64 %56, %57
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @ICE_AQC_FW_LOG_EN_M, align 8
  %61 = and i64 %59, %60
  %62 = load i64, i64* @ICE_AQC_FW_LOG_EN_S, align 8
  %63 = lshr i64 %61, %62
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @ICE_AQC_FW_LOG_ID_MAX, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %46
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %70 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i64 %68, i64* %75, align 8
  br label %76

76:                                               ; preds = %67, %46
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %42

80:                                               ; preds = %42
  br label %81

81:                                               ; preds = %80, %22
  %82 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %83 = call i32 @ice_hw_to_dev(%struct.ice_hw* %82)
  %84 = load %struct.ice_aqc_fw_logging_data*, %struct.ice_aqc_fw_logging_data** %4, align 8
  %85 = call i32 @devm_kfree(i32 %83, %struct.ice_aqc_fw_logging_data* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %20
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.ice_aqc_fw_logging_data* @devm_kzalloc(i32, i64, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, %struct.ice_aqc_fw_logging_data*, i64, i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_aqc_fw_logging_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
