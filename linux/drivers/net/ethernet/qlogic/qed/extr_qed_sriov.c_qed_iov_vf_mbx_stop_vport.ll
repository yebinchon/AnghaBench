; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_stop_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_stop_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"VF [%02x] - considered malicious; Unable to stop RX/TX queues\0A\00", align 1
@PFVF_STATUS_MALICIOUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"qed_iov_vf_mbx_stop_vport returned error %d\0A\00", align 1
@PFVF_STATUS_FAILURE = common dso_local global i32 0, align 4
@CHANNEL_TLV_VPORT_TEARDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*)* @qed_iov_vf_mbx_stop_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vf_mbx_stop_vport(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %6, align 8
  %9 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %11 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %15 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %17 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %18 = call i64 @qed_iov_validate_active_rxq(%struct.qed_hwfn* %16, %struct.qed_vf_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %22 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %23 = call i64 @qed_iov_validate_active_txq(%struct.qed_hwfn* %21, %struct.qed_vf_info* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20, %3
  %26 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %27 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %29 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %30 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @DP_NOTICE(%struct.qed_hwfn* %28, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @PFVF_STATUS_MALICIOUS, align 4
  store i32 %33, i32* %7, align 4
  br label %56

34:                                               ; preds = %20
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %36 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %37 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %40 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @qed_sp_vport_stop(%struct.qed_hwfn* %35, i32 %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @DP_ERR(%struct.qed_hwfn* %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %45, %34
  %51 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %52 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %54 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %53, i32 0, i32 2
  %55 = call i32 @memset(i32* %54, i32 0, i32 4)
  br label %56

56:                                               ; preds = %50, %25
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %58 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %59 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %60 = load i32, i32* @CHANNEL_TLV_VPORT_TEARDOWN, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @qed_iov_prepare_resp(%struct.qed_hwfn* %57, %struct.qed_ptt* %58, %struct.qed_vf_info* %59, i32 %60, i32 4, i32 %61)
  ret void
}

declare dso_local i64 @qed_iov_validate_active_rxq(%struct.qed_hwfn*, %struct.qed_vf_info*) #1

declare dso_local i64 @qed_iov_validate_active_txq(%struct.qed_hwfn*, %struct.qed_vf_info*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_sp_vport_stop(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qed_iov_prepare_resp(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
