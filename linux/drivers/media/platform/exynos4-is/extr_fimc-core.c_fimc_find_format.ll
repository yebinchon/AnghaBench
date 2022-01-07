; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_fmt = type { i32, i64, i64 }

@fimc_formats = common dso_local global %struct.fimc_fmt* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fimc_fmt* @fimc_find_format(i64* %0, i64* %1, i32 %2, i32 %3) #0 {
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
  %15 = load %struct.fimc_fmt*, %struct.fimc_fmt** @fimc_formats, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.fimc_fmt* %15)
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.fimc_fmt* null, %struct.fimc_fmt** %5, align 8
  br label %75

19:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %70, %19
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.fimc_fmt*, %struct.fimc_fmt** @fimc_formats, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.fimc_fmt* %22)
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %73

25:                                               ; preds = %20
  %26 = load %struct.fimc_fmt*, %struct.fimc_fmt** @fimc_formats, align 8
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %26, i64 %28
  store %struct.fimc_fmt* %29, %struct.fimc_fmt** %10, align 8
  %30 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %31 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  br label %70

37:                                               ; preds = %25
  %38 = load i64*, i64** %6, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %42 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  store %struct.fimc_fmt* %48, %struct.fimc_fmt** %5, align 8
  br label %75

49:                                               ; preds = %40, %37
  %50 = load i64*, i64** %7, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %54 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  store %struct.fimc_fmt* %60, %struct.fimc_fmt** %5, align 8
  br label %75

61:                                               ; preds = %52, %49
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  store %struct.fimc_fmt* %66, %struct.fimc_fmt** %11, align 8
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %67, %36
  %71 = load i32, i32* %12, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %20

73:                                               ; preds = %20
  %74 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  store %struct.fimc_fmt* %74, %struct.fimc_fmt** %5, align 8
  br label %75

75:                                               ; preds = %73, %59, %47, %18
  %76 = load %struct.fimc_fmt*, %struct.fimc_fmt** %5, align 8
  ret %struct.fimc_fmt* %76
}

declare dso_local i32 @ARRAY_SIZE(%struct.fimc_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
