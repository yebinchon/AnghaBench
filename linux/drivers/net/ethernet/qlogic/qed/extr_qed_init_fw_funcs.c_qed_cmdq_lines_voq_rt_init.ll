; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_cmdq_lines_voq_rt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_cmdq_lines_voq_rt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }

@QM_REG_VOQCRDLINE_RT_OFFSET = common dso_local global i64 0, align 8
@QM_REG_VOQINITCRDLINE_RT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, i64, i64)* @qed_cmdq_lines_voq_rt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_cmdq_lines_voq_rt_init(%struct.qed_hwfn* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @QM_VOQ_LINE_CRD(i64 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @PBF_CMDQ_LINES_RT_OFFSET(i64 %11)
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @OVERWRITE_RT_REG(%struct.qed_hwfn* %10, i32 %12, i32 %14)
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %17 = load i64, i64* @QM_REG_VOQCRDLINE_RT_OFFSET, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %16, i64 %19, i32 %20)
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %23 = load i64, i64* @QM_REG_VOQINITCRDLINE_RT_OFFSET, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %22, i64 %25, i32 %26)
  ret void
}

declare dso_local i32 @QM_VOQ_LINE_CRD(i64) #1

declare dso_local i32 @OVERWRITE_RT_REG(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @PBF_CMDQ_LINES_RT_OFFSET(i64) #1

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
