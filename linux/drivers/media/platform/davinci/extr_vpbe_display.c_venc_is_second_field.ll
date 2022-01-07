; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_venc_is_second_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_venc_is_second_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_display = type { %struct.vpbe_device* }
%struct.vpbe_device = type { i32, i32 }

@core = common dso_local global i32 0, align 4
@ioctl = common dso_local global i32 0, align 4
@VENC_GET_FLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error in getting Field ID 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_display*)* @venc_is_second_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_is_second_field(%struct.vpbe_display* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpbe_display*, align 8
  %4 = alloca %struct.vpbe_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vpbe_display* %0, %struct.vpbe_display** %3, align 8
  %7 = load %struct.vpbe_display*, %struct.vpbe_display** %3, align 8
  %8 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %7, i32 0, i32 0
  %9 = load %struct.vpbe_device*, %struct.vpbe_device** %8, align 8
  store %struct.vpbe_device* %9, %struct.vpbe_device** %4, align 8
  %10 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %11 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @core, align 4
  %14 = load i32, i32* @ioctl, align 4
  %15 = load i32, i32* @VENC_GET_FLD, align 4
  %16 = call i32 @v4l2_subdev_call(i32 %12, i32 %13, i32 %14, i32 %15, i32* %6)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %21 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %20, i32 0, i32 0
  %22 = call i32 @v4l2_err(i32* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
