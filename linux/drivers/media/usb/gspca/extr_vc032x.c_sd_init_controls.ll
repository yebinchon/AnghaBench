; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i32, i8*, i8* }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_60HZ = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_50HZ = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_BACKLIGHT_COMPENSATION = common dso_local global i32 0, align 4
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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = bitcast %struct.gspca_dev* %16 to %struct.sd*
  store %struct.sd* %17, %struct.sd** %4, align 8
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %19, %struct.v4l2_ctrl_handler** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.sd*, %struct.sd** %4, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %28 [
    i32 137, label %23
    i32 136, label %23
    i32 129, label %23
    i32 135, label %24
    i32 134, label %24
    i32 133, label %24
    i32 132, label %24
    i32 131, label %25
    i32 130, label %26
    i32 128, label %27
  ]

23:                                               ; preds = %1, %1, %1
  br label %28

24:                                               ; preds = %1, %1, %1, %1
  store i32 1, i32* %9, align 4
  br label %28

25:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %28

26:                                               ; preds = %1
  store i32 1, i32* %15, align 4
  store i32 1, i32* %9, align 4
  br label %28

27:                                               ; preds = %1
  store i32 1, i32* %15, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %28

28:                                               ; preds = %1, %27, %26, %25, %24, %23
  %29 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %29, %struct.v4l2_ctrl_handler** %32, align 8
  %33 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %34 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %33, i32 8)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %39 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %40 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %38, i32* @sd_ctrl_ops, i32 %39, i32 0, i32 255, i32 1, i32 128)
  br label %41

41:                                               ; preds = %37, %28
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %46 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %47 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %45, i32* @sd_ctrl_ops, i32 %46, i32 0, i32 255, i32 1, i32 127)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %53 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %54 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %52, i32* @sd_ctrl_ops, i32 %53, i32 1, i32 127, i32 1, i32 63)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %60 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %61 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %59, i32* @sd_ctrl_ops, i32 %60, i32 0, i32 1, i32 1, i32 0)
  %62 = load %struct.sd*, %struct.sd** %4, align 8
  %63 = getelementptr inbounds %struct.sd, %struct.sd* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %65 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %66 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %64, i32* @sd_ctrl_ops, i32 %65, i32 0, i32 1, i32 1, i32 0)
  %67 = load %struct.sd*, %struct.sd** %4, align 8
  %68 = getelementptr inbounds %struct.sd, %struct.sd* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %58, %55
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %74 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %75 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %73, i32* @sd_ctrl_ops, i32 %74, i32 -1, i32 2, i32 1, i32 -1)
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %81 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %82 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_60HZ, align 4
  %83 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_50HZ, align 4
  %84 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %80, i32* @sd_ctrl_ops, i32 %81, i32 %82, i32 0, i32 %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %90 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %91 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %89, i32* @sd_ctrl_ops, i32 %90, i32 0, i32 1, i32 1, i32 1)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %97 = load i32, i32* @V4L2_CID_GAIN, align 4
  %98 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %96, i32* @sd_ctrl_ops, i32 %97, i32 0, i32 78, i32 1, i32 0)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %104 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %105 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %103, i32* @sd_ctrl_ops, i32 %104, i32 0, i32 4095, i32 1, i32 450)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %111 = load i32, i32* @V4L2_CID_BACKLIGHT_COMPENSATION, align 4
  %112 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %110, i32* @sd_ctrl_ops, i32 %111, i32 0, i32 15, i32 1, i32 15)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %115 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %120 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %121 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %2, align 4
  br label %133

123:                                              ; preds = %113
  %124 = load %struct.sd*, %struct.sd** %4, align 8
  %125 = getelementptr inbounds %struct.sd, %struct.sd* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.sd*, %struct.sd** %4, align 8
  %130 = getelementptr inbounds %struct.sd, %struct.sd* %129, i32 0, i32 1
  %131 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %130)
  br label %132

132:                                              ; preds = %128, %123
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %118
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
