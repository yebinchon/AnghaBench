; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_free_vf_igu_sbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_free_vf_igu_sbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.qed_igu_info* }
%struct.qed_igu_info = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i32, i32* }

@IGU_REG_MAPPING_MEMORY = common dso_local global i64 0, align 8
@IGU_MAPPING_LINE_VALID = common dso_local global i32 0, align 4
@QED_IGU_STATUS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*)* @qed_iov_free_vf_igu_sbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_free_vf_igu_sbs(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca %struct.qed_igu_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %6, align 8
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.qed_igu_info*, %struct.qed_igu_info** %14, align 8
  store %struct.qed_igu_info* %15, %struct.qed_igu_info** %7, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %65, %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %19 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %16
  %23 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %24 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* @IGU_REG_MAPPING_MEMORY, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = add i64 %30, %33
  store i64 %34, i64* %10, align 8
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %36 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @qed_rd(%struct.qed_hwfn* %35, %struct.qed_ptt* %36, i64 %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* @IGU_MAPPING_LINE_VALID, align 4
  %41 = call i32 @SET_FIELD(i64 %39, i32 %40, i32 0)
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %43 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @qed_wr(%struct.qed_hwfn* %42, %struct.qed_ptt* %43, i64 %44, i64 %45)
  %47 = load i32, i32* @QED_IGU_STATUS_FREE, align 4
  %48 = load %struct.qed_igu_info*, %struct.qed_igu_info** %7, align 8
  %49 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %47
  store i32 %56, i32* %54, align 4
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %58 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.qed_igu_info*, %struct.qed_igu_info** %59, align 8
  %61 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %22
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %16

68:                                               ; preds = %16
  %69 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %70 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  ret void
}

declare dso_local i64 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i64) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
