; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-miropcm20.c_pcm20_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-miropcm20.c_pcm20_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.pcm20 = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @pcm20_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm20_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.pcm20*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = call %struct.pcm20* @video_drvdata(%struct.file* %4)
  store %struct.pcm20* %5, %struct.pcm20** %3, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = call i64 @v4l2_fh_is_singular_file(%struct.file* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %11 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @IS_ERR_OR_NULL(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %17 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kthread_stop(i32* %18)
  %20 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %21 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15, %9, %1
  %23 = load %struct.file*, %struct.file** %2, align 8
  %24 = call i32 @v4l2_fh_release(%struct.file* %23)
  ret i32 %24
}

declare dso_local %struct.pcm20* @video_drvdata(%struct.file*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
