; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_stackleak.c_lkdtm_STACKLEAK_ERASING.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_stackleak.c_lkdtm_STACKLEAK_ERASING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STACKLEAK_SEARCH_DEPTH = common dso_local global i32 0, align 4
@THREAD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"FAIL: not enough stack space for the test\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"checking unused part of the thread stack (%lu bytes)...\0A\00", align 1
@STACKLEAK_POISON = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"FAIL: thread stack is not erased (checked %lu bytes)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"first %lu bytes are unpoisoned\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"FAIL: thread stack is NOT properly erased\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"OK: the rest of the thread stack is properly erased\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_STACKLEAK_ERASING() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @STACKLEAK_SEARCH_DEPTH, align 4
  %7 = sext i32 %6 to i64
  %8 = udiv i64 %7, 8
  store i64 %8, i64* %5, align 8
  %9 = call i64* @PTR_ALIGN(i64* %4, i32 8)
  store i64* %9, i64** %1, align 8
  %10 = load i64*, i64** %1, align 8
  %11 = ptrtoint i64* %10 to i64
  %12 = load i32, i32* @THREAD_SIZE, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = and i64 %11, %14
  %16 = udiv i64 %15, 8
  store i64 %16, i64* %2, align 8
  %17 = load i64*, i64** %1, align 8
  %18 = getelementptr inbounds i64, i64* %17, i32 -1
  store i64* %18, i64** %1, align 8
  %19 = load i64, i64* %2, align 8
  %20 = icmp ugt i64 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = load i64, i64* %2, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %2, align 8
  br label %26

24:                                               ; preds = %0
  %25 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %90

26:                                               ; preds = %21
  %27 = load i64, i64* %2, align 8
  %28 = mul i64 %27, 8
  %29 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %30

30:                                               ; preds = %53, %26
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %2, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ule i64 %35, %36
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %56

40:                                               ; preds = %38
  %41 = load i64*, i64** %1, align 8
  %42 = load i64, i64* %4, align 8
  %43 = sub i64 0, %42
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @STACKLEAK_POISON, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %3, align 8
  br label %52

51:                                               ; preds = %40
  store i64 0, i64* %3, align 8
  br label %52

52:                                               ; preds = %51, %48
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  br label %30

56:                                               ; preds = %38
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i64, i64* %4, align 8
  %62 = mul i64 %61, 8
  %63 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  br label %90

64:                                               ; preds = %56
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* %3, align 8
  %67 = sub i64 %65, %66
  %68 = mul i64 %67, 8
  %69 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %85, %64
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* %2, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load i64*, i64** %1, align 8
  %76 = load i64, i64* %4, align 8
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @STACKLEAK_POISON, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %90

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %4, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %4, align 8
  br label %70

88:                                               ; preds = %70
  %89 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %82, %60, %24
  ret void
}

declare dso_local i64* @PTR_ALIGN(i64*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
