; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_get_plane_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_get_plane_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_frame = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"Plane address is wrong\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsc_frame*, i64, i64*, i64*)* @get_plane_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_plane_info(%struct.gsc_frame* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsc_frame*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.gsc_frame* %0, %struct.gsc_frame** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %11 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i64*, i64** %8, align 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %19 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %9, align 8
  store i64 %21, i64* %22, align 8
  br label %57

23:                                               ; preds = %4
  %24 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %25 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i64*, i64** %8, align 8
  store i64 1, i64* %31, align 8
  %32 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %33 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  br label %56

37:                                               ; preds = %23
  %38 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %39 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i64*, i64** %8, align 8
  store i64 2, i64* %45, align 8
  %46 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %47 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %9, align 8
  store i64 %49, i64* %50, align 8
  br label %55

51:                                               ; preds = %37
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %30
  br label %57

57:                                               ; preds = %56, %16
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
