; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_cpia2_init_camera_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_cpia2_init_camera_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_interface = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"couldn't kmalloc cpia2 struct\0A\00", align 1
@cpia2_camera_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"couldn't register v4l2_device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.camera_data* @cpia2_init_camera_struct(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.camera_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.camera_data* @kzalloc(i32 12, i32 %5)
  store %struct.camera_data* %6, %struct.camera_data** %4, align 8
  %7 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %8 = icmp ne %struct.camera_data* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.camera_data* null, %struct.camera_data** %2, align 8
  br label %36

11:                                               ; preds = %1
  %12 = load i32, i32* @cpia2_camera_release, align 4
  %13 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %14 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %19 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %18, i32 0, i32 2
  %20 = call i64 @v4l2_device_register(i32* %17, %struct.TYPE_3__* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %24 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %23, i32 0, i32 2
  %25 = call i32 @v4l2_err(%struct.TYPE_3__* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %27 = call i32 @kfree(%struct.camera_data* %26)
  store %struct.camera_data* null, %struct.camera_data** %2, align 8
  br label %36

28:                                               ; preds = %11
  %29 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %30 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %29, i32 0, i32 1
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %33 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %32, i32 0, i32 0
  %34 = call i32 @init_waitqueue_head(i32* %33)
  %35 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  store %struct.camera_data* %35, %struct.camera_data** %2, align 8
  br label %36

36:                                               ; preds = %28, %22, %9
  %37 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  ret %struct.camera_data* %37
}

declare dso_local %struct.camera_data* @kzalloc(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @v4l2_device_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @kfree(%struct.camera_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
