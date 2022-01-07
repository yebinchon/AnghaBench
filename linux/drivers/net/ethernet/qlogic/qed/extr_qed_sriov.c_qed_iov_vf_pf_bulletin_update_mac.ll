; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_pf_bulletin_update_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_pf_bulletin_update_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i32, %struct.TYPE_4__, %struct.qed_iov_vf_mbx, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.qed_iov_vf_mbx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.vfpf_bulletin_update_mac_tlv }
%struct.vfpf_bulletin_update_mac_tlv = type { i32 }
%struct.TYPE_6__ = type { %struct.qed_bulletin_content* }
%struct.qed_bulletin_content = type { i32 }

@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Blocking bulletin update request from untrusted VF[%d]\0A\00", align 1
@PFVF_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Updated bulletin of VF[%d] with requested MAC[%pM]\0A\00", align 1
@CHANNEL_TLV_BULLETIN_UPDATE_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*)* @qed_iov_vf_pf_bulletin_update_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_vf_pf_bulletin_update_mac(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca %struct.qed_bulletin_content*, align 8
  %8 = alloca %struct.qed_iov_vf_mbx*, align 8
  %9 = alloca %struct.vfpf_bulletin_update_mac_tlv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %6, align 8
  %12 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %13 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %14, align 8
  store %struct.qed_bulletin_content* %15, %struct.qed_bulletin_content** %7, align 8
  %16 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %17 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %16, i32 0, i32 2
  store %struct.qed_iov_vf_mbx* %17, %struct.qed_iov_vf_mbx** %8, align 8
  %18 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %20 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %3
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %26 = load i32, i32* @QED_MSG_IOV, align 4
  %27 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %28 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %25, i32 %26, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @PFVF_STATUS_NOT_SUPPORTED, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %55

34:                                               ; preds = %3
  %35 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %8, align 8
  %36 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store %struct.vfpf_bulletin_update_mac_tlv* %38, %struct.vfpf_bulletin_update_mac_tlv** %9, align 8
  %39 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %7, align 8
  %40 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vfpf_bulletin_update_mac_tlv*, %struct.vfpf_bulletin_update_mac_tlv** %9, align 8
  %43 = getelementptr inbounds %struct.vfpf_bulletin_update_mac_tlv, %struct.vfpf_bulletin_update_mac_tlv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ether_addr_copy(i32 %41, i32 %44)
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %47 = load i32, i32* @QED_MSG_IOV, align 4
  %48 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %49 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.vfpf_bulletin_update_mac_tlv*, %struct.vfpf_bulletin_update_mac_tlv** %9, align 8
  %52 = getelementptr inbounds %struct.vfpf_bulletin_update_mac_tlv, %struct.vfpf_bulletin_update_mac_tlv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %46, i32 %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %34, %24
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %57 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %58 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %59 = load i32, i32* @CHANNEL_TLV_BULLETIN_UPDATE_MAC, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @qed_iov_prepare_resp(%struct.qed_hwfn* %56, %struct.qed_ptt* %57, %struct.qed_vf_info* %58, i32 %59, i32 4, i32 %60)
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @qed_iov_prepare_resp(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
