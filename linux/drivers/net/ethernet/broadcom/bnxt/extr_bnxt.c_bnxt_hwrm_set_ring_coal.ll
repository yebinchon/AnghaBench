; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_ring_coal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_ring_coal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_napi = type { i32, %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input = type { i32, i32 }
%struct.bnxt_coal = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@HWRM_RING_CMPL_RING_CFG_AGGINT_PARAMS = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_set_ring_coal(%struct.bnxt* %0, %struct.bnxt_napi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_napi*, align 8
  %6 = alloca %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, align 4
  %7 = alloca %struct.bnxt_cp_ring_info*, align 8
  %8 = alloca %struct.bnxt_coal, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_napi* %1, %struct.bnxt_napi** %5, align 8
  %9 = bitcast %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %11 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %10, i32 0, i32 1
  store %struct.bnxt_cp_ring_info* %11, %struct.bnxt_cp_ring_info** %7, align 8
  %12 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %13 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %12, i32 0, i32 0
  %14 = call i32 @memcpy(%struct.bnxt_coal* %8, i32* %13, i32 8)
  %15 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %16 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.bnxt_coal, %struct.bnxt_coal* %8, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %21 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.bnxt_coal, %struct.bnxt_coal* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %26 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %2
  %33 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %34 = load i32, i32* @HWRM_RING_CMPL_RING_CFG_AGGINT_PARAMS, align 4
  %35 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %33, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %6, i32 %34, i32 -1, i32 -1)
  %36 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %37 = call i32 @bnxt_hwrm_set_coal_params(%struct.bnxt* %36, %struct.bnxt_coal* %8, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %6)
  %38 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %39 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %40 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bnxt_cp_ring_for_rx(%struct.bnxt* %38, i32 %41)
  %43 = call i32 @cpu_to_le16(i32 %42)
  %44 = getelementptr inbounds %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %6, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %46 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %47 = call i32 @hwrm_send_message(%struct.bnxt* %45, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %6, i32 8, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %32, %29
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.bnxt_coal*, i32*, i32) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, i32, i32, i32) #2

declare dso_local i32 @bnxt_hwrm_set_coal_params(%struct.bnxt*, %struct.bnxt_coal*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @bnxt_cp_ring_for_rx(%struct.bnxt*, i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
