; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_establish_connection_ooo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_establish_connection_ooo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ll2_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@QED_LL2_TYPE_OOO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ll2_info*)* @qed_ll2_establish_connection_ooo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_ll2_establish_connection_ooo(%struct.qed_hwfn* %0, %struct.qed_ll2_info* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ll2_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ll2_info* %1, %struct.qed_ll2_info** %4, align 8
  %5 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %6 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QED_LL2_TYPE_OOO, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @qed_ooo_release_all_isles(%struct.qed_hwfn* %13, i32 %16)
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %19 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %20 = call i32 @qed_ooo_submit_rx_buffers(%struct.qed_hwfn* %18, %struct.qed_ll2_info* %19)
  br label %21

21:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @qed_ooo_release_all_isles(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_ooo_submit_rx_buffers(%struct.qed_hwfn*, %struct.qed_ll2_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
