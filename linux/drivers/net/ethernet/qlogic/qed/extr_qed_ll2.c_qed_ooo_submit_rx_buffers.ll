; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ooo_submit_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ooo_submit_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ll2_info = type { i32 }
%struct.qed_ooo_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ll2_info*)* @qed_ooo_submit_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_ooo_submit_rx_buffers(%struct.qed_hwfn* %0, %struct.qed_ll2_info* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ll2_info*, align 8
  %5 = alloca %struct.qed_ooo_buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ll2_info* %1, %struct.qed_ll2_info** %4, align 8
  br label %7

7:                                                ; preds = %33, %2
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.qed_ooo_buffer* @qed_ooo_get_free_buffer(%struct.qed_hwfn* %8, i32 %11)
  store %struct.qed_ooo_buffer* %12, %struct.qed_ooo_buffer** %5, align 8
  %13 = icmp ne %struct.qed_ooo_buffer* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %7
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %16 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %17 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %5, align 8
  %23 = call i32 @qed_ll2_post_rx_buffer(%struct.qed_hwfn* %15, i32 %18, i32 %21, i32 0, %struct.qed_ooo_buffer* %22, i32 1)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %14
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %29 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %5, align 8
  %32 = call i32 @qed_ooo_put_free_buffer(%struct.qed_hwfn* %27, i32 %30, %struct.qed_ooo_buffer* %31)
  br label %34

33:                                               ; preds = %14
  br label %7

34:                                               ; preds = %26, %7
  ret void
}

declare dso_local %struct.qed_ooo_buffer* @qed_ooo_get_free_buffer(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_ll2_post_rx_buffer(%struct.qed_hwfn*, i32, i32, i32, %struct.qed_ooo_buffer*, i32) #1

declare dso_local i32 @qed_ooo_put_free_buffer(%struct.qed_hwfn*, i32, %struct.qed_ooo_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
