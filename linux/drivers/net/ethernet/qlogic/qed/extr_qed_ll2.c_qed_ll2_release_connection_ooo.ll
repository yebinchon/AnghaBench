; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_release_connection_ooo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_release_connection_ooo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.qed_ll2_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.qed_ooo_buffer = type { i32, i32, i32 }

@QED_LL2_TYPE_OOO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ll2_info*)* @qed_ll2_release_connection_ooo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_ll2_release_connection_ooo(%struct.qed_hwfn* %0, %struct.qed_ll2_info* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ll2_info*, align 8
  %5 = alloca %struct.qed_ooo_buffer*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ll2_info* %1, %struct.qed_ll2_info** %4, align 8
  %6 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %7 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @QED_LL2_TYPE_OOO, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %45

13:                                               ; preds = %2
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @qed_ooo_release_all_isles(%struct.qed_hwfn* %14, i32 %17)
  br label %19

19:                                               ; preds = %26, %13
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %22 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.qed_ooo_buffer* @qed_ooo_get_free_buffer(%struct.qed_hwfn* %20, i32 %23)
  store %struct.qed_ooo_buffer* %24, %struct.qed_ooo_buffer** %5, align 8
  %25 = icmp ne %struct.qed_ooo_buffer* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %28 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %5, align 8
  %34 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dma_free_coherent(i32* %32, i32 %35, i32 %38, i32 %41)
  %43 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %5, align 8
  %44 = call i32 @kfree(%struct.qed_ooo_buffer* %43)
  br label %19

45:                                               ; preds = %12, %19
  ret void
}

declare dso_local i32 @qed_ooo_release_all_isles(%struct.qed_hwfn*, i32) #1

declare dso_local %struct.qed_ooo_buffer* @qed_ooo_get_free_buffer(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.qed_ooo_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
