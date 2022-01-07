; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_find_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_find_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_fmt = type { i64, i64 }

@gsc_formats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gsc_fmt* @find_fmt(i64* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.gsc_fmt*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gsc_fmt*, align 8
  %9 = alloca %struct.gsc_fmt*, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.gsc_fmt* null, %struct.gsc_fmt** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i32, i32* @gsc_formats, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = zext i32 %13 to i64
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.gsc_fmt* null, %struct.gsc_fmt** %4, align 8
  br label %62

17:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %57, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @gsc_formats, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.gsc_fmt* @get_format(i32 %24)
  store %struct.gsc_fmt* %25, %struct.gsc_fmt** %8, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.gsc_fmt*, %struct.gsc_fmt** %8, align 8
  %30 = getelementptr inbounds %struct.gsc_fmt, %struct.gsc_fmt* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load %struct.gsc_fmt*, %struct.gsc_fmt** %8, align 8
  store %struct.gsc_fmt* %36, %struct.gsc_fmt** %4, align 8
  br label %62

37:                                               ; preds = %28, %23
  %38 = load i64*, i64** %6, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.gsc_fmt*, %struct.gsc_fmt** %8, align 8
  %42 = getelementptr inbounds %struct.gsc_fmt, %struct.gsc_fmt* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load %struct.gsc_fmt*, %struct.gsc_fmt** %8, align 8
  store %struct.gsc_fmt* %48, %struct.gsc_fmt** %4, align 8
  br label %62

49:                                               ; preds = %40, %37
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load %struct.gsc_fmt*, %struct.gsc_fmt** %8, align 8
  store %struct.gsc_fmt* %55, %struct.gsc_fmt** %9, align 8
  br label %56

56:                                               ; preds = %54, %49
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %18

60:                                               ; preds = %18
  %61 = load %struct.gsc_fmt*, %struct.gsc_fmt** %9, align 8
  store %struct.gsc_fmt* %61, %struct.gsc_fmt** %4, align 8
  br label %62

62:                                               ; preds = %60, %47, %35, %16
  %63 = load %struct.gsc_fmt*, %struct.gsc_fmt** %4, align 8
  ret %struct.gsc_fmt* %63
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.gsc_fmt* @get_format(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
