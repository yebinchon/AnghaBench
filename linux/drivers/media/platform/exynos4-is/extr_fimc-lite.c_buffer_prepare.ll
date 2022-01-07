; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.vb2_queue* }
%struct.vb2_queue = type { %struct.fimc_lite* }
%struct.fimc_lite = type { i64*, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"User buffer too small (%ld < %ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca %struct.fimc_lite*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %8, i32 0, i32 0
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  store %struct.vb2_queue* %10, %struct.vb2_queue** %4, align 8
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %11, i32 0, i32 0
  %13 = load %struct.fimc_lite*, %struct.fimc_lite** %12, align 8
  store %struct.fimc_lite* %13, %struct.fimc_lite** %5, align 8
  %14 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %15 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %65

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %61, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %26 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %24, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %23
  %33 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %34 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @vb2_plane_size(%struct.vb2_buffer* %40, i32 %41)
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %32
  %46 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %47 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @vb2_plane_size(%struct.vb2_buffer* %49, i32 %50)
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @v4l2_err(i32* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %65

56:                                               ; preds = %32
  %57 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %57, i32 %58, i64 %59)
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %23

64:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %45, %19
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
