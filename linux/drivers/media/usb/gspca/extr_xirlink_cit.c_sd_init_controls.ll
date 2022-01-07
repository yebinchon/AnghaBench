; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i32, i32 }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@V4L2_CID_BACKLIGHT_COMPENSATION = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init_controls(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %4, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %15, %struct.v4l2_ctrl_handler** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %16 = load %struct.sd*, %struct.sd** %4, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %25 [
    i32 132, label %19
    i32 131, label %20
    i32 130, label %21
    i32 129, label %22
    i32 128, label %23
    i32 133, label %24
  ]

19:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  store i32 1, i32* %7, align 4
  br label %25

20:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %25

21:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %25

22:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %25

23:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %25

24:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %1, %24, %23, %22, %21, %20, %19
  %26 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %26, %struct.v4l2_ctrl_handler** %29, align 8
  %30 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %31 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %30, i32 5)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %36 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %37 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %35, i32* @sd_ctrl_ops, i32 %36, i32 0, i32 63, i32 1, i32 32)
  br label %38

38:                                               ; preds = %34, %25
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %43 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %44 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %42, i32* @sd_ctrl_ops, i32 %43, i32 0, i32 20, i32 1, i32 10)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %50 = load i32, i32* @V4L2_CID_HUE, align 4
  %51 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %49, i32* @sd_ctrl_ops, i32 %50, i32 0, i32 127, i32 1, i32 63)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %57 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %58 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %56, i32* @sd_ctrl_ops, i32 %57, i32 0, i32 6, i32 1, i32 3)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %64 = load i32, i32* @V4L2_CID_BACKLIGHT_COMPENSATION, align 4
  %65 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %63, i32* @sd_ctrl_ops, i32 %64, i32 0, i32 2, i32 1, i32 1)
  %66 = load %struct.sd*, %struct.sd** %4, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %73 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %74 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %72, i32* @sd_ctrl_ops, i32 %73, i32 0, i32 1, i32 1, i32 0)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
