; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.vsp1_video = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vsp1_video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_video_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vsp1_video*, align 8
  %5 = alloca %struct.v4l2_fh*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.vsp1_video* @video_drvdata(%struct.file* %7)
  store %struct.vsp1_video* %8, %struct.vsp1_video** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.v4l2_fh* @kzalloc(i32 4, i32 %9)
  store %struct.v4l2_fh* %10, %struct.v4l2_fh** %5, align 8
  %11 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %12 = icmp eq %struct.v4l2_fh* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %18 = load %struct.vsp1_video*, %struct.vsp1_video** %4, align 8
  %19 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %18, i32 0, i32 1
  %20 = call i32 @v4l2_fh_init(%struct.v4l2_fh* %17, i32* %19)
  %21 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %22 = call i32 @v4l2_fh_add(%struct.v4l2_fh* %21)
  %23 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %24 = load %struct.file*, %struct.file** %3, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  store %struct.v4l2_fh* %23, %struct.v4l2_fh** %25, align 8
  %26 = load %struct.vsp1_video*, %struct.vsp1_video** %4, align 8
  %27 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vsp1_device_get(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %16
  %33 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %34 = call i32 @v4l2_fh_del(%struct.v4l2_fh* %33)
  %35 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %36 = call i32 @v4l2_fh_exit(%struct.v4l2_fh* %35)
  %37 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %38 = call i32 @kfree(%struct.v4l2_fh* %37)
  br label %39

39:                                               ; preds = %32, %16
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.vsp1_video* @video_drvdata(%struct.file*) #1

declare dso_local %struct.v4l2_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.v4l2_fh*, i32*) #1

declare dso_local i32 @v4l2_fh_add(%struct.v4l2_fh*) #1

declare dso_local i32 @vsp1_device_get(i32) #1

declare dso_local i32 @v4l2_fh_del(%struct.v4l2_fh*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.v4l2_fh*) #1

declare dso_local i32 @kfree(%struct.v4l2_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
