; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i64, %struct.qed_vf_iov* }
%struct.qed_vf_iov = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vfpf_first_tlv = type { i32 }

@CHANNEL_TLV_CLOSE = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_vf_pf_reset(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_vf_iov*, align 8
  %4 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %5 = alloca %struct.vfpf_first_tlv*, align 8
  %6 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %8 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %7, i32 0, i32 1
  %9 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %8, align 8
  store %struct.qed_vf_iov* %9, %struct.qed_vf_iov** %3, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %11 = load i32, i32* @CHANNEL_TLV_CLOSE, align 4
  %12 = call %struct.vfpf_first_tlv* @qed_vf_pf_prep(%struct.qed_hwfn* %10, i32 %11, i32 4)
  store %struct.vfpf_first_tlv* %12, %struct.vfpf_first_tlv** %5, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %14 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %15 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %14, i32 0, i32 1
  %16 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %17 = call i32 @qed_add_tlv(%struct.qed_hwfn* %13, i32* %15, i32 %16, i32 4)
  %18 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %19 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %21, %struct.pfvf_def_resp_tlv** %4, align 8
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %23 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %4, align 8
  %24 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @qed_send_msg2pf(%struct.qed_hwfn* %22, i64* %25, i32 8)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %43

30:                                               ; preds = %1
  %31 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %4, align 8
  %32 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %42 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %37, %29
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @qed_vf_pf_req_end(%struct.qed_hwfn* %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.vfpf_first_tlv* @qed_vf_pf_prep(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_add_tlv(%struct.qed_hwfn*, i32*, i32, i32) #1

declare dso_local i32 @qed_send_msg2pf(%struct.qed_hwfn*, i64*, i32) #1

declare dso_local i32 @qed_vf_pf_req_end(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
