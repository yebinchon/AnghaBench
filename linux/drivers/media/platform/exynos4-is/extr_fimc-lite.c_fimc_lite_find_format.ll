; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_fmt = type { i32, i64, i64 }

@fimc_lite_formats = common dso_local global %struct.fimc_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fimc_fmt* (i64*, i64*, i32, i32)* @fimc_lite_find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fimc_fmt* @fimc_lite_find_format(i64* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fimc_fmt*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fimc_fmt*, align 8
  %11 = alloca %struct.fimc_fmt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.fimc_fmt* null, %struct.fimc_fmt** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.fimc_fmt*, %struct.fimc_fmt** @fimc_lite_formats, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.fimc_fmt* %15)
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.fimc_fmt* null, %struct.fimc_fmt** %5, align 8
  br label %78

19:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %73, %19
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.fimc_fmt*, %struct.fimc_fmt** @fimc_lite_formats, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.fimc_fmt* %22)
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %20
  %26 = load %struct.fimc_fmt*, %struct.fimc_fmt** @fimc_lite_formats, align 8
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %26, i64 %28
  store %struct.fimc_fmt* %29, %struct.fimc_fmt** %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %34 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %73

40:                                               ; preds = %32, %25
  %41 = load i64*, i64** %6, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %45 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  store %struct.fimc_fmt* %51, %struct.fimc_fmt** %5, align 8
  br label %78

52:                                               ; preds = %43, %40
  %53 = load i64*, i64** %7, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %57 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  store %struct.fimc_fmt* %63, %struct.fimc_fmt** %5, align 8
  br label %78

64:                                               ; preds = %55, %52
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  store %struct.fimc_fmt* %69, %struct.fimc_fmt** %11, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %70, %39
  %74 = load i32, i32* %12, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %20

76:                                               ; preds = %20
  %77 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  store %struct.fimc_fmt* %77, %struct.fimc_fmt** %5, align 8
  br label %78

78:                                               ; preds = %76, %62, %50, %18
  %79 = load %struct.fimc_fmt*, %struct.fimc_fmt** %5, align 8
  ret %struct.fimc_fmt* %79
}

declare dso_local i32 @ARRAY_SIZE(%struct.fimc_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
