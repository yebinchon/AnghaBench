; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac7302.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac7302.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i8*, i8*, i8*, %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_WHITE_BALANCE_TEMPERATURE = common dso_local global i32 0, align 4
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@PAC7302_RGB_BALANCE_MIN = common dso_local global i32 0, align 4
@PAC7302_RGB_BALANCE_MAX = common dso_local global i32 0, align 4
@PAC7302_RGB_BALANCE_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@PAC7302_EXPOSURE_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@PAC7302_GAIN_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
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
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 12)
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %17 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %18 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %16, i32* @sd_ctrl_ops, i32 %17, i32 0, i32 32, i32 1, i32 16)
  %19 = load %struct.sd*, %struct.sd** %4, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %22 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %23 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %21, i32* @sd_ctrl_ops, i32 %22, i32 0, i32 255, i32 1, i32 127)
  %24 = load %struct.sd*, %struct.sd** %4, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 8
  store i8* %23, i8** %25, align 8
  %26 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %27 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %28 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %26, i32* @sd_ctrl_ops, i32 %27, i32 0, i32 255, i32 1, i32 127)
  %29 = load %struct.sd*, %struct.sd** %4, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %32 = load i32, i32* @V4L2_CID_WHITE_BALANCE_TEMPERATURE, align 4
  %33 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %31, i32* @sd_ctrl_ops, i32 %32, i32 0, i32 255, i32 1, i32 55)
  %34 = load %struct.sd*, %struct.sd** %4, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %37 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %38 = load i32, i32* @PAC7302_RGB_BALANCE_MIN, align 4
  %39 = load i32, i32* @PAC7302_RGB_BALANCE_MAX, align 4
  %40 = load i32, i32* @PAC7302_RGB_BALANCE_DEFAULT, align 4
  %41 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %36, i32* @sd_ctrl_ops, i32 %37, i32 %38, i32 %39, i32 1, i32 %40)
  %42 = load %struct.sd*, %struct.sd** %4, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %45 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %46 = load i32, i32* @PAC7302_RGB_BALANCE_MIN, align 4
  %47 = load i32, i32* @PAC7302_RGB_BALANCE_MAX, align 4
  %48 = load i32, i32* @PAC7302_RGB_BALANCE_DEFAULT, align 4
  %49 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %44, i32* @sd_ctrl_ops, i32 %45, i32 %46, i32 %47, i32 1, i32 %48)
  %50 = load %struct.sd*, %struct.sd** %4, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %53 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %54 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %52, i32* @sd_ctrl_ops, i32 %53, i32 0, i32 1, i32 1, i32 1)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %56 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %58 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %59 = load i32, i32* @PAC7302_EXPOSURE_DEFAULT, align 4
  %60 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %57, i32* @sd_ctrl_ops, i32 %58, i32 0, i32 1023, i32 1, i32 %59)
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %62 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %64 = load i32, i32* @V4L2_CID_GAIN, align 4
  %65 = load i32, i32* @PAC7302_GAIN_DEFAULT, align 4
  %66 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %63, i32* @sd_ctrl_ops, i32 %64, i32 0, i32 62, i32 1, i32 %65)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %70 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %71 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %69, i32* @sd_ctrl_ops, i32 %70, i32 0, i32 1, i32 1, i32 0)
  %72 = load %struct.sd*, %struct.sd** %4, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %75 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %76 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %74, i32* @sd_ctrl_ops, i32 %75, i32 0, i32 1, i32 1, i32 0)
  %77 = load %struct.sd*, %struct.sd** %4, align 8
  %78 = getelementptr inbounds %struct.sd, %struct.sd* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %80 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %81 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %79, i32* @sd_ctrl_ops, i32 %80, i32 0, i32 15, i32 1, i32 8)
  %82 = load %struct.sd*, %struct.sd** %4, align 8
  %83 = getelementptr inbounds %struct.sd, %struct.sd* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %1
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %2, align 4
  br label %103

93:                                               ; preds = %1
  %94 = load %struct.sd*, %struct.sd** %4, align 8
  %95 = getelementptr inbounds %struct.sd, %struct.sd* %94, i32 0, i32 1
  %96 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %95)
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %98 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %97, i32 0, i32 0
  %99 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %98, i32 0, i32 0)
  %100 = load %struct.sd*, %struct.sd** %4, align 8
  %101 = getelementptr inbounds %struct.sd, %struct.sd* %100, i32 0, i32 0
  %102 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %93, %88
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
