; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_sub_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_sub_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.venc_state = type { %struct.v4l2_subdev }

@platform_bus_type = common dso_local global i32 0, align 4
@venc_device_get = common dso_local global i32 0, align 4
@venc_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"vpbe unable to register venc sub device\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"vpbe venc initialization failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_subdev* @venc_sub_dev_init(%struct.v4l2_device* %0, i8* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.venc_state*, align 8
  store %struct.v4l2_device* %0, %struct.v4l2_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.venc_state* null, %struct.venc_state** %6, align 8
  %7 = load i32, i32* @venc_device_get, align 4
  %8 = call i32 @bus_for_each_dev(i32* @platform_bus_type, i32* null, %struct.venc_state** %6, i32 %7)
  %9 = load %struct.venc_state*, %struct.venc_state** %6, align 8
  %10 = icmp eq %struct.venc_state* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %3, align 8
  br label %41

12:                                               ; preds = %2
  %13 = load %struct.venc_state*, %struct.venc_state** %6, align 8
  %14 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %13, i32 0, i32 0
  %15 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %14, i32* @venc_ops)
  %16 = load %struct.venc_state*, %struct.venc_state** %6, align 8
  %17 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strscpy(i32 %19, i8* %20, i32 4)
  %22 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %23 = load %struct.venc_state*, %struct.venc_state** %6, align 8
  %24 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %23, i32 0, i32 0
  %25 = call i64 @v4l2_device_register_subdev(%struct.v4l2_device* %22, %struct.v4l2_subdev* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %29 = call i32 @v4l2_err(%struct.v4l2_device* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %3, align 8
  br label %41

30:                                               ; preds = %12
  %31 = load %struct.venc_state*, %struct.venc_state** %6, align 8
  %32 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %31, i32 0, i32 0
  %33 = call i64 @venc_initialize(%struct.v4l2_subdev* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %37 = call i32 @v4l2_err(%struct.v4l2_device* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %3, align 8
  br label %41

38:                                               ; preds = %30
  %39 = load %struct.venc_state*, %struct.venc_state** %6, align 8
  %40 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %39, i32 0, i32 0
  store %struct.v4l2_subdev* %40, %struct.v4l2_subdev** %3, align 8
  br label %41

41:                                               ; preds = %38, %35, %27, %11
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  ret %struct.v4l2_subdev* %42
}

declare dso_local i32 @bus_for_each_dev(i32*, i32*, %struct.venc_state**, i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i64 @v4l2_device_register_subdev(%struct.v4l2_device*, %struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_device*, i8*) #1

declare dso_local i64 @venc_initialize(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
