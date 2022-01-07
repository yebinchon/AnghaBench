; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_vport_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_vport_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_vf_iov* }
%struct.qed_vf_iov = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CHANNEL_TLV_VPORT_TEARDOWN = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_vf_pf_vport_stop(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_vf_iov*, align 8
  %4 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %5 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %7 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %6, i32 0, i32 0
  %8 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %7, align 8
  store %struct.qed_vf_iov* %8, %struct.qed_vf_iov** %3, align 8
  %9 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %10 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %12, %struct.pfvf_def_resp_tlv** %4, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %14 = load i32, i32* @CHANNEL_TLV_VPORT_TEARDOWN, align 4
  %15 = call i32 @qed_vf_pf_prep(%struct.qed_hwfn* %13, i32 %14, i32 4)
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %17 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %18 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %17, i32 0, i32 0
  %19 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %20 = call i32 @qed_add_tlv(%struct.qed_hwfn* %16, i32* %18, i32 %19, i32 4)
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %22 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %4, align 8
  %23 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @qed_send_msg2pf(%struct.qed_hwfn* %21, i64* %24, i32 8)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %40

29:                                               ; preds = %1
  %30 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %4, align 8
  %31 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %36, %28
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @qed_vf_pf_req_end(%struct.qed_hwfn* %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @qed_vf_pf_prep(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_add_tlv(%struct.qed_hwfn*, i32*, i32, i32) #1

declare dso_local i32 @qed_send_msg2pf(%struct.qed_hwfn*, i64*, i32) #1

declare dso_local i32 @qed_vf_pf_req_end(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
