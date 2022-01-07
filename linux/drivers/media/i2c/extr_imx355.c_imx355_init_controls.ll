; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx355 = type { i32, %struct.TYPE_5__, i8*, i8*, i8*, %struct.TYPE_4__*, i8*, %struct.imx355_mode*, i8*, %struct.TYPE_6__*, i32, %struct.v4l2_ctrl_handler }
%struct.TYPE_5__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_4__ = type { i32 }
%struct.imx355_mode = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_ctrl_handler = type { i32, i32* }
%struct.i2c_client = type { i32 }

@link_freq_menu_items = common dso_local global i32 0, align 4
@imx355_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_LINK_FREQ = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@V4L2_CID_VBLANK = common dso_local global i32 0, align 4
@IMX355_FLL_MAX = common dso_local global i32 0, align 4
@V4L2_CID_HBLANK = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@IMX355_EXPOSURE_MIN = common dso_local global i32 0, align 4
@IMX355_EXPOSURE_STEP = common dso_local global i32 0, align 4
@IMX355_EXPOSURE_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_ANALOGUE_GAIN = common dso_local global i32 0, align 4
@IMX355_ANA_GAIN_MIN = common dso_local global i32 0, align 4
@IMX355_ANA_GAIN_MAX = common dso_local global i32 0, align 4
@IMX355_ANA_GAIN_STEP = common dso_local global i32 0, align 4
@IMX355_ANA_GAIN_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_DIGITAL_GAIN = common dso_local global i32 0, align 4
@IMX355_DGTL_GAIN_MIN = common dso_local global i32 0, align 4
@IMX355_DGTL_GAIN_MAX = common dso_local global i32 0, align 4
@IMX355_DGTL_GAIN_STEP = common dso_local global i32 0, align 4
@IMX355_DGTL_GAIN_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@imx355_test_pattern_menu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"control init failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx355*)* @imx355_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx355_init_controls(%struct.imx355* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx355*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.imx355_mode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.imx355* %0, %struct.imx355** %3, align 8
  %14 = load %struct.imx355*, %struct.imx355** %3, align 8
  %15 = getelementptr inbounds %struct.imx355, %struct.imx355* %14, i32 0, i32 1
  %16 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.TYPE_5__* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %4, align 8
  %17 = load %struct.imx355*, %struct.imx355** %3, align 8
  %18 = getelementptr inbounds %struct.imx355, %struct.imx355* %17, i32 0, i32 11
  store %struct.v4l2_ctrl_handler* %18, %struct.v4l2_ctrl_handler** %5, align 8
  %19 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %20 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %19, i32 10)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %2, align 4
  br label %191

