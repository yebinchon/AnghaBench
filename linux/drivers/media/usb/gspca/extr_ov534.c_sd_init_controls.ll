; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.v4l2_ctrl_handler }

@SENSOR_OV767x = common dso_local global i64 0, align 8
@SENSOR_OV772x = common dso_local global i64 0, align 8
@ov534_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_WHITE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_50HZ = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_DISABLED = common dso_local global i32 0, align 4
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = bitcast %struct.gspca_dev* %18 to %struct.sd*
  store %struct.sd* %19, %struct.sd** %4, align 8
  %20 = load %struct.sd*, %struct.sd** %4, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 14
  store %struct.v4l2_ctrl_handler* %21, %struct.v4l2_ctrl_handler** %5, align 8
  %22 = load %struct.sd*, %struct.sd** %4, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SENSOR_OV767x, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 6, i32* %7, align 4
  store i32 3, i32* %8, align 4
  store i32 -127, i32* %9, align 4
  store i32 127, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 128, i32* %12, align 4
  store i32 64, i32* %13, align 4
  store i32 8, i32* %14, align 4
  store i32 96, i32* %15, align 4
  store i32 19, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 255, i32* %7, align 4
  store i32 64, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 255, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 255, i32* %12, align 4
  store i32 32, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 255, i32* %15, align 4
  store i32 120, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %30, %struct.v4l2_ctrl_handler** %33, align 8
  %34 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %35 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %34, i32 13)
  %36 = load %struct.sd*, %struct.sd** %4, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SENSOR_OV772x, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %43 = load i32, i32* @V4L2_CID_HUE, align 4
  %44 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %42, i32* @ov534_ctrl_ops, i32 %43, i32 -90, i32 90, i32 1, i32 0)
  %45 = load %struct.sd*, %struct.sd** %4, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 13
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %41, %29
  %48 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %49 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %48, i32* @ov534_ctrl_ops, i32 %49, i32 %50, i32 %51, i32 1, i32 %52)
  %54 = load %struct.sd*, %struct.sd** %4, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 12
  store i8* %53, i8** %55, align 8
  %56 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %57 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %56, i32* @ov534_ctrl_ops, i32 %57, i32 %58, i32 %59, i32 1, i32 %60)
  %62 = load %struct.sd*, %struct.sd** %4, align 8
  %63 = getelementptr inbounds %struct.sd, %struct.sd* %62, i32 0, i32 11
  store i8* %61, i8** %63, align 8
  %64 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %65 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %64, i32* @ov534_ctrl_ops, i32 %65, i32 0, i32 %66, i32 1, i32 %67)
  %69 = load %struct.sd*, %struct.sd** %4, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 10
  store i8* %68, i8** %70, align 8
  %71 = load %struct.sd*, %struct.sd** %4, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SENSOR_OV772x, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %47
  %77 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %78 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %79 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %77, i32* @ov534_ctrl_ops, i32 %78, i32 0, i32 1, i32 1, i32 1)
  %80 = load %struct.sd*, %struct.sd** %4, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %83 = load i32, i32* @V4L2_CID_GAIN, align 4
  %84 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %82, i32* @ov534_ctrl_ops, i32 %83, i32 0, i32 63, i32 1, i32 20)
  %85 = load %struct.sd*, %struct.sd** %4, align 8
  %86 = getelementptr inbounds %struct.sd, %struct.sd* %85, i32 0, i32 9
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %76, %47
  %88 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %89 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %90 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %91 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %92 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %88, i32* @ov534_ctrl_ops, i32 %89, i32 %90, i32 0, i32 %91)
  %93 = load %struct.sd*, %struct.sd** %4, align 8
  %94 = getelementptr inbounds %struct.sd, %struct.sd* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %96 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %95, i32* @ov534_ctrl_ops, i32 %96, i32 %97, i32 %98, i32 1, i32 %99)
  %101 = load %struct.sd*, %struct.sd** %4, align 8
  %102 = getelementptr inbounds %struct.sd, %struct.sd* %101, i32 0, i32 8
  store i8* %100, i8** %102, align 8
  %103 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %104 = load i32, i32* @V4L2_CID_AUTO_WHITE_BALANCE, align 4
  %105 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %103, i32* @ov534_ctrl_ops, i32 %104, i32 0, i32 1, i32 1, i32 1)
  %106 = load %struct.sd*, %struct.sd** %4, align 8
  %107 = getelementptr inbounds %struct.sd, %struct.sd* %106, i32 0, i32 7
  store i8* %105, i8** %107, align 8
  %108 = load %struct.sd*, %struct.sd** %4, align 8
  %109 = getelementptr inbounds %struct.sd, %struct.sd* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SENSOR_OV772x, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %87
  %114 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %115 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %116 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %114, i32* @ov534_ctrl_ops, i32 %115, i32 0, i32 63, i32 1, i32 0)
  %117 = load %struct.sd*, %struct.sd** %4, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %113, %87
  %120 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %121 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %122 = load i32, i32* %17, align 4
  %123 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %120, i32* @ov534_ctrl_ops, i32 %121, i32 0, i32 1, i32 1, i32 %122)
  %124 = load %struct.sd*, %struct.sd** %4, align 8
  %125 = getelementptr inbounds %struct.sd, %struct.sd* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  %126 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %127 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %128 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %126, i32* @ov534_ctrl_ops, i32 %127, i32 0, i32 1, i32 1, i32 0)
  %129 = load %struct.sd*, %struct.sd** %4, align 8
  %130 = getelementptr inbounds %struct.sd, %struct.sd* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %132 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %133 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_50HZ, align 4
  %134 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_DISABLED, align 4
  %135 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %131, i32* @ov534_ctrl_ops, i32 %132, i32 %133, i32 0, i32 %134)
  %136 = load %struct.sd*, %struct.sd** %4, align 8
  %137 = getelementptr inbounds %struct.sd, %struct.sd* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %139 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %119
  %143 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %144 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %145 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %2, align 4
  br label %162

147:                                              ; preds = %119
  %148 = load %struct.sd*, %struct.sd** %4, align 8
  %149 = getelementptr inbounds %struct.sd, %struct.sd* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SENSOR_OV772x, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.sd*, %struct.sd** %4, align 8
  %155 = getelementptr inbounds %struct.sd, %struct.sd* %154, i32 0, i32 2
  %156 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %155, i32 0, i32 1)
  br label %157

157:                                              ; preds = %153, %147
  %158 = load %struct.sd*, %struct.sd** %4, align 8
  %159 = getelementptr inbounds %struct.sd, %struct.sd* %158, i32 0, i32 1
  %160 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %161 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %159, i32 %160, i32 1)
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %157, %142
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
