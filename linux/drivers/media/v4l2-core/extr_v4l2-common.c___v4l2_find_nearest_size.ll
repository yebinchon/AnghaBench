; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-common.c___v4l2_find_nearest_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-common.c___v4l2_find_nearest_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U32_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__v4l2_find_nearest_size(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %22 = load i64, i64* @U32_MAX, align 8
  store i64 %22, i64* %17, align 8
  store i8* null, i8** %18, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %7
  store i8* null, i8** %8, align 8
  br label %71

26:                                               ; preds = %7
  store i32 0, i32* %19, align 4
  br label %27

27:                                               ; preds = %63, %26
  %28 = load i32, i32* %19, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* %10, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr i8, i8* %33, i64 %34
  %36 = bitcast i8* %35 to i64*
  store i64* %36, i64** %20, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %13, align 8
  %39 = getelementptr i8, i8* %37, i64 %38
  %40 = bitcast i8* %39 to i64*
  store i64* %40, i64** %21, align 8
  %41 = load i64*, i64** %20, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %14, align 8
  %44 = sub nsw i64 %42, %43
  %45 = call i64 @abs(i64 %44)
  %46 = load i64*, i64** %21, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %15, align 8
  %49 = sub nsw i64 %47, %48
  %50 = call i64 @abs(i64 %49)
  %51 = add nsw i64 %45, %50
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %17, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %32
  br label %63

56:                                               ; preds = %32
  %57 = load i64, i64* %16, align 8
  store i64 %57, i64* %17, align 8
  %58 = load i8*, i8** %9, align 8
  store i8* %58, i8** %18, align 8
  %59 = load i64, i64* %16, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %69

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %55
  %64 = load i32, i32* %19, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %19, align 4
  %66 = load i64, i64* %11, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr i8, i8* %67, i64 %66
  store i8* %68, i8** %9, align 8
  br label %27

69:                                               ; preds = %61, %27
  %70 = load i8*, i8** %18, align 8
  store i8* %70, i8** %8, align 8
  br label %71

71:                                               ; preds = %69, %25
  %72 = load i8*, i8** %8, align 8
  ret i8* %72
}

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
