; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_initialize_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_initialize_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ops = type { i32 }
%struct.ov965x = type { %struct.TYPE_6__, %struct.ov965x_ctrls }
%struct.TYPE_6__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.ov965x_ctrls = type { i8*, i8*, i8*, i8*, %struct.TYPE_5__*, %struct.TYPE_4__*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.v4l2_ctrl_handler }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ov965x_ctrl_ops = common dso_local global %struct.v4l2_ctrl_ops zeroinitializer, align 4
@V4L2_CID_AUTO_WHITE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_ABSOLUTE = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_60HZ = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_50HZ = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@test_pattern_menu = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*)* @ov965x_initialize_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_initialize_controls(%struct.ov965x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov965x*, align 8
  %4 = alloca %struct.v4l2_ctrl_ops*, align 8
  %5 = alloca %struct.ov965x_ctrls*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca i32, align 4
  store %struct.ov965x* %0, %struct.ov965x** %3, align 8
  store %struct.v4l2_ctrl_ops* @ov965x_ctrl_ops, %struct.v4l2_ctrl_ops** %4, align 8
  %8 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %9 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %8, i32 0, i32 1
  store %struct.ov965x_ctrls* %9, %struct.ov965x_ctrls** %5, align 8
  %10 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %11 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %10, i32 0, i32 13
  store %struct.v4l2_ctrl_handler* %11, %struct.v4l2_ctrl_handler** %6, align 8
  %12 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %13 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %12, i32 16)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %153

18:                                               ; preds = %1
  %19 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %20 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %21 = load i32, i32* @V4L2_CID_AUTO_WHITE_BALANCE, align 4
  %22 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %19, %struct.v4l2_ctrl_ops* %20, i32 %21, i32 0, i32 1, i32 1, i32 1)
  %23 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %24 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %26 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %27 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %28 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %25, %struct.v4l2_ctrl_ops* %26, i32 %27, i32 0, i32 255, i32 1, i32 128)
  %29 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %30 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %29, i32 0, i32 12
  store i8* %28, i8** %30, align 8
  %31 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %32 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %33 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %34 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %31, %struct.v4l2_ctrl_ops* %32, i32 %33, i32 0, i32 255, i32 1, i32 128)
  %35 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %36 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %35, i32 0, i32 11
  store i8* %34, i8** %36, align 8
  %37 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %38 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %39 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %40 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %41 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %42 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %37, %struct.v4l2_ctrl_ops* %38, i32 %39, i32 %40, i32 0, i32 %41)
  %43 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %44 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %46 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %47 = load i32, i32* @V4L2_CID_EXPOSURE_ABSOLUTE, align 4
  %48 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %45, %struct.v4l2_ctrl_ops* %46, i32 %47, i32 2, i32 1500, i32 1, i32 500)
  %49 = bitcast i8* %48 to %struct.TYPE_5__*
  %50 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %51 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %50, i32 0, i32 4
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %51, align 8
  %52 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %53 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %54 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %55 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %52, %struct.v4l2_ctrl_ops* %53, i32 %54, i32 0, i32 1, i32 1, i32 1)
  %56 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %57 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %59 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %60 = load i32, i32* @V4L2_CID_GAIN, align 4
  %61 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %58, %struct.v4l2_ctrl_ops* %59, i32 %60, i32 16, i32 1984, i32 1, i32 1024)
  %62 = bitcast i8* %61 to %struct.TYPE_4__*
  %63 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %64 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %63, i32 0, i32 5
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %64, align 8
  %65 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %66 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %67 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %68 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %65, %struct.v4l2_ctrl_ops* %66, i32 %67, i32 -2, i32 2, i32 1, i32 0)
  %69 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %70 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %69, i32 0, i32 10
  store i8* %68, i8** %70, align 8
  %71 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %72 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %73 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %74 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %71, %struct.v4l2_ctrl_ops* %72, i32 %73, i32 -3, i32 3, i32 1, i32 0)
  %75 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %76 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %75, i32 0, i32 9
  store i8* %74, i8** %76, align 8
  %77 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %78 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %79 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %80 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %77, %struct.v4l2_ctrl_ops* %78, i32 %79, i32 0, i32 32, i32 1, i32 6)
  %81 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %82 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %81, i32 0, i32 8
  store i8* %80, i8** %82, align 8
  %83 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %84 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %85 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %86 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %83, %struct.v4l2_ctrl_ops* %84, i32 %85, i32 0, i32 1, i32 1, i32 0)
  %87 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %88 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %90 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %91 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %92 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %89, %struct.v4l2_ctrl_ops* %90, i32 %91, i32 0, i32 1, i32 1, i32 0)
  %93 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %94 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %93, i32 0, i32 7
  store i8* %92, i8** %94, align 8
  %95 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %96 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %97 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %98 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_60HZ, align 4
  %99 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_50HZ, align 4
  %100 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %95, %struct.v4l2_ctrl_ops* %96, i32 %97, i32 %98, i32 -8, i32 %99)
  %101 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %102 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %101, i32 0, i32 6
  store i8* %100, i8** %102, align 8
  %103 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %104 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %105 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %106 = load i32, i32* @test_pattern_menu, align 4
  %107 = call i64 @ARRAY_SIZE(i32 %106)
  %108 = sub nsw i64 %107, 1
  %109 = load i32, i32* @test_pattern_menu, align 4
  %110 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler* %103, %struct.v4l2_ctrl_ops* %104, i32 %105, i64 %108, i32 0, i32 0, i32 %109)
  %111 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %112 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %18
  %116 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %117 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %7, align 4
  %119 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %120 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %119)
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %153

122:                                              ; preds = %18
  %123 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %124 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %125 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %124, i32 0, i32 5
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %123
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %131 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %132 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %131, i32 0, i32 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %130
  store i32 %136, i32* %134, align 4
  %137 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %138 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %137, i32 0, i32 3
  %139 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %138, i32 0, i32 0)
  %140 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %141 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %140, i32 0, i32 2
  %142 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %141, i32 0, i32 1)
  %143 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %144 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %143, i32 0, i32 1
  %145 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %144, i32 1, i32 1)
  %146 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %5, align 8
  %147 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %146, i32 0, i32 0
  %148 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %147)
  %149 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %150 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %151 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %149, %struct.v4l2_ctrl_handler** %152, align 8
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %122, %115, %16
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
