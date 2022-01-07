; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac7311.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac7311.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i8*, i8*, i8*, %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i8*, i8* }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@PAC7311_EXPOSURE_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@PAC7311_GAIN_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
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
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 5)
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %17 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %18 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %16, i32* @sd_ctrl_ops, i32 %17, i32 0, i32 15, i32 1, i32 7)
  %19 = load %struct.sd*, %struct.sd** %4, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %22 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %23 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %21, i32* @sd_ctrl_ops, i32 %22, i32 0, i32 1, i32 1, i32 1)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %27 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %28 = load i32, i32* @PAC7311_EXPOSURE_DEFAULT, align 4
  %29 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %26, i32* @sd_ctrl_ops, i32 %27, i32 2, i32 63, i32 1, i32 %28)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %33 = load i32, i32* @V4L2_CID_GAIN, align 4
  %34 = load i32, i32* @PAC7311_GAIN_DEFAULT, align 4
  %35 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %32, i32* @sd_ctrl_ops, i32 %33, i32 0, i32 244, i32 1, i32 %34)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %39 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %40 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %38, i32* @sd_ctrl_ops, i32 %39, i32 0, i32 1, i32 1, i32 0)
  %41 = load %struct.sd*, %struct.sd** %4, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %1
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %2, align 4
  br label %56

52:                                               ; preds = %1
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %54 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %53, i32 0, i32 0
  %55 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %54, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %2, align 4
  ret i32 %57
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
