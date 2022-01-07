; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac207.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac207.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i8*, i8*, i8*, %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i8* }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@PAC207_BRIGHTNESS_MIN = common dso_local global i32 0, align 4
@PAC207_BRIGHTNESS_MAX = common dso_local global i32 0, align 4
@PAC207_BRIGHTNESS_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@PAC207_EXPOSURE_MIN = common dso_local global i32 0, align 4
@PAC207_EXPOSURE_MAX = common dso_local global i32 0, align 4
@PAC207_EXPOSURE_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@PAC207_GAIN_MIN = common dso_local global i32 0, align 4
@PAC207_GAIN_MAX = common dso_local global i32 0, align 4
@PAC207_GAIN_DEFAULT = common dso_local global i32 0, align 4
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
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 4
  store %struct.v4l2_ctrl_handler* %9, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %10, %struct.v4l2_ctrl_handler** %13, align 8
  %14 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 4)
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %17 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %18 = load i32, i32* @PAC207_BRIGHTNESS_MIN, align 4
  %19 = load i32, i32* @PAC207_BRIGHTNESS_MAX, align 4
  %20 = load i32, i32* @PAC207_BRIGHTNESS_DEFAULT, align 4
  %21 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %16, i32* @sd_ctrl_ops, i32 %17, i32 %18, i32 %19, i32 1, i32 %20)
  %22 = load %struct.sd*, %struct.sd** %4, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %25 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %26 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %24, i32* @sd_ctrl_ops, i32 %25, i32 0, i32 1, i32 1, i32 1)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %30 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %31 = load i32, i32* @PAC207_EXPOSURE_MIN, align 4
  %32 = load i32, i32* @PAC207_EXPOSURE_MAX, align 4
  %33 = load i32, i32* @PAC207_EXPOSURE_DEFAULT, align 4
  %34 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %29, i32* @sd_ctrl_ops, i32 %30, i32 %31, i32 %32, i32 1, i32 %33)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %38 = load i32, i32* @V4L2_CID_GAIN, align 4
  %39 = load i32, i32* @PAC207_GAIN_MIN, align 4
  %40 = load i32, i32* @PAC207_GAIN_MAX, align 4
  %41 = load i32, i32* @PAC207_GAIN_DEFAULT, align 4
  %42 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %37, i32* @sd_ctrl_ops, i32 %38, i32 %39, i32 %40, i32 1, i32 %41)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %44 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %1
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %1
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %56 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %55, i32 0, i32 0
  %57 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %56, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
