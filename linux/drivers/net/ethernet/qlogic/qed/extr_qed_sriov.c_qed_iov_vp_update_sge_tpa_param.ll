; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vp_update_sge_tpa_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vp_update_sge_tpa_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i32 }
%struct.qed_sp_vport_update_params = type { %struct.qed_sge_tpa_params* }
%struct.qed_sge_tpa_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_iov_vf_mbx = type { i32 }
%struct.vfpf_vport_update_sge_tpa_tlv = type { i32, i32, i32, i32, i32, i32, i32 }

@CHANNEL_TLV_VPORT_UPDATE_SGE_TPA = common dso_local global i32 0, align 4
@VFPF_UPDATE_TPA_EN_FLAG = common dso_local global i32 0, align 4
@VFPF_UPDATE_TPA_PARAM_FLAG = common dso_local global i32 0, align 4
@VFPF_TPA_IPV4_EN_FLAG = common dso_local global i32 0, align 4
@VFPF_TPA_IPV6_EN_FLAG = common dso_local global i32 0, align 4
@VFPF_TPA_PKT_SPLIT_FLAG = common dso_local global i32 0, align 4
@VFPF_TPA_HDR_DATA_SPLIT_FLAG = common dso_local global i32 0, align 4
@VFPF_TPA_GRO_CONSIST_FLAG = common dso_local global i32 0, align 4
@QED_IOV_VP_UPDATE_SGE_TPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_sp_vport_update_params*, %struct.qed_sge_tpa_params*, %struct.qed_iov_vf_mbx*, i32*)* @qed_iov_vp_update_sge_tpa_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vp_update_sge_tpa_param(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1, %struct.qed_sp_vport_update_params* %2, %struct.qed_sge_tpa_params* %3, %struct.qed_iov_vf_mbx* %4, i32* %5) #0 {
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_vf_info*, align 8
  %9 = alloca %struct.qed_sp_vport_update_params*, align 8
  %10 = alloca %struct.qed_sge_tpa_params*, align 8
  %11 = alloca %struct.qed_iov_vf_mbx*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.vfpf_vport_update_sge_tpa_tlv*, align 8
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %8, align 8
  store %struct.qed_sp_vport_update_params* %2, %struct.qed_sp_vport_update_params** %9, align 8
  store %struct.qed_sge_tpa_params* %3, %struct.qed_sge_tpa_params** %10, align 8
  store %struct.qed_iov_vf_mbx* %4, %struct.qed_iov_vf_mbx** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_SGE_TPA, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %17 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %11, align 8
  %18 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %14, align 4
  %21 = call i64 @qed_iov_search_list_tlvs(%struct.qed_hwfn* %16, i32 %19, i32 %20)
  %22 = inttoptr i64 %21 to %struct.vfpf_vport_update_sge_tpa_tlv*
  store %struct.vfpf_vport_update_sge_tpa_tlv* %22, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %23 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %24 = icmp ne %struct.vfpf_vport_update_sge_tpa_tlv* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %9, align 8
  %27 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %26, i32 0, i32 0
  store %struct.qed_sge_tpa_params* null, %struct.qed_sge_tpa_params** %27, align 8
  br label %141

28:                                               ; preds = %6
  %29 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %30 = call i32 @memset(%struct.qed_sge_tpa_params* %29, i32 0, i32 48)
  %31 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %32 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VFPF_UPDATE_TPA_EN_FLAG, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %41 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %43 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VFPF_UPDATE_TPA_PARAM_FLAG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %52 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %54 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @VFPF_TPA_IPV4_EN_FLAG, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %63 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %65 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @VFPF_TPA_IPV6_EN_FLAG, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %74 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %76 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @VFPF_TPA_PKT_SPLIT_FLAG, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %85 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %87 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @VFPF_TPA_HDR_DATA_SPLIT_FLAG, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %96 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %98 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @VFPF_TPA_GRO_CONSIST_FLAG, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %107 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  %108 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %109 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %112 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %111, i32 0, i32 11
  store i32 %110, i32* %112, align 4
  %113 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %114 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %117 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %116, i32 0, i32 10
  store i32 %115, i32* %117, align 4
  %118 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %119 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %122 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 4
  %123 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %124 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %127 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 4
  %128 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %13, align 8
  %129 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %132 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %131, i32 0, i32 7
  store i32 %130, i32* %132, align 4
  %133 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %10, align 8
  %134 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %9, align 8
  %135 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %134, i32 0, i32 0
  store %struct.qed_sge_tpa_params* %133, %struct.qed_sge_tpa_params** %135, align 8
  %136 = load i32, i32* @QED_IOV_VP_UPDATE_SGE_TPA, align 4
  %137 = shl i32 1, %136
  %138 = load i32*, i32** %12, align 8
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %137
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %28, %25
  ret void
}

declare dso_local i64 @qed_iov_search_list_tlvs(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @memset(%struct.qed_sge_tpa_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
