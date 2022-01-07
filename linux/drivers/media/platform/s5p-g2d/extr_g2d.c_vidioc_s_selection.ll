; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_vidioc_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_vidioc_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.g2d_ctx = type { i32 }
%struct.g2d_frame = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vidioc_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.g2d_ctx*, align 8
  %9 = alloca %struct.g2d_frame*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.g2d_ctx*
  store %struct.g2d_ctx* %12, %struct.g2d_ctx** %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %16 = call i32 @vidioc_try_selection(%struct.file* %13, i8* %14, %struct.v4l2_selection* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %76

21:                                               ; preds = %3
  %22 = load %struct.g2d_ctx*, %struct.g2d_ctx** %8, align 8
  %23 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.g2d_frame* @get_frame(%struct.g2d_ctx* %22, i32 %25)
  store %struct.g2d_frame* %26, %struct.g2d_frame** %9, align 8
  %27 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %28 = call i64 @IS_ERR(%struct.g2d_frame* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %32 = call i32 @PTR_ERR(%struct.g2d_frame* %31)
  store i32 %32, i32* %4, align 4
  br label %76

33:                                               ; preds = %21
  %34 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %39 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %45 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %51 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %57 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  %58 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %59 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %62 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %66 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %65, i32 0, i32 5
  store i64 %64, i64* %66, align 8
  %67 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %68 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %71 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %75 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %33, %30, %19
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @vidioc_try_selection(%struct.file*, i8*, %struct.v4l2_selection*) #1

declare dso_local %struct.g2d_frame* @get_frame(%struct.g2d_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.g2d_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.g2d_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
