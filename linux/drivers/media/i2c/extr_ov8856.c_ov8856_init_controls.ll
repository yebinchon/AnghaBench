; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov8856.c_ov8856_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov8856.c_ov8856_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov8856 = type { %struct.TYPE_7__, i8*, %struct.TYPE_6__*, %struct.TYPE_5__*, i8*, i8*, %struct.TYPE_8__*, i32, %struct.v4l2_ctrl_handler }
%struct.TYPE_7__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_ctrl_handler = type { i32, i32* }

@ov8856_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_LINK_FREQ = common dso_local global i32 0, align 4
@link_freq_menu_items = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@OV8856_LINK_FREQ_720MBPS = common dso_local global i32 0, align 4
@V4L2_CID_VBLANK = common dso_local global i32 0, align 4
@OV8856_VTS_MAX = common dso_local global i64 0, align 8
@V4L2_CID_HBLANK = common dso_local global i32 0, align 4
@V4L2_CID_ANALOGUE_GAIN = common dso_local global i32 0, align 4
@OV8856_ANAL_GAIN_MIN = common dso_local global i64 0, align 8
@OV8856_ANAL_GAIN_MAX = common dso_local global i64 0, align 8
@OV8856_ANAL_GAIN_STEP = common dso_local global i32 0, align 4
@V4L2_CID_DIGITAL_GAIN = common dso_local global i32 0, align 4
@OV8856_DGTL_GAIN_MIN = common dso_local global i64 0, align 8
@OV8856_DGTL_GAIN_MAX = common dso_local global i64 0, align 8
@OV8856_DGTL_GAIN_STEP = common dso_local global i32 0, align 4
@OV8856_DGTL_GAIN_DEFAULT = common dso_local global i64 0, align 8
@OV8856_EXPOSURE_MAX_MARGIN = common dso_local global i64 0, align 8
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@OV8856_EXPOSURE_MIN = common dso_local global i64 0, align 8
@OV8856_EXPOSURE_STEP = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@ov8856_test_pattern_menu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov8856*)* @ov8856_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov8856_init_controls(%struct.ov8856* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov8856*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ov8856* %0, %struct.ov8856** %3, align 8
  %8 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %9 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %8, i32 0, i32 8
  store %struct.v4l2_ctrl_handler* %9, %struct.v4l2_ctrl_handler** %4, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %11 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %10, i32 8)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %175

16:                                               ; preds = %1
  %17 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %18 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %17, i32 0, i32 7
  %19 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %22 = load i32, i32* @V4L2_CID_LINK_FREQ, align 4
  %23 = load i32, i32* @link_freq_menu_items, align 4
  %24 = call i64 @ARRAY_SIZE(i32 %23)
  %25 = sub nsw i64 %24, 1
  %26 = load i32, i32* @link_freq_menu_items, align 4
  %27 = call %struct.TYPE_8__* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler* %21, i32* @ov8856_ctrl_ops, i32 %22, i64 %25, i32 0, i32 %26)
  %28 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %29 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %28, i32 0, i32 6
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %29, align 8
  %30 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %31 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %30, i32 0, i32 6
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %16
  %35 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %36 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %37 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %36, i32 0, i32 6
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %34, %16
  %43 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %44 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %45 = load i32, i32* @OV8856_LINK_FREQ_720MBPS, align 4
  %46 = call i64 @to_pixel_rate(i32 %45)
  %47 = load i32, i32* @OV8856_LINK_FREQ_720MBPS, align 4
  %48 = call i64 @to_pixel_rate(i32 %47)
  %49 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %43, i32* @ov8856_ctrl_ops, i32 %44, i64 0, i64 %46, i32 1, i64 %48)
  %50 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %51 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %53 = load i32, i32* @V4L2_CID_VBLANK, align 4
  %54 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %55 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %60 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %58, %63
  %65 = load i64, i64* @OV8856_VTS_MAX, align 8
  %66 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %67 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %65, %70
  %72 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %73 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %78 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %76, %81
  %83 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %52, i32* @ov8856_ctrl_ops, i32 %53, i64 %64, i64 %71, i32 1, i64 %82)
  %84 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %85 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %87 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %92 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @to_pixels_per_line(i32 %90, i32 %95)
  %97 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %98 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %96, %101
  store i64 %102, i64* %6, align 8
  %103 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %104 = load i32, i32* @V4L2_CID_HBLANK, align 4
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %103, i32* @ov8856_ctrl_ops, i32 %104, i64 %105, i64 %106, i32 1, i64 %107)
  %109 = bitcast i8* %108 to %struct.TYPE_5__*
  %110 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %111 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %110, i32 0, i32 3
  store %struct.TYPE_5__* %109, %struct.TYPE_5__** %111, align 8
  %112 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %113 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %112, i32 0, i32 3
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = icmp ne %struct.TYPE_5__* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %42
  %117 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %118 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %119 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %118, i32 0, i32 3
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %117
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %116, %42
  %125 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %126 = load i32, i32* @V4L2_CID_ANALOGUE_GAIN, align 4
  %127 = load i64, i64* @OV8856_ANAL_GAIN_MIN, align 8
  %128 = load i64, i64* @OV8856_ANAL_GAIN_MAX, align 8
  %129 = load i32, i32* @OV8856_ANAL_GAIN_STEP, align 4
  %130 = load i64, i64* @OV8856_ANAL_GAIN_MIN, align 8
  %131 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %125, i32* @ov8856_ctrl_ops, i32 %126, i64 %127, i64 %128, i32 %129, i64 %130)
  %132 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %133 = load i32, i32* @V4L2_CID_DIGITAL_GAIN, align 4
  %134 = load i64, i64* @OV8856_DGTL_GAIN_MIN, align 8
  %135 = load i64, i64* @OV8856_DGTL_GAIN_MAX, align 8
  %136 = load i32, i32* @OV8856_DGTL_GAIN_STEP, align 4
  %137 = load i64, i64* @OV8856_DGTL_GAIN_DEFAULT, align 8
  %138 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %132, i32* @ov8856_ctrl_ops, i32 %133, i64 %134, i64 %135, i32 %136, i64 %137)
  %139 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %140 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %139, i32 0, i32 2
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @OV8856_EXPOSURE_MAX_MARGIN, align 8
  %145 = sub nsw i64 %143, %144
  store i64 %145, i64* %5, align 8
  %146 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %147 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %148 = load i64, i64* @OV8856_EXPOSURE_MIN, align 8
  %149 = load i64, i64* %5, align 8
  %150 = load i32, i32* @OV8856_EXPOSURE_STEP, align 4
  %151 = load i64, i64* %5, align 8
  %152 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %146, i32* @ov8856_ctrl_ops, i32 %147, i64 %148, i64 %149, i32 %150, i64 %151)
  %153 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %154 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %156 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %157 = load i32, i32* @ov8856_test_pattern_menu, align 4
  %158 = call i64 @ARRAY_SIZE(i32 %157)
  %159 = sub nsw i64 %158, 1
  %160 = load i32, i32* @ov8856_test_pattern_menu, align 4
  %161 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler* %155, i32* @ov8856_ctrl_ops, i32 %156, i64 %159, i32 0, i32 0, i32 %160)
  %162 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %163 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %124
  %167 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %168 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %2, align 4
  br label %175

170:                                              ; preds = %124
  %171 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %172 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %173 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %171, %struct.v4l2_ctrl_handler** %174, align 8
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %170, %166, %14
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local %struct.TYPE_8__* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i64, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i64, i64, i32, i64) #1

declare dso_local i64 @to_pixel_rate(i32) #1

declare dso_local i64 @to_pixels_per_line(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler*, i32*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
