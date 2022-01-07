; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.isc_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @isc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.isc_device*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.isc_device* @video_drvdata(%struct.file* %7)
  store %struct.isc_device* %8, %struct.isc_device** %4, align 8
  %9 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %10 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  store %struct.v4l2_subdev* %13, %struct.v4l2_subdev** %5, align 8
  %14 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %15 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %14, i32 0, i32 0
  %16 = call i64 @mutex_lock_interruptible(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ERESTARTSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %67

21:                                               ; preds = %1
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = call i32 @v4l2_fh_open(%struct.file* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %62

27:                                               ; preds = %21
  %28 = load %struct.file*, %struct.file** %3, align 8
  %29 = call i32 @v4l2_fh_is_singular_file(%struct.file* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %62

32:                                               ; preds = %27
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %34 = load i32, i32* @core, align 4
  %35 = load i32, i32* @s_power, align 4
  %36 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %33, i32 %34, i32 %35, i32 1)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ENOIOCTLCMD, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.file*, %struct.file** %3, align 8
  %46 = call i32 @v4l2_fh_release(%struct.file* %45)
  br label %62

47:                                               ; preds = %39, %32
  %48 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %49 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %50 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %49, i32 0, i32 1
  %51 = call i32 @isc_set_fmt(%struct.isc_device* %48, i32* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %56 = load i32, i32* @core, align 4
  %57 = load i32, i32* @s_power, align 4
  %58 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %55, i32 %56, i32 %57, i32 0)
  %59 = load %struct.file*, %struct.file** %3, align 8
  %60 = call i32 @v4l2_fh_release(%struct.file* %59)
  br label %61

61:                                               ; preds = %54, %47
  br label %62

62:                                               ; preds = %61, %44, %31, %26
  %63 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %64 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.isc_device* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @isc_set_fmt(%struct.isc_device*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
