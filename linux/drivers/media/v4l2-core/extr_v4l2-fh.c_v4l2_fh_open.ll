; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fh.c_v4l2_fh_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fh.c_v4l2_fh_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.video_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_fh_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.v4l2_fh*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.video_device* @video_devdata(%struct.file* %6)
  store %struct.video_device* %7, %struct.video_device** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.v4l2_fh* @kzalloc(i32 4, i32 %8)
  store %struct.v4l2_fh* %9, %struct.v4l2_fh** %5, align 8
  %10 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  store %struct.v4l2_fh* %10, %struct.v4l2_fh** %12, align 8
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %14 = icmp eq %struct.v4l2_fh* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %20 = load %struct.video_device*, %struct.video_device** %4, align 8
  %21 = call i32 @v4l2_fh_init(%struct.v4l2_fh* %19, %struct.video_device* %20)
  %22 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %23 = call i32 @v4l2_fh_add(%struct.v4l2_fh* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.v4l2_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.v4l2_fh*, %struct.video_device*) #1

declare dso_local i32 @v4l2_fh_add(%struct.v4l2_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
