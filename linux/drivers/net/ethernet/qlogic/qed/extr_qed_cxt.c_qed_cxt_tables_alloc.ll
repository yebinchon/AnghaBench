; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_tables_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_tables_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_cxt_tables_alloc(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %5 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %6 = call i32 @qed_ilt_shadow_alloc(%struct.qed_hwfn* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %12 = call i32 @qed_cxt_src_t2_alloc(%struct.qed_hwfn* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %23

16:                                               ; preds = %10
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %18 = call i32 @qed_cid_map_alloc(%struct.qed_hwfn* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %27

23:                                               ; preds = %21, %15, %9
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %25 = call i32 @qed_cxt_mngr_free(%struct.qed_hwfn* %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %22
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @qed_ilt_shadow_alloc(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_cxt_src_t2_alloc(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_cid_map_alloc(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_cxt_mngr_free(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
