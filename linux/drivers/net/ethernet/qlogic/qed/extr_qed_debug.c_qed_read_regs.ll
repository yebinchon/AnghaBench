; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_read_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_read_regs(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %27, %5
  %13 = load i64, i64* %11, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %18 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %11, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @DWORDS_TO_BYTES(i64 %21)
  %23 = call i64 @qed_rd(%struct.qed_hwfn* %17, %struct.qed_ptt* %18, i32 %22)
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %16
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %11, align 8
  br label %12

30:                                               ; preds = %12
  ret void
}

declare dso_local i64 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @DWORDS_TO_BYTES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
