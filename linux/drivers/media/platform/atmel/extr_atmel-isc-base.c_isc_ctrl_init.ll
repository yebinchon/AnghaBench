; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ops = type { i32 }
%struct.isc_device = type { i32, %struct.isc_ctrls }
%struct.isc_ctrls = type { i32, i64, i32, %struct.v4l2_ctrl_handler }
%struct.v4l2_ctrl_handler = type { i32 }

@isc_ctrl_ops = common dso_local global %struct.v4l2_ctrl_ops zeroinitializer, align 4
@HIST_INIT = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_GAMMA = common dso_local global i32 0, align 4
@GAMMA_MAX = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_WHITE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_DO_WHITE_BALANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isc_device*)* @isc_ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_ctrl_init(%struct.isc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isc_device*, align 8
  %4 = alloca %struct.v4l2_ctrl_ops*, align 8
  %5 = alloca %struct.isc_ctrls*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca i32, align 4
  store %struct.isc_device* %0, %struct.isc_device** %3, align 8
  store %struct.v4l2_ctrl_ops* @isc_ctrl_ops, %struct.v4l2_ctrl_ops** %4, align 8
  %8 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %9 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %8, i32 0, i32 1
  store %struct.isc_ctrls* %9, %struct.isc_ctrls** %5, align 8
  %10 = load %struct.isc_ctrls*, %struct.isc_ctrls** %5, align 8
  %11 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %10, i32 0, i32 3
  store %struct.v4l2_ctrl_handler* %11, %struct.v4l2_ctrl_handler** %6, align 8
  %12 = load i32, i32* @HIST_INIT, align 4
  %13 = load %struct.isc_ctrls*, %struct.isc_ctrls** %5, align 8
  %14 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %16 = call i32 @isc_reset_awb_ctrls(%struct.isc_device* %15)
  %17 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %18 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %17, i32 5)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %1
  %24 = load %struct.isc_ctrls*, %struct.isc_ctrls** %5, align 8
  %25 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.isc_ctrls*, %struct.isc_ctrls** %5, align 8
  %27 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %26, i32 0, i32 0
  store i32 256, i32* %27, align 8
  %28 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %29 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %30 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %31 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %28, %struct.v4l2_ctrl_ops* %29, i32 %30, i32 -1024, i32 1023, i32 1, i32 0)
  %32 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %33 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %34 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %35 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %32, %struct.v4l2_ctrl_ops* %33, i32 %34, i32 -2048, i32 2047, i32 1, i32 256)
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %37 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %38 = load i32, i32* @V4L2_CID_GAMMA, align 4
  %39 = load i32, i32* @GAMMA_MAX, align 4
  %40 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %36, %struct.v4l2_ctrl_ops* %37, i32 %38, i32 0, i32 %39, i32 1, i32 2)
  %41 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %42 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %43 = load i32, i32* @V4L2_CID_AUTO_WHITE_BALANCE, align 4
  %44 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %41, %struct.v4l2_ctrl_ops* %42, i32 %43, i32 0, i32 1, i32 1, i32 1)
  %45 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %46 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %47 = load i32, i32* @V4L2_CID_DO_WHITE_BALANCE, align 4
  %48 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %45, %struct.v4l2_ctrl_ops* %46, i32 %47, i32 0, i32 0, i32 0, i32 0)
  %49 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %50 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %52 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %23
  %56 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  %59 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %60 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %69

62:                                               ; preds = %23
  %63 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %64 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @v4l2_ctrl_activate(i32 %65, i32 0)
  %67 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %68 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %55, %21
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @isc_reset_awb_ctrls(%struct.isc_device*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_ctrl_activate(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