25:                                               ; preds = %1
  %26 = load %struct.imx355*, %struct.imx355** %3, align 8
  %27 = getelementptr inbounds %struct.imx355, %struct.imx355* %26, i32 0, i32 10
  %28 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load i32, i32* @link_freq_menu_items, align 4
  %31 = call i64 @ARRAY_SIZE(i32 %30)
  %32 = sub nsw i64 %31, 1
  store i64 %32, i64* %12, align 8
  %33 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %34 = load i32, i32* @V4L2_CID_LINK_FREQ, align 4
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* @link_freq_menu_items, align 4
  %37 = call %struct.TYPE_6__* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler* %33, i32* @imx355_ctrl_ops, i32 %34, i64 %35, i32 0, i32 %36)
  %38 = load %struct.imx355*, %struct.imx355** %3, align 8
  %39 = getelementptr inbounds %struct.imx355, %struct.imx355* %38, i32 0, i32 9
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.imx355*, %struct.imx355** %3, align 8
  %41 = getelementptr inbounds %struct.imx355, %struct.imx355* %40, i32 0, i32 9
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %25
  %45 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %46 = load %struct.imx355*, %struct.imx355** %3, align 8
  %47 = getelementptr inbounds %struct.imx355, %struct.imx355* %46, i32 0, i32 9
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %44, %25
  %53 = load %struct.imx355*, %struct.imx355** %3, align 8
  %54 = getelementptr inbounds %struct.imx355, %struct.imx355* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %55, 2
  %57 = mul nsw i32 %56, 4
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @do_div(i32 %58, i32 10)
  %60 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %61 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %60, i32* @imx355_ctrl_ops, i32 %61, i32 %62, i32 %63, i32 1, i32 %64)
  %66 = load %struct.imx355*, %struct.imx355** %3, align 8
  %67 = getelementptr inbounds %struct.imx355, %struct.imx355* %66, i32 0, i32 8
  store i8* %65, i8** %67, align 8
  %68 = load %struct.imx355*, %struct.imx355** %3, align 8
  %69 = getelementptr inbounds %struct.imx355, %struct.imx355* %68, i32 0, i32 7
  %70 = load %struct.imx355_mode*, %struct.imx355_mode** %69, align 8
  store %struct.imx355_mode* %70, %struct.imx355_mode** %11, align 8
  %71 = load %struct.imx355_mode*, %struct.imx355_mode** %11, align 8
  %72 = getelementptr inbounds %struct.imx355_mode, %struct.imx355_mode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.imx355_mode*, %struct.imx355_mode** %11, align 8
  %75 = getelementptr inbounds %struct.imx355_mode, %struct.imx355_mode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %73, %76
  store i32 %77, i32* %7, align 4
  %78 = load %struct.imx355_mode*, %struct.imx355_mode** %11, align 8
  %79 = getelementptr inbounds %struct.imx355_mode, %struct.imx355_mode* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.imx355_mode*, %struct.imx355_mode** %11, align 8
  %82 = getelementptr inbounds %struct.imx355_mode, %struct.imx355_mode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %86 = load i32, i32* @V4L2_CID_VBLANK, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @IMX355_FLL_MAX, align 4
  %89 = load %struct.imx355_mode*, %struct.imx355_mode** %11, align 8
  %90 = getelementptr inbounds %struct.imx355_mode, %struct.imx355_mode* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %88, %91
  %93 = load i32, i32* %7, align 4
  %94 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %85, i32* @imx355_ctrl_ops, i32 %86, i32 %87, i32 %92, i32 1, i32 %93)
  %95 = load %struct.imx355*, %struct.imx355** %3, align 8
  %96 = getelementptr inbounds %struct.imx355, %struct.imx355* %95, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  %97 = load %struct.imx355_mode*, %struct.imx355_mode** %11, align 8
  %98 = getelementptr inbounds %struct.imx355_mode, %struct.imx355_mode* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.imx355_mode*, %struct.imx355_mode** %11, align 8
  %101 = getelementptr inbounds %struct.imx355_mode, %struct.imx355_mode* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  store i32 %103, i32* %9, align 4
  %104 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %105 = load i32, i32* @V4L2_CID_HBLANK, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %104, i32* @imx355_ctrl_ops, i32 %105, i32 %106, i32 %107, i32 1, i32 %108)
  %110 = bitcast i8* %109 to %struct.TYPE_4__*
  %111 = load %struct.imx355*, %struct.imx355** %3, align 8
  %112 = getelementptr inbounds %struct.imx355, %struct.imx355* %111, i32 0, i32 5
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %112, align 8
  %113 = load %struct.imx355*, %struct.imx355** %3, align 8
  %114 = getelementptr inbounds %struct.imx355, %struct.imx355* %113, i32 0, i32 5
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = icmp ne %struct.TYPE_4__* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %52
  %118 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %119 = load %struct.imx355*, %struct.imx355** %3, align 8
  %120 = getelementptr inbounds %struct.imx355, %struct.imx355* %119, i32 0, i32 5
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %118
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %117, %52
  %126 = load %struct.imx355_mode*, %struct.imx355_mode** %11, align 8
  %127 = getelementptr inbounds %struct.imx355_mode, %struct.imx355_mode* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, 10
  store i32 %129, i32* %6, align 4
  %130 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %131 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %132 = load i32, i32* @IMX355_EXPOSURE_MIN, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @IMX355_EXPOSURE_STEP, align 4
  %135 = load i32, i32* @IMX355_EXPOSURE_DEFAULT, align 4
  %136 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %130, i32* @imx355_ctrl_ops, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load %struct.imx355*, %struct.imx355** %3, align 8
  %138 = getelementptr inbounds %struct.imx355, %struct.imx355* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %140 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %141 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %139, i32* @imx355_ctrl_ops, i32 %140, i32 0, i32 1, i32 1, i32 0)
  %142 = load %struct.imx355*, %struct.imx355** %3, align 8
  %143 = getelementptr inbounds %struct.imx355, %struct.imx355* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  %144 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %145 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %146 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %144, i32* @imx355_ctrl_ops, i32 %145, i32 0, i32 1, i32 1, i32 0)
  %147 = load %struct.imx355*, %struct.imx355** %3, align 8
  %148 = getelementptr inbounds %struct.imx355, %struct.imx355* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %150 = load i32, i32* @V4L2_CID_ANALOGUE_GAIN, align 4
  %151 = load i32, i32* @IMX355_ANA_GAIN_MIN, align 4
  %152 = load i32, i32* @IMX355_ANA_GAIN_MAX, align 4
  %153 = load i32, i32* @IMX355_ANA_GAIN_STEP, align 4
  %154 = load i32, i32* @IMX355_ANA_GAIN_DEFAULT, align 4
  %155 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %149, i32* @imx355_ctrl_ops, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %157 = load i32, i32* @V4L2_CID_DIGITAL_GAIN, align 4
  %158 = load i32, i32* @IMX355_DGTL_GAIN_MIN, align 4
  %159 = load i32, i32* @IMX355_DGTL_GAIN_MAX, align 4
  %160 = load i32, i32* @IMX355_DGTL_GAIN_STEP, align 4
  %161 = load i32, i32* @IMX355_DGTL_GAIN_DEFAULT, align 4
  %162 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %156, i32* @imx355_ctrl_ops, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %164 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %165 = load i32, i32* @imx355_test_pattern_menu, align 4
  %166 = call i64 @ARRAY_SIZE(i32 %165)
  %167 = sub nsw i64 %166, 1
  %168 = load i32, i32* @imx355_test_pattern_menu, align 4
  %169 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler* %163, i32* @imx355_ctrl_ops, i32 %164, i64 %167, i32 0, i32 0, i32 %168)
  %170 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %171 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %125
  %175 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %176 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %13, align 4
  %178 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %179 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %178, i32 0, i32 0
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @dev_err(i32* %179, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %180)
  br label %187

182:                                              ; preds = %125
  %183 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %184 = load %struct.imx355*, %struct.imx355** %3, align 8
  %185 = getelementptr inbounds %struct.imx355, %struct.imx355* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %183, %struct.v4l2_ctrl_handler** %186, align 8
  store i32 0, i32* %2, align 4
  br label %191

187:                                              ; preds = %174
  %188 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %189 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %188)
  %190 = load i32, i32* %13, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %187, %182, %23
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local %struct.TYPE_6__* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i64, i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler*, i32*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
