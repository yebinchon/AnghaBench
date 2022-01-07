; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ooo.c_qed_ooo_add_new_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ooo.c_qed_ooo_add_new_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ooo_info = type { i32 }
%struct.qed_ooo_buffer = type { i32 }
%struct.qed_ooo_isle = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Isle %d is not found(cid %d)\0A\00", align 1
@QED_OOO_LEFT_BUF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_ooo_add_new_buffer(%struct.qed_hwfn* %0, %struct.qed_ooo_info* %1, i32 %2, i64 %3, %struct.qed_ooo_buffer* %4, i64 %5) #0 {
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ooo_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.qed_ooo_buffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.qed_ooo_isle*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ooo_info* %1, %struct.qed_ooo_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.qed_ooo_buffer* %4, %struct.qed_ooo_buffer** %11, align 8
  store i64 %5, i64* %12, align 8
  store %struct.qed_ooo_isle* null, %struct.qed_ooo_isle** %13, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %15 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i64, i64* %10, align 8
  %18 = call %struct.qed_ooo_isle* @qed_ooo_seek_isle(%struct.qed_hwfn* %14, %struct.qed_ooo_info* %15, i32 %16, i64 %17)
  store %struct.qed_ooo_isle* %18, %struct.qed_ooo_isle** %13, align 8
  %19 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %13, align 8
  %20 = icmp ne %struct.qed_ooo_isle* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %6
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @DP_NOTICE(%struct.qed_hwfn* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24)
  br label %42

26:                                               ; preds = %6
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @QED_OOO_LEFT_BUF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %11, align 8
  %32 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %31, i32 0, i32 0
  %33 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %13, align 8
  %34 = getelementptr inbounds %struct.qed_ooo_isle, %struct.qed_ooo_isle* %33, i32 0, i32 0
  %35 = call i32 @list_add(i32* %32, i32* %34)
  br label %42

36:                                               ; preds = %26
  %37 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %11, align 8
  %38 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %37, i32 0, i32 0
  %39 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %13, align 8
  %40 = getelementptr inbounds %struct.qed_ooo_isle, %struct.qed_ooo_isle* %39, i32 0, i32 0
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  br label %42

42:                                               ; preds = %21, %36, %30
  ret void
}

declare dso_local %struct.qed_ooo_isle* @qed_ooo_seek_isle(%struct.qed_hwfn*, %struct.qed_ooo_info*, i32, i64) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
