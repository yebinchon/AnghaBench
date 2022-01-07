; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_v4l_enable_media_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_v4l_enable_media_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.media_device* }
%struct.media_device = type { i32 (%struct.TYPE_4__*, i32*)*, i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l_enable_media_source(%struct.video_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.media_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.video_device* %0, %struct.video_device** %3, align 8
  %7 = load %struct.video_device*, %struct.video_device** %3, align 8
  %8 = getelementptr inbounds %struct.video_device, %struct.video_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.media_device*, %struct.media_device** %10, align 8
  store %struct.media_device* %11, %struct.media_device** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.media_device*, %struct.media_device** %4, align 8
  %13 = icmp ne %struct.media_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.media_device*, %struct.media_device** %4, align 8
  %17 = getelementptr inbounds %struct.media_device, %struct.media_device* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.media_device*, %struct.media_device** %4, align 8
  %20 = getelementptr inbounds %struct.media_device, %struct.media_device* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %20, align 8
  %22 = icmp ne i32 (%struct.TYPE_4__*, i32*)* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %39

24:                                               ; preds = %15
  %25 = load %struct.media_device*, %struct.media_device** %4, align 8
  %26 = getelementptr inbounds %struct.media_device, %struct.media_device* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %26, align 8
  %28 = load %struct.video_device*, %struct.video_device** %3, align 8
  %29 = getelementptr inbounds %struct.video_device, %struct.video_device* %28, i32 0, i32 1
  %30 = load %struct.video_device*, %struct.video_device** %3, align 8
  %31 = getelementptr inbounds %struct.video_device, %struct.video_device* %30, i32 0, i32 0
  %32 = call i32 %27(%struct.TYPE_4__* %29, i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %24
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.media_device*, %struct.media_device** %4, align 8
  %41 = getelementptr inbounds %struct.media_device, %struct.media_device* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
