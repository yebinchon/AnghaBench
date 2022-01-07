; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_gtt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_gtt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }

@PXP_PF_WINDOW_ADMIN_START = common dso_local global i64 0, align 8
@PXP_PF_WINDOW_ADMIN_GLOBAL_START = common dso_local global i64 0, align 8
@pxp_global_win = common dso_local global i64* null, align 8
@PXP_GLOBAL_ENTRY_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_gtt_init(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %5 = load i64, i64* @PXP_PF_WINDOW_ADMIN_START, align 8
  %6 = load i64, i64* @PXP_PF_WINDOW_ADMIN_GLOBAL_START, align 8
  %7 = add i64 %5, %6
  store i64 %7, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i64*, i64** @pxp_global_win, align 8
  %11 = call i64 @ARRAY_SIZE(i64* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = load i64*, i64** @pxp_global_win, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @PXP_GLOBAL_ENTRY_SIZE, align 8
  %24 = mul i64 %22, %23
  %25 = add i64 %21, %24
  %26 = load i64*, i64** @pxp_global_win, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @REG_WR(%struct.qed_hwfn* %20, i64 %25, i64 %29)
  br label %31

31:                                               ; preds = %19, %13
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %8

35:                                               ; preds = %8
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @REG_WR(%struct.qed_hwfn*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
