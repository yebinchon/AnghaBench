; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vp_update_tx_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vp_update_tx_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_sp_vport_update_params = type { i32, i32 }
%struct.qed_iov_vf_mbx = type { i32 }
%struct.vfpf_vport_update_tx_switch_tlv = type { i32 }

@CHANNEL_TLV_VPORT_UPDATE_TX_SWITCH = common dso_local global i32 0, align 4
@QED_IOV_VP_UPDATE_TX_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_sp_vport_update_params*, %struct.qed_iov_vf_mbx*, i32*)* @qed_iov_vp_update_tx_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vp_update_tx_switch(%struct.qed_hwfn* %0, %struct.qed_sp_vport_update_params* %1, %struct.qed_iov_vf_mbx* %2, i32* %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_sp_vport_update_params*, align 8
  %7 = alloca %struct.qed_iov_vf_mbx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vfpf_vport_update_tx_switch_tlv*, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_sp_vport_update_params* %1, %struct.qed_sp_vport_update_params** %6, align 8
  store %struct.qed_iov_vf_mbx* %2, %struct.qed_iov_vf_mbx** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_TX_SWITCH, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %13 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %14 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i64 @qed_iov_search_list_tlvs(%struct.qed_hwfn* %12, i32 %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct.vfpf_vport_update_tx_switch_tlv*
  store %struct.vfpf_vport_update_tx_switch_tlv* %18, %struct.vfpf_vport_update_tx_switch_tlv** %9, align 8
  %19 = load %struct.vfpf_vport_update_tx_switch_tlv*, %struct.vfpf_vport_update_tx_switch_tlv** %9, align 8
  %20 = icmp ne %struct.vfpf_vport_update_tx_switch_tlv* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %35

22:                                               ; preds = %4
  %23 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %6, align 8
  %24 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.vfpf_vport_update_tx_switch_tlv*, %struct.vfpf_vport_update_tx_switch_tlv** %9, align 8
  %26 = getelementptr inbounds %struct.vfpf_vport_update_tx_switch_tlv, %struct.vfpf_vport_update_tx_switch_tlv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %6, align 8
  %29 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @QED_IOV_VP_UPDATE_TX_SWITCH, align 4
  %31 = shl i32 1, %30
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %22, %21
  ret void
}

declare dso_local i64 @qed_iov_search_list_tlvs(%struct.qed_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
