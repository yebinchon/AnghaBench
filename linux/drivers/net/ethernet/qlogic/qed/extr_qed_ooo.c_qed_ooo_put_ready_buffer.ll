; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ooo.c_qed_ooo_put_ready_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ooo.c_qed_ooo_put_ready_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ooo_info = type { i32 }
%struct.qed_ooo_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_ooo_put_ready_buffer(%struct.qed_hwfn* %0, %struct.qed_ooo_info* %1, %struct.qed_ooo_buffer* %2, i64 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ooo_info*, align 8
  %7 = alloca %struct.qed_ooo_buffer*, align 8
  %8 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ooo_info* %1, %struct.qed_ooo_info** %6, align 8
  store %struct.qed_ooo_buffer* %2, %struct.qed_ooo_buffer** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %12, i32 0, i32 0
  %14 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %15 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %14, i32 0, i32 0
  %16 = call i32 @list_add_tail(i32* %13, i32* %15)
  br label %23

17:                                               ; preds = %4
  %18 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %18, i32 0, i32 0
  %20 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %21 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %20, i32 0, i32 0
  %22 = call i32 @list_add(i32* %19, i32* %21)
  br label %23

23:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
