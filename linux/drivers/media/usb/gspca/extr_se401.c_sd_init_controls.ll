; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i32, i32, i64 }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_60HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init_controls(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %9, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %10, %struct.v4l2_ctrl_handler** %13, align 8
  %14 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 4)
  %16 = load %struct.sd*, %struct.sd** %4, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %22 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %23 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %21, i32* @sd_ctrl_ops, i32 %22, i32 0, i32 255, i32 1, i32 15)
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %26 = load i32, i32* @V4L2_CID_GAIN, align 4
  %27 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %25, i32* @sd_ctrl_ops, i32 %26, i32 0, i32 50, i32 1, i32 25)
  %28 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %29 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %30 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %28, i32* @sd_ctrl_ops, i32 %29, i32 0, i32 32767, i32 1, i32 15000)
  %31 = load %struct.sd*, %struct.sd** %4, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %34 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %35 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_60HZ, align 4
  %36 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %33, i32* @sd_ctrl_ops, i32 %34, i32 %35, i32 0, i32 0)
  %37 = load %struct.sd*, %struct.sd** %4, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %24
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %24
  %49 = load %struct.sd*, %struct.sd** %4, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 0
  %51 = call i32 @v4l2_ctrl_cluster(i32 2, i32* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
