; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_cfa_l2_set_rx_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_cfa_l2_set_rx_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_vnic_info* }
%struct.bnxt_vnic_info = type { i32, i32, i32, i32 }
%struct.hwrm_cfa_l2_set_rx_mask_input = type { i8*, i32, i8*, i8*, i32 }

@HWRM_CFA_L2_SET_RX_MASK = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i64)* @bnxt_hwrm_cfa_l2_set_rx_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_cfa_l2_set_rx_mask(%struct.bnxt* %0, i64 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hwrm_cfa_l2_set_rx_mask_input, align 8
  %6 = alloca %struct.bnxt_vnic_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = bitcast %struct.hwrm_cfa_l2_set_rx_mask_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 40, i1 false)
  %8 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 0
  %10 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %10, i64 %11
  store %struct.bnxt_vnic_info* %12, %struct.bnxt_vnic_info** %6, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %14 = load i32, i32* @HWRM_CFA_L2_SET_RX_MASK, align 4
  %15 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %13, %struct.hwrm_cfa_l2_set_rx_mask_input* %5, i32 %14, i32 -1, i32 -1)
  %16 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %6, align 8
  %17 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = getelementptr inbounds %struct.hwrm_cfa_l2_set_rx_mask_input, %struct.hwrm_cfa_l2_set_rx_mask_input* %5, i32 0, i32 3
  store i8* %19, i8** %20, align 8
  %21 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %6, align 8
  %22 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = getelementptr inbounds %struct.hwrm_cfa_l2_set_rx_mask_input, %struct.hwrm_cfa_l2_set_rx_mask_input* %5, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %6, align 8
  %27 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpu_to_le64(i32 %28)
  %30 = getelementptr inbounds %struct.hwrm_cfa_l2_set_rx_mask_input, %struct.hwrm_cfa_l2_set_rx_mask_input* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %6, align 8
  %32 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = getelementptr inbounds %struct.hwrm_cfa_l2_set_rx_mask_input, %struct.hwrm_cfa_l2_set_rx_mask_input* %5, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %37 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %38 = call i32 @hwrm_send_message(%struct.bnxt* %36, %struct.hwrm_cfa_l2_set_rx_mask_input* %5, i32 40, i32 %37)
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_cfa_l2_set_rx_mask_input*, i32, i32, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_cfa_l2_set_rx_mask_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
