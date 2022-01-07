; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_igu_set_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_igu_set_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i64 }

@IGU_REG_VF_CONFIGURATION = common dso_local global i32 0, align 4
@IGU_VF_CONF_MSI_MSIX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i32)* @qed_iov_vf_igu_set_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vf_igu_set_int(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca %struct.qed_vf_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %11 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %12 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %13 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %10, %struct.qed_ptt* %11, i32 %15)
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %18 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %19 = load i32, i32* @IGU_REG_VF_CONFIGURATION, align 4
  %20 = call i32 @qed_rd(%struct.qed_hwfn* %17, %struct.qed_ptt* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @IGU_VF_CONF_MSI_MSIX_EN, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %32

27:                                               ; preds = %4
  %28 = load i32, i32* @IGU_VF_CONF_MSI_MSIX_EN, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %35 = load i32, i32* @IGU_REG_VF_CONFIGURATION, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @qed_wr(%struct.qed_hwfn* %33, %struct.qed_ptt* %34, i32 %35, i32 %36)
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %39 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %41 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %38, %struct.qed_ptt* %39, i32 %44)
  ret void
}

declare dso_local i32 @qed_fid_pretend(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
