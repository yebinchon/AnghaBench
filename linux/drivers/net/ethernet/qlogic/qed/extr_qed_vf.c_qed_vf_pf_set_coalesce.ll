; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_8__*, %struct.qed_vf_iov* }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.qed_vf_iov = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.qed_queue_cid = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vfpf_update_coalesce = type { i32, i8*, i8* }

@CHANNEL_TLV_COALESCE_UPDATE = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Setting coalesce rx_coal = %d, tx_coal = %d at queue = %d\0A\00", align 1
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_vf_pf_set_coalesce(%struct.qed_hwfn* %0, i8* %1, i8* %2, %struct.qed_queue_cid* %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qed_queue_cid*, align 8
  %9 = alloca %struct.qed_vf_iov*, align 8
  %10 = alloca %struct.vfpf_update_coalesce*, align 8
  %11 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.qed_queue_cid* %3, %struct.qed_queue_cid** %8, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 1
  %15 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %14, align 8
  store %struct.qed_vf_iov* %15, %struct.qed_vf_iov** %9, align 8
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %17 = load i32, i32* @CHANNEL_TLV_COALESCE_UPDATE, align 4
  %18 = call %struct.vfpf_update_coalesce* @qed_vf_pf_prep(%struct.qed_hwfn* %16, i32 %17, i32 24)
  store %struct.vfpf_update_coalesce* %18, %struct.vfpf_update_coalesce** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.vfpf_update_coalesce*, %struct.vfpf_update_coalesce** %10, align 8
  %21 = getelementptr inbounds %struct.vfpf_update_coalesce, %struct.vfpf_update_coalesce* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.vfpf_update_coalesce*, %struct.vfpf_update_coalesce** %10, align 8
  %24 = getelementptr inbounds %struct.vfpf_update_coalesce, %struct.vfpf_update_coalesce* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %26 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vfpf_update_coalesce*, %struct.vfpf_update_coalesce** %10, align 8
  %30 = getelementptr inbounds %struct.vfpf_update_coalesce, %struct.vfpf_update_coalesce* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %32 = load i32, i32* @QED_MSG_IOV, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.vfpf_update_coalesce*, %struct.vfpf_update_coalesce** %10, align 8
  %36 = getelementptr inbounds %struct.vfpf_update_coalesce, %struct.vfpf_update_coalesce* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %31, i32 %32, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34, i32 %37)
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %40 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %9, align 8
  %41 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %40, i32 0, i32 1
  %42 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %43 = call i32 @qed_add_tlv(%struct.qed_hwfn* %39, i32* %41, i32 %42, i32 4)
  %44 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %9, align 8
  %45 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %47, %struct.pfvf_def_resp_tlv** %11, align 8
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %49 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %11, align 8
  %50 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = call i32 @qed_send_msg2pf(%struct.qed_hwfn* %48, i64* %51, i32 8)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %4
  br label %83

56:                                               ; preds = %4
  %57 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %11, align 8
  %58 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %83

64:                                               ; preds = %56
  %65 = load i8*, i8** %6, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %70 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i8* %68, i8** %72, align 8
  br label %73

73:                                               ; preds = %67, %64
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %79 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i8* %77, i8** %81, align 8
  br label %82

82:                                               ; preds = %76, %73
  br label %83

83:                                               ; preds = %82, %63, %55
  %84 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @qed_vf_pf_req_end(%struct.qed_hwfn* %84, i32 %85)
  %87 = load i32, i32* %12, align 4
  ret i32 %87
}

declare dso_local %struct.vfpf_update_coalesce* @qed_vf_pf_prep(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @qed_add_tlv(%struct.qed_hwfn*, i32*, i32, i32) #1

declare dso_local i32 @qed_send_msg2pf(%struct.qed_hwfn*, i64*, i32) #1

declare dso_local i32 @qed_vf_pf_req_end(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
