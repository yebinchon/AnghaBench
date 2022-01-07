; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c___qed_ll2_handle_sanity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c___qed_ll2_handle_sanity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_ll2_info = type { i32, i64 }
%struct.qed_hwfn = type { %struct.qed_ll2_info* }

@QED_MAX_NUM_OF_LL2_CONNECTIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qed_ll2_info* (%struct.qed_hwfn*, i64, i32, i32)* @__qed_ll2_handle_sanity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qed_ll2_info* @__qed_ll2_handle_sanity(%struct.qed_hwfn* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qed_ll2_info*, align 8
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_ll2_info*, align 8
  %11 = alloca %struct.qed_ll2_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.qed_ll2_info* null, %struct.qed_ll2_info** %11, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @QED_MAX_NUM_OF_LL2_CONNECTIONS, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.qed_ll2_info* null, %struct.qed_ll2_info** %5, align 8
  br label %56

16:                                               ; preds = %4
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 0
  %19 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %18, align 8
  %20 = icmp ne %struct.qed_ll2_info* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store %struct.qed_ll2_info* null, %struct.qed_ll2_info** %5, align 8
  br label %56

22:                                               ; preds = %16
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 0
  %25 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %25, i64 %26
  store %struct.qed_ll2_info* %27, %struct.qed_ll2_info** %10, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %10, align 8
  %35 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %10, align 8
  %39 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %10, align 8
  store %struct.qed_ll2_info* %43, %struct.qed_ll2_info** %11, align 8
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %10, align 8
  %49 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %51

51:                                               ; preds = %47, %44
  br label %54

52:                                               ; preds = %22
  %53 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %10, align 8
  store %struct.qed_ll2_info* %53, %struct.qed_ll2_info** %11, align 8
  br label %54

54:                                               ; preds = %52, %51
  %55 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %11, align 8
  store %struct.qed_ll2_info* %55, %struct.qed_ll2_info** %5, align 8
  br label %56

56:                                               ; preds = %54, %21, %15
  %57 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  ret %struct.qed_ll2_info* %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
