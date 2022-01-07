; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_cfa_adv_flow_mgnt_qcaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_cfa_adv_flow_mgnt_qcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.hwrm_cfa_adv_flow_mgnt_qcaps_output* }
%struct.hwrm_cfa_adv_flow_mgnt_qcaps_output = type { i32 }
%struct.hwrm_cfa_adv_flow_mgnt_qcaps_input = type { i32 }

@BNXT_FW_CAP_CFA_ADV_FLOW = common dso_local global i32 0, align 4
@HWRM_CFA_ADV_FLOW_MGNT_QCAPS = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@CFA_ADV_FLOW_MGNT_QCAPS_RESP_FLAGS_RFS_RING_TBL_IDX_SUPPORTED = common dso_local global i32 0, align 4
@BNXT_FW_CAP_CFA_RFS_RING_TBL_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_cfa_adv_flow_mgnt_qcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_cfa_adv_flow_mgnt_qcaps(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.hwrm_cfa_adv_flow_mgnt_qcaps_input, align 4
  %5 = alloca %struct.hwrm_cfa_adv_flow_mgnt_qcaps_output*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %8 = bitcast %struct.hwrm_cfa_adv_flow_mgnt_qcaps_input* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  store i32 0, i32* %6, align 4
  %9 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BNXT_FW_CAP_CFA_ADV_FLOW, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 2
  %19 = load %struct.hwrm_cfa_adv_flow_mgnt_qcaps_output*, %struct.hwrm_cfa_adv_flow_mgnt_qcaps_output** %18, align 8
  store %struct.hwrm_cfa_adv_flow_mgnt_qcaps_output* %19, %struct.hwrm_cfa_adv_flow_mgnt_qcaps_output** %5, align 8
  %20 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %21 = load i32, i32* @HWRM_CFA_ADV_FLOW_MGNT_QCAPS, align 4
  %22 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %20, %struct.hwrm_cfa_adv_flow_mgnt_qcaps_input* %4, i32 %21, i32 -1, i32 -1)
  %23 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %27 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %28 = call i32 @_hwrm_send_message(%struct.bnxt* %26, %struct.hwrm_cfa_adv_flow_mgnt_qcaps_input* %4, i32 4, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %48

32:                                               ; preds = %16
  %33 = load %struct.hwrm_cfa_adv_flow_mgnt_qcaps_output*, %struct.hwrm_cfa_adv_flow_mgnt_qcaps_output** %5, align 8
  %34 = getelementptr inbounds %struct.hwrm_cfa_adv_flow_mgnt_qcaps_output, %struct.hwrm_cfa_adv_flow_mgnt_qcaps_output* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @CFA_ADV_FLOW_MGNT_QCAPS_RESP_FLAGS_RFS_RING_TBL_IDX_SUPPORTED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i32, i32* @BNXT_FW_CAP_CFA_RFS_RING_TBL_IDX, align 4
  %43 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %44 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %32
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %50 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_cfa_adv_flow_mgnt_qcaps_input*, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_cfa_adv_flow_mgnt_qcaps_input*, i32, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
