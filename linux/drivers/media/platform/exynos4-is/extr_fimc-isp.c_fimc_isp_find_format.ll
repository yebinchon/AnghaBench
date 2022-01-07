; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c_fimc_isp_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c_fimc_isp_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_fmt = type { i64, i64 }

@fimc_isp_formats = common dso_local global %struct.fimc_fmt* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fimc_fmt* @fimc_isp_find_format(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.fimc_fmt*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fimc_fmt*, align 8
  %9 = alloca %struct.fimc_fmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fimc_fmt* null, %struct.fimc_fmt** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.fimc_fmt*, %struct.fimc_fmt** @fimc_isp_formats, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.fimc_fmt* %13)
  %15 = icmp sge i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.fimc_fmt* null, %struct.fimc_fmt** %4, align 8
  br label %65

17:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %60, %17
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.fimc_fmt*, %struct.fimc_fmt** @fimc_isp_formats, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.fimc_fmt* %20)
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %18
  %24 = load %struct.fimc_fmt*, %struct.fimc_fmt** @fimc_isp_formats, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %24, i64 %26
  store %struct.fimc_fmt* %27, %struct.fimc_fmt** %8, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.fimc_fmt*, %struct.fimc_fmt** %8, align 8
  %32 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load %struct.fimc_fmt*, %struct.fimc_fmt** %8, align 8
  store %struct.fimc_fmt* %38, %struct.fimc_fmt** %4, align 8
  br label %65

39:                                               ; preds = %30, %23
  %40 = load i64*, i64** %6, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.fimc_fmt*, %struct.fimc_fmt** %8, align 8
  %44 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load %struct.fimc_fmt*, %struct.fimc_fmt** %8, align 8
  store %struct.fimc_fmt* %50, %struct.fimc_fmt** %4, align 8
  br label %65

51:                                               ; preds = %42, %39
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load %struct.fimc_fmt*, %struct.fimc_fmt** %8, align 8
  store %struct.fimc_fmt* %56, %struct.fimc_fmt** %9, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %18

63:                                               ; preds = %18
  %64 = load %struct.fimc_fmt*, %struct.fimc_fmt** %9, align 8
  store %struct.fimc_fmt* %64, %struct.fimc_fmt** %4, align 8
  br label %65

65:                                               ; preds = %63, %49, %37, %16
  %66 = load %struct.fimc_fmt*, %struct.fimc_fmt** %4, align 8
  ret %struct.fimc_fmt* %66
}

declare dso_local i32 @ARRAY_SIZE(%struct.fimc_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
