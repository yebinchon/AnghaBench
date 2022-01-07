; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_coal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_coal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.bnxt_coal, %struct.bnxt_coal, %struct.bnxt_napi** }
%struct.bnxt_coal = type { i32 }
%struct.bnxt_napi = type { i64, i64 }
%struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input = type { i8*, i32 }

@HWRM_RING_CMPL_RING_CFG_AGGINT_PARAMS = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_set_coal(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, align 8
  %6 = alloca %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, align 8
  %7 = alloca %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, align 8
  %8 = alloca %struct.bnxt_napi*, align 8
  %9 = alloca %struct.bnxt_coal*, align 8
  %10 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  store i32 0, i32* %4, align 4
  %11 = bitcast %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = bitcast %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %14 = load i32, i32* @HWRM_RING_CMPL_RING_CFG_AGGINT_PARAMS, align 4
  %15 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %13, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %5, i32 %14, i32 -1, i32 -1)
  %16 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %17 = load i32, i32* @HWRM_RING_CMPL_RING_CFG_AGGINT_PARAMS, align 4
  %18 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %16, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %6, i32 %17, i32 -1, i32 -1)
  %19 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %20 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 4
  %22 = call i32 @bnxt_hwrm_set_coal_params(%struct.bnxt* %19, %struct.bnxt_coal* %21, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %5)
  %23 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %24 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %25 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %24, i32 0, i32 3
  %26 = call i32 @bnxt_hwrm_set_coal_params(%struct.bnxt* %23, %struct.bnxt_coal* %25, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %6)
  %27 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %28 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %124, %1
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %33 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %127

36:                                               ; preds = %30
  %37 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %38 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %37, i32 0, i32 5
  %39 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %39, i64 %41
  %43 = load %struct.bnxt_napi*, %struct.bnxt_napi** %42, align 8
  store %struct.bnxt_napi* %43, %struct.bnxt_napi** %8, align 8
  store %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %5, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %7, align 8
  %44 = load %struct.bnxt_napi*, %struct.bnxt_napi** %8, align 8
  %45 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %36
  %49 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %50 = load %struct.bnxt_napi*, %struct.bnxt_napi** %8, align 8
  %51 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @bnxt_cp_ring_for_tx(%struct.bnxt* %49, i64 %52)
  store i32 %53, i32* %10, align 4
  store %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %6, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %7, align 8
  br label %60

54:                                               ; preds = %36
  %55 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %56 = load %struct.bnxt_napi*, %struct.bnxt_napi** %8, align 8
  %57 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @bnxt_cp_ring_for_rx(%struct.bnxt* %55, i64 %58)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32, i32* %10, align 4
  %62 = call i8* @cpu_to_le16(i32 %61)
  %63 = load %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %7, align 8
  %64 = getelementptr inbounds %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %66 = load %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %7, align 8
  %67 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %68 = call i32 @_hwrm_send_message(%struct.bnxt* %65, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %66, i32 16, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %127

72:                                               ; preds = %60
  %73 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %74 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %124

80:                                               ; preds = %72
  %81 = load %struct.bnxt_napi*, %struct.bnxt_napi** %8, align 8
  %82 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = load %struct.bnxt_napi*, %struct.bnxt_napi** %8, align 8
  %87 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  store %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %6, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %7, align 8
  %91 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %92 = load %struct.bnxt_napi*, %struct.bnxt_napi** %8, align 8
  %93 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @bnxt_cp_ring_for_tx(%struct.bnxt* %91, i64 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i8* @cpu_to_le16(i32 %96)
  %98 = load %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %7, align 8
  %99 = getelementptr inbounds %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %101 = load %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %7, align 8
  %102 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %103 = call i32 @_hwrm_send_message(%struct.bnxt* %100, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %101, i32 16, i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %90
  br label %127

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107, %85, %80
  %109 = load %struct.bnxt_napi*, %struct.bnxt_napi** %8, align 8
  %110 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %115 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %114, i32 0, i32 4
  store %struct.bnxt_coal* %115, %struct.bnxt_coal** %9, align 8
  br label %119

116:                                              ; preds = %108
  %117 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %118 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %117, i32 0, i32 3
  store %struct.bnxt_coal* %118, %struct.bnxt_coal** %9, align 8
  br label %119

119:                                              ; preds = %116, %113
  %120 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %121 = load %struct.bnxt_napi*, %struct.bnxt_napi** %8, align 8
  %122 = load %struct.bnxt_coal*, %struct.bnxt_coal** %9, align 8
  %123 = call i32 @__bnxt_hwrm_set_coal_nq(%struct.bnxt* %120, %struct.bnxt_napi* %121, %struct.bnxt_coal* %122)
  br label %124

124:                                              ; preds = %119, %79
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %30

127:                                              ; preds = %106, %71, %30
  %128 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %129 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %128, i32 0, i32 2
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, i32, i32, i32) #2

declare dso_local i32 @bnxt_hwrm_set_coal_params(%struct.bnxt*, %struct.bnxt_coal*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @bnxt_cp_ring_for_tx(%struct.bnxt*, i64) #2

declare dso_local i32 @bnxt_cp_ring_for_rx(%struct.bnxt*, i64) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, i32, i32) #2

declare dso_local i32 @__bnxt_hwrm_set_coal_nq(%struct.bnxt*, %struct.bnxt_napi*, %struct.bnxt_coal*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
