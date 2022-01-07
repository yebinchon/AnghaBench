; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_filter_ucast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_filter_ucast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_vf_iov* }
%struct.qed_vf_iov = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.qed_filter_ucast = type { i32, i32, i64, i64 }
%struct.vfpf_ucast_filter_tlv = type { i32, i32, i8*, i8* }

@CHANNEL_TLV_UCAST_FILTER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_vf_pf_filter_ucast(%struct.qed_hwfn* %0, %struct.qed_filter_ucast* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_filter_ucast*, align 8
  %5 = alloca %struct.qed_vf_iov*, align 8
  %6 = alloca %struct.vfpf_ucast_filter_tlv*, align 8
  %7 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_filter_ucast* %1, %struct.qed_filter_ucast** %4, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  %11 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %10, align 8
  store %struct.qed_vf_iov* %11, %struct.qed_vf_iov** %5, align 8
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %13 = load i32, i32* @CHANNEL_TLV_UCAST_FILTER, align 4
  %14 = call %struct.vfpf_ucast_filter_tlv* @qed_vf_pf_prep(%struct.qed_hwfn* %12, i32 %13, i32 24)
  store %struct.vfpf_ucast_filter_tlv* %14, %struct.vfpf_ucast_filter_tlv** %6, align 8
  %15 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %4, align 8
  %16 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.vfpf_ucast_filter_tlv*, %struct.vfpf_ucast_filter_tlv** %6, align 8
  %20 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, %struct.vfpf_ucast_filter_tlv* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %4, align 8
  %22 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.vfpf_ucast_filter_tlv*, %struct.vfpf_ucast_filter_tlv** %6, align 8
  %26 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, %struct.vfpf_ucast_filter_tlv* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.vfpf_ucast_filter_tlv*, %struct.vfpf_ucast_filter_tlv** %6, align 8
  %28 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, %struct.vfpf_ucast_filter_tlv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %4, align 8
  %31 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @memcpy(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %4, align 8
  %36 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.vfpf_ucast_filter_tlv*, %struct.vfpf_ucast_filter_tlv** %6, align 8
  %39 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, %struct.vfpf_ucast_filter_tlv* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %41 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %5, align 8
  %42 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %41, i32 0, i32 1
  %43 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %44 = call i32 @qed_add_tlv(%struct.qed_hwfn* %40, i32* %42, i32 %43, i32 4)
  %45 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %5, align 8
  %46 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %48, %struct.pfvf_def_resp_tlv** %7, align 8
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %50 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %7, align 8
  %51 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @qed_send_msg2pf(%struct.qed_hwfn* %49, i64* %52, i32 8)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %2
  br label %68

57:                                               ; preds = %2
  %58 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %7, align 8
  %59 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %68

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %64, %56
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @qed_vf_pf_req_end(%struct.qed_hwfn* %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local %struct.vfpf_ucast_filter_tlv* @qed_vf_pf_prep(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @qed_add_tlv(%struct.qed_hwfn*, i32*, i32, i32) #1

declare dso_local i32 @qed_send_msg2pf(%struct.qed_hwfn*, i64*, i32) #1

declare dso_local i32 @qed_vf_pf_req_end(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
