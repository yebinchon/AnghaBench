; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ops = type { i32 }
%struct.ov5640_dev = type { %struct.TYPE_6__, i32, %struct.ov5640_ctrls }
%struct.TYPE_6__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32, i32* }
%struct.ov5640_ctrls = type { i8*, i8*, i8*, %struct.TYPE_5__*, %struct.TYPE_4__*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, %struct.v4l2_ctrl_handler }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ov5640_ctrl_ops = common dso_local global %struct.v4l2_ctrl_ops zeroinitializer, align 4
@V4L2_CID_AUTO_WHITE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@test_pattern_menu = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_50HZ = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*)* @ov5640_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_init_controls(%struct.ov5640_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov5640_dev*, align 8
  %4 = alloca %struct.v4l2_ctrl_ops*, align 8
  %5 = alloca %struct.ov5640_ctrls*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %3, align 8
  store %struct.v4l2_ctrl_ops* @ov5640_ctrl_ops, %struct.v4l2_ctrl_ops** %4, align 8
  %8 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %9 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %8, i32 0, i32 2
  store %struct.ov5640_ctrls* %9, %struct.ov5640_ctrls** %5, align 8
  %10 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %11 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %10, i32 0, i32 14
  store %struct.v4l2_ctrl_handler* %11, %struct.v4l2_ctrl_handler** %6, align 8
  %12 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %13 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %12, i32 32)
  %14 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %15 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %14, i32 0, i32 1
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %19 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %20 = load i32, i32* @V4L2_CID_AUTO_WHITE_BALANCE, align 4
  %21 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %18, %struct.v4l2_ctrl_ops* %19, i32 %20, i32 0, i32 1, i32 1, i32 1)
  %22 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %23 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %25 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %26 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %27 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %24, %struct.v4l2_ctrl_ops* %25, i32 %26, i32 0, i32 4095, i32 1, i32 0)
  %28 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %29 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %28, i32 0, i32 13
  store i8* %27, i8** %29, align 8
  %30 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %31 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %32 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %33 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %30, %struct.v4l2_ctrl_ops* %31, i32 %32, i32 0, i32 4095, i32 1, i32 0)
  %34 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %35 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %34, i32 0, i32 12
  store i8* %33, i8** %35, align 8
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %37 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %38 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %39 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %40 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %41 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %36, %struct.v4l2_ctrl_ops* %37, i32 %38, i32 %39, i32 0, i32 %40)
  %42 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %43 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %45 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %46 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %47 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %44, %struct.v4l2_ctrl_ops* %45, i32 %46, i32 0, i32 65535, i32 1, i32 0)
  %48 = bitcast i8* %47 to %struct.TYPE_5__*
  %49 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %50 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %49, i32 0, i32 3
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %50, align 8
  %51 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %52 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %53 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %54 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %51, %struct.v4l2_ctrl_ops* %52, i32 %53, i32 0, i32 1, i32 1, i32 1)
  %55 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %56 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %58 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %59 = load i32, i32* @V4L2_CID_GAIN, align 4
  %60 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %57, %struct.v4l2_ctrl_ops* %58, i32 %59, i32 0, i32 1023, i32 1, i32 0)
  %61 = bitcast i8* %60 to %struct.TYPE_4__*
  %62 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %63 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %62, i32 0, i32 4
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %63, align 8
  %64 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %65 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %66 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %67 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %64, %struct.v4l2_ctrl_ops* %65, i32 %66, i32 0, i32 255, i32 1, i32 64)
  %68 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %69 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %68, i32 0, i32 11
  store i8* %67, i8** %69, align 8
  %70 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %71 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %72 = load i32, i32* @V4L2_CID_HUE, align 4
  %73 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %70, %struct.v4l2_ctrl_ops* %71, i32 %72, i32 0, i32 359, i32 1, i32 0)
  %74 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %75 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %74, i32 0, i32 10
  store i8* %73, i8** %75, align 8
  %76 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %77 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %78 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %79 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %76, %struct.v4l2_ctrl_ops* %77, i32 %78, i32 0, i32 255, i32 1, i32 0)
  %80 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %81 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %80, i32 0, i32 9
  store i8* %79, i8** %81, align 8
  %82 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %83 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %84 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %85 = load i32, i32* @test_pattern_menu, align 4
  %86 = call i64 @ARRAY_SIZE(i32 %85)
  %87 = sub nsw i64 %86, 1
  %88 = load i32, i32* @test_pattern_menu, align 4
  %89 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler* %82, %struct.v4l2_ctrl_ops* %83, i32 %84, i64 %87, i32 0, i32 0, i32 %88)
  %90 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %91 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 8
  %92 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %93 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %94 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %95 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %92, %struct.v4l2_ctrl_ops* %93, i32 %94, i32 0, i32 1, i32 1, i32 0)
  %96 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %97 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %96, i32 0, i32 7
  store i8* %95, i8** %97, align 8
  %98 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %99 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %100 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %101 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %98, %struct.v4l2_ctrl_ops* %99, i32 %100, i32 0, i32 1, i32 1, i32 0)
  %102 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %103 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %102, i32 0, i32 6
  store i8* %101, i8** %103, align 8
  %104 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %105 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %106 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %107 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_AUTO, align 4
  %108 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_50HZ, align 4
  %109 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %104, %struct.v4l2_ctrl_ops* %105, i32 %106, i32 %107, i32 0, i32 %108)
  %110 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %111 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %113 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %1
  %117 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %118 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %7, align 4
  br label %148

120:                                              ; preds = %1
  %121 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %122 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %123 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %122, i32 0, i32 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %121
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %129 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %130 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %129, i32 0, i32 3
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %128
  store i32 %134, i32* %132, align 4
  %135 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %136 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %135, i32 0, i32 2
  %137 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %136, i32 0, i32 0)
  %138 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %139 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %138, i32 0, i32 1
  %140 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %139, i32 0, i32 1)
  %141 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %5, align 8
  %142 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %141, i32 0, i32 0
  %143 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %142, i32 1, i32 1)
  %144 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %145 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %146 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %144, %struct.v4l2_ctrl_handler** %147, align 8
  store i32 0, i32* %2, align 4
  br label %152

148:                                              ; preds = %116
  %149 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %150 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %149)
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %148, %120
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
