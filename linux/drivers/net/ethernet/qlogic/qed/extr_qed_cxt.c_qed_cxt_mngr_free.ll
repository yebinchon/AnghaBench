; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_mngr_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_mngr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_cxt_mngr_free(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %3 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %4 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %10 = call i32 @qed_cid_map_free(%struct.qed_hwfn* %9)
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %12 = call i32 @qed_cxt_src_t2_free(%struct.qed_hwfn* %11)
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %14 = call i32 @qed_ilt_shadow_free(%struct.qed_hwfn* %13)
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kfree(i32* %17)
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @qed_cid_map_free(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_cxt_src_t2_free(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_ilt_shadow_free(%struct.qed_hwfn*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
