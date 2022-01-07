; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_release_analog_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_release_analog_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"V4L2 device %s deregistered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_release_analog_resources(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  %3 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %4 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %3, i32 0, i32 6
  %5 = call i64 @video_is_registered(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %9 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %8, i32 0, i32 6
  %10 = call i32 @video_unregister_device(i32* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 5
  %14 = call i64 @video_is_registered(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %18 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 5
  %22 = call i32 @video_device_node_name(i32* %21)
  %23 = call i32 @dev_info(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 5
  %26 = call i32 @video_unregister_device(i32* %25)
  br label %27

27:                                               ; preds = %16, %11
  %28 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %29 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %28, i32 0, i32 2
  %30 = call i64 @video_is_registered(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %34 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %37 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %36, i32 0, i32 2
  %38 = call i32 @video_device_node_name(i32* %37)
  %39 = call i32 @dev_info(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %41 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %47 = call i32 @cx231xx_417_unregister(%struct.cx231xx* %46)
  br label %48

48:                                               ; preds = %45, %32
  %49 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %50 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %49, i32 0, i32 2
  %51 = call i32 @video_unregister_device(i32* %50)
  br label %52

52:                                               ; preds = %48, %27
  %53 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %54 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %53, i32 0, i32 1
  %55 = call i32 @v4l2_ctrl_handler_free(i32* %54)
  %56 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 0
  %58 = call i32 @v4l2_ctrl_handler_free(i32* %57)
  ret void
}

declare dso_local i64 @video_is_registered(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @video_device_node_name(i32*) #1

declare dso_local i32 @cx231xx_417_unregister(%struct.cx231xx*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
