; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-miropcm20.c_pcm20_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-miropcm20.c_pcm20_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.pcm20 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@pcm20_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"kernel_thread() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @pcm20_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm20_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.pcm20*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.pcm20* @video_drvdata(%struct.file* %6)
  store %struct.pcm20* %7, %struct.pcm20** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call i32 @v4l2_fh_open(%struct.file* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %48, label %12

12:                                               ; preds = %1
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = call i64 @v4l2_fh_is_singular_file(%struct.file* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load %struct.pcm20*, %struct.pcm20** %4, align 8
  %18 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_ERR_OR_NULL(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load i32, i32* @pcm20_thread, align 4
  %24 = load %struct.pcm20*, %struct.pcm20** %4, align 8
  %25 = load %struct.pcm20*, %struct.pcm20** %4, align 8
  %26 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kthread_run(i32 %23, %struct.pcm20* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.pcm20*, %struct.pcm20** %4, align 8
  %31 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pcm20*, %struct.pcm20** %4, align 8
  %33 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %22
  %38 = load %struct.pcm20*, %struct.pcm20** %4, align 8
  %39 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %38, i32 0, i32 1
  %40 = call i32 @v4l2_err(%struct.TYPE_2__* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.file*, %struct.file** %3, align 8
  %42 = call i32 @v4l2_fh_release(%struct.file* %41)
  %43 = load %struct.pcm20*, %struct.pcm20** %4, align 8
  %44 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %50

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47, %16, %12, %1
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %37
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.pcm20* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @kthread_run(i32, %struct.pcm20*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
