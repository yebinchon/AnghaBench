; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ooo.c_qed_ooo_join_isles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ooo.c_qed_ooo_join_isles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ooo_info = type { i32, i32, i32 }
%struct.qed_ooo_isle = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Right isle %d is not found(cid %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Left isle %d is not found(cid %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_ooo_join_isles(%struct.qed_hwfn* %0, %struct.qed_ooo_info* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ooo_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.qed_ooo_isle*, align 8
  %10 = alloca %struct.qed_ooo_isle*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ooo_info* %1, %struct.qed_ooo_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store %struct.qed_ooo_isle* null, %struct.qed_ooo_isle** %9, align 8
  store %struct.qed_ooo_isle* null, %struct.qed_ooo_isle** %10, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %12 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i64, i64* %8, align 8
  %15 = add nsw i64 %14, 1
  %16 = call %struct.qed_ooo_isle* @qed_ooo_seek_isle(%struct.qed_hwfn* %11, %struct.qed_ooo_info* %12, i32 %13, i64 %15)
  store %struct.qed_ooo_isle* %16, %struct.qed_ooo_isle** %9, align 8
  %17 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %9, align 8
  %18 = icmp ne %struct.qed_ooo_isle* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %21, 1
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @DP_NOTICE(%struct.qed_hwfn* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %23)
  br label %66

25:                                               ; preds = %4
  %26 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %9, align 8
  %27 = getelementptr inbounds %struct.qed_ooo_isle, %struct.qed_ooo_isle* %26, i32 0, i32 0
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %30 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %25
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %37 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call %struct.qed_ooo_isle* @qed_ooo_seek_isle(%struct.qed_hwfn* %36, %struct.qed_ooo_info* %37, i32 %38, i64 %39)
  store %struct.qed_ooo_isle* %40, %struct.qed_ooo_isle** %10, align 8
  %41 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %10, align 8
  %42 = icmp ne %struct.qed_ooo_isle* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @DP_NOTICE(%struct.qed_hwfn* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %45, i32 %46)
  br label %66

48:                                               ; preds = %35
  %49 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %9, align 8
  %50 = getelementptr inbounds %struct.qed_ooo_isle, %struct.qed_ooo_isle* %49, i32 0, i32 1
  %51 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %10, align 8
  %52 = getelementptr inbounds %struct.qed_ooo_isle, %struct.qed_ooo_isle* %51, i32 0, i32 1
  %53 = call i32 @list_splice_tail_init(i32* %50, i32* %52)
  br label %60

54:                                               ; preds = %25
  %55 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %9, align 8
  %56 = getelementptr inbounds %struct.qed_ooo_isle, %struct.qed_ooo_isle* %55, i32 0, i32 1
  %57 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %58 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %57, i32 0, i32 1
  %59 = call i32 @list_splice_tail_init(i32* %56, i32* %58)
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.qed_ooo_isle*, %struct.qed_ooo_isle** %9, align 8
  %62 = getelementptr inbounds %struct.qed_ooo_isle, %struct.qed_ooo_isle* %61, i32 0, i32 0
  %63 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %64 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %63, i32 0, i32 0
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  br label %66

66:                                               ; preds = %60, %43, %19
  ret void
}

declare dso_local %struct.qed_ooo_isle* @qed_ooo_seek_isle(%struct.qed_hwfn*, %struct.qed_ooo_info*, i32, i64) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
