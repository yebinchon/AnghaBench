; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ooo.c_qed_ooo_delete_isles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ooo.c_qed_ooo_delete_isles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ooo_info = type { i32, i32, i32 }
%struct.qed_ooo_isle = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Isle %d is not found(cid %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Isle %d is empty(cid %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_ooo_delete_isles(%struct.qed_hwfn* %0, %struct.qed_ooo_info* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ooo_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.qed_ooo_isle*, align 8
  %12 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ooo_info* %1, %struct.qed_ooo_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.qed_ooo_isle* null, %struct.qed_ooo_isle** %11, align 8
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %59, %5
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %13
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %19 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call %struct.qed_ooo_isle* @qed_ooo_seek_isle(%struct.qed_hwfn* %18, %struct.qed_ooo_info* %19, i32 %20, i64 %21)
  store %struct.qed_ooo_isle* %22, %struct.qed_ooo_isle** %11, align 8
  %23 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %11, align 8
  %24 = icmp ne %struct.qed_ooo_isle* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @DP_NOTICE(%struct.qed_hwfn* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %28)
  br label %62

30:                                               ; preds = %17
  %31 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %11, align 8
  %32 = getelementptr inbounds %struct.qed_ooo_isle, %struct.qed_ooo_isle* %31, i32 0, i32 1
  %33 = call i64 @list_empty(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @DP_NOTICE(%struct.qed_hwfn* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %37, i32 %38)
  br label %46

40:                                               ; preds = %30
  %41 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %11, align 8
  %42 = getelementptr inbounds %struct.qed_ooo_isle, %struct.qed_ooo_isle* %41, i32 0, i32 1
  %43 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %7, align 8
  %44 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %43, i32 0, i32 2
  %45 = call i32 @list_splice_tail_init(i32* %42, i32* %44)
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %11, align 8
  %48 = getelementptr inbounds %struct.qed_ooo_isle, %struct.qed_ooo_isle* %47, i32 0, i32 0
  %49 = call i32 @list_del(i32* %48)
  %50 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %7, align 8
  %51 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %11, align 8
  %55 = getelementptr inbounds %struct.qed_ooo_isle, %struct.qed_ooo_isle* %54, i32 0, i32 0
  %56 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %7, align 8
  %57 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %56, i32 0, i32 0
  %58 = call i32 @list_add(i32* %55, i32* %57)
  br label %59

59:                                               ; preds = %46
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %12, align 8
  br label %13

62:                                               ; preds = %25, %13
  ret void
}

declare dso_local %struct.qed_ooo_isle* @qed_ooo_seek_isle(%struct.qed_hwfn*, %struct.qed_ooo_info*, i32, i64) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
