; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_igu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_igu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i32, i32, i32*, i64 }

@IGU_REG_STATISTIC_NUM_VF_MSG_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*)* @qed_iov_vf_igu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vf_igu_reset(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %6, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %9 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %10 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %11 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %8, %struct.qed_ptt* %9, i32 %13)
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %17 = load i32, i32* @IGU_REG_STATISTIC_NUM_VF_MSG_SENT, align 4
  %18 = call i32 @qed_wr(%struct.qed_hwfn* %15, %struct.qed_ptt* %16, i32 %17, i32 0)
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %20 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %22 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %19, %struct.qed_ptt* %20, i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %47, %3
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %30 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %35 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %36 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %37 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %44 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @qed_int_igu_init_pure_rt_single(%struct.qed_hwfn* %34, %struct.qed_ptt* %35, i32 %42, i32 %45, i32 1)
  br label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %27

50:                                               ; preds = %27
  ret void
}

declare dso_local i32 @qed_fid_pretend(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_int_igu_init_pure_rt_single(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
