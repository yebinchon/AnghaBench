; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_subdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_subdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }
%struct.video_device = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_8__* }
%struct.TYPE_14__ = type { i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)* }
%struct.v4l2_subdev_fh = type { i32, %struct.module* }
%struct.module = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.module* }
%struct.TYPE_8__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @subdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subdev_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_fh*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.video_device* @video_devdata(%struct.file* %8)
  store %struct.video_device* %9, %struct.video_device** %4, align 8
  %10 = load %struct.video_device*, %struct.video_device** %4, align 8
  %11 = call %struct.v4l2_subdev* @vdev_to_v4l2_subdev(%struct.video_device* %10)
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.v4l2_subdev_fh* @kzalloc(i32 16, i32 %12)
  store %struct.v4l2_subdev_fh* %13, %struct.v4l2_subdev_fh** %6, align 8
  %14 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %15 = icmp eq %struct.v4l2_subdev_fh* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %82

19:                                               ; preds = %1
  %20 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %22 = call i32 @subdev_fh_init(%struct.v4l2_subdev_fh* %20, %struct.v4l2_subdev* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %27 = call i32 @kfree(%struct.v4l2_subdev_fh* %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %82

29:                                               ; preds = %19
  %30 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %30, i32 0, i32 0
  %32 = load %struct.video_device*, %struct.video_device** %4, align 8
  %33 = call i32 @v4l2_fh_init(i32* %31, %struct.video_device* %32)
  %34 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %34, i32 0, i32 0
  %36 = call i32 @v4l2_fh_add(i32* %35)
  %37 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %37, i32 0, i32 0
  %39 = load %struct.file*, %struct.file** %3, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = icmp ne %struct.TYPE_14__* %43, null
  br i1 %44, label %45, label %65

45:                                               ; preds = %29
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)** %49, align 8
  %51 = icmp ne i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)** %56, align 8
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %59 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %60 = call i32 %57(%struct.v4l2_subdev* %58, %struct.v4l2_subdev_fh* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %66

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %45, %29
  store i32 0, i32* %2, align 4
  br label %82

66:                                               ; preds = %63
  %67 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %67, i32 0, i32 1
  %69 = load %struct.module*, %struct.module** %68, align 8
  %70 = call i32 @module_put(%struct.module* %69)
  %71 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %71, i32 0, i32 0
  %73 = call i32 @v4l2_fh_del(i32* %72)
  %74 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %75 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %74, i32 0, i32 0
  %76 = call i32 @v4l2_fh_exit(i32* %75)
  %77 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %78 = call i32 @subdev_fh_free(%struct.v4l2_subdev_fh* %77)
  %79 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %80 = call i32 @kfree(%struct.v4l2_subdev_fh* %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %66, %65, %25, %16
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.v4l2_subdev* @vdev_to_v4l2_subdev(%struct.video_device*) #1

declare dso_local %struct.v4l2_subdev_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @subdev_fh_init(%struct.v4l2_subdev_fh*, %struct.v4l2_subdev*) #1

declare dso_local i32 @kfree(%struct.v4l2_subdev_fh*) #1

declare dso_local i32 @v4l2_fh_init(i32*, %struct.video_device*) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

declare dso_local i32 @module_put(%struct.module*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @subdev_fh_free(%struct.v4l2_subdev_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
