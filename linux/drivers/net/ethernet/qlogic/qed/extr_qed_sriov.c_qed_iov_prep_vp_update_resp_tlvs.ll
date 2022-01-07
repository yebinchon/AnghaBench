; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_prep_vp_update_resp_tlvs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_prep_vp_update_resp_tlvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i32 }
%struct.qed_iov_vf_mbx = type { i32*, i64 }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CHANNEL_TLV_VPORT_UPDATE = common dso_local global i32 0, align 4
@QED_IOV_VP_UPDATE_MAX = common dso_local global i64 0, align 8
@PFVF_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"VF[%d] - vport_update response: TLV %d, status %02x\0A\00", align 1
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_iov_vf_mbx*, i32, i64, i64)* @qed_iov_prep_vp_update_resp_tlvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_iov_prep_vp_update_resp_tlvs(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1, %struct.qed_iov_vf_mbx* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_vf_info*, align 8
  %9 = alloca %struct.qed_iov_vf_mbx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %8, align 8
  store %struct.qed_iov_vf_mbx* %2, %struct.qed_iov_vf_mbx** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %18 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @memset(i64 %19, i32 0, i32 4)
  %21 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %22 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %26 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  store i64 4, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  store i64 %27, i64* %15, align 8
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %29 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %30 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %29, i32 0, i32 0
  %31 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE, align 4
  %32 = load i64, i64* %14, align 8
  %33 = trunc i64 %32 to i32
  %34 = call %struct.pfvf_def_resp_tlv* @qed_add_tlv(%struct.qed_hwfn* %28, i32** %30, i32 %31, i32 %33)
  store i64 0, i64* %16, align 8
  br label %35

35:                                               ; preds = %88, %6
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* @QED_IOV_VP_UPDATE_MAX, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %35
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %16, align 8
  %42 = call i64 @BIT(i64 %41)
  %43 = and i64 %40, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %88

46:                                               ; preds = %39
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %48 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %49 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %48, i32 0, i32 0
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %51 = load i64, i64* %16, align 8
  %52 = call i32 @qed_iov_vport_to_tlv(%struct.qed_hwfn* %50, i64 %51)
  %53 = load i64, i64* %14, align 8
  %54 = trunc i64 %53 to i32
  %55 = call %struct.pfvf_def_resp_tlv* @qed_add_tlv(%struct.qed_hwfn* %47, i32** %49, i32 %52, i32 %54)
  store %struct.pfvf_def_resp_tlv* %55, %struct.pfvf_def_resp_tlv** %13, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %16, align 8
  %58 = call i64 @BIT(i64 %57)
  %59 = and i64 %56, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %13, align 8
  %64 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  br label %71

66:                                               ; preds = %46
  %67 = load i32, i32* @PFVF_STATUS_NOT_SUPPORTED, align 4
  %68 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %13, align 8
  %69 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %73 = load i32, i32* @QED_MSG_IOV, align 4
  %74 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %75 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %78 = load i64, i64* %16, align 8
  %79 = call i32 @qed_iov_vport_to_tlv(%struct.qed_hwfn* %77, i64 %78)
  %80 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %13, align 8
  %81 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %72, i32 %73, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79, i32 %83)
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %15, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %15, align 8
  br label %88

88:                                               ; preds = %71, %45
  %89 = load i64, i64* %16, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %16, align 8
  br label %35

91:                                               ; preds = %35
  %92 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %93 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %94 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %93, i32 0, i32 0
  %95 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %96 = call %struct.pfvf_def_resp_tlv* @qed_add_tlv(%struct.qed_hwfn* %92, i32** %94, i32 %95, i32 4)
  %97 = load i64, i64* %15, align 8
  ret i64 %97
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local %struct.pfvf_def_resp_tlv* @qed_add_tlv(%struct.qed_hwfn*, i32**, i32, i32) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @qed_iov_vport_to_tlv(%struct.qed_hwfn*, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
