; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5675 = type { %struct.TYPE_7__, i8*, %struct.TYPE_6__*, %struct.TYPE_5__*, i8*, i8*, %struct.TYPE_8__*, i32, %struct.v4l2_ctrl_handler }
%struct.TYPE_7__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_ctrl_handler = type { i32, i32* }

@ov5675_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_LINK_FREQ = common dso_local global i32 0, align 4
@link_freq_menu_items = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@OV5675_LINK_FREQ_900MBPS = common dso_local global i32 0, align 4
@V4L2_CID_VBLANK = common dso_local global i32 0, align 4
@OV5675_VTS_MAX = common dso_local global i32 0, align 4
@V4L2_CID_HBLANK = common dso_local global i32 0, align 4
@V4L2_CID_ANALOGUE_GAIN = common dso_local global i32 0, align 4
@OV5675_ANAL_GAIN_MIN = common dso_local global i32 0, align 4
@OV5675_ANAL_GAIN_MAX = common dso_local global i32 0, align 4
@OV5675_ANAL_GAIN_STEP = common dso_local global i32 0, align 4
@V4L2_CID_DIGITAL_GAIN = common dso_local global i32 0, align 4
@OV5675_DGTL_GAIN_MIN = common dso_local global i32 0, align 4
@OV5675_DGTL_GAIN_MAX = common dso_local global i32 0, align 4
@OV5675_DGTL_GAIN_STEP = common dso_local global i32 0, align 4
@OV5675_DGTL_GAIN_DEFAULT = common dso_local global i32 0, align 4
@OV5675_EXPOSURE_MAX_MARGIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@OV5675_EXPOSURE_MIN = common dso_local global i32 0, align 4
@OV5675_EXPOSURE_STEP = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@ov5675_test_pattern_menu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5675*)* @ov5675_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5675_init_controls(%struct.ov5675* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov5675*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ov5675* %0, %struct.ov5675** %3, align 8
  %8 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %9 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %8, i32 0, i32 8
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
  br label %176

16:                                               ; preds = %1
  %17 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %18 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %17, i32 0, i32 7
  %19 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %22 = load i32, i32* @V4L2_CID_LINK_FREQ, align 4
  %23 = load i32, i32* @link_freq_menu_items, align 4
  %24 = call i64 @ARRAY_SIZE(i32 %23)
  %25 = sub nsw i64 %24, 1
  %26 = load i32, i32* @link_freq_menu_items, align 4
  %27 = call %struct.TYPE_8__* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler* %21, i32* @ov5675_ctrl_ops, i32 %22, i64 %25, i32 0, i32 %26)
  %28 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %29 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %28, i32 0, i32 6
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %29, align 8
  %30 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %31 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %30, i32 0, i32 6
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %16
  %35 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %36 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %37 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %36, i32 0, i32 6
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %34, %16
  %43 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %44 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %45 = load i32, i32* @OV5675_LINK_FREQ_900MBPS, align 4
  %46 = call i32 @to_pixel_rate(i32 %45)
  %47 = load i32, i32* @OV5675_LINK_FREQ_900MBPS, align 4
  %48 = call i32 @to_pixel_rate(i32 %47)
  %49 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %43, i32* @ov5675_ctrl_ops, i32 %44, i32 0, i32 %46, i32 1, i32 %48)
  %50 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %51 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %53 = load i32, i32* @V4L2_CID_VBLANK, align 4
  %54 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %55 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %60 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %58, %63
  %65 = load i32, i32* @OV5675_VTS_MAX, align 4
  %66 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %67 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %65, %70
  %72 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %73 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %78 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %76, %81
  %83 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %52, i32* @ov5675_ctrl_ops, i32 %53, i32 %64, i32 %71, i32 1, i32 %82)
  %84 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %85 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %87 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %92 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @to_pixels_per_line(i32 %90, i32 %95)
  %97 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %98 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %96, %101
  store i32 %102, i32* %6, align 4
  %103 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %104 = load i32, i32* @V4L2_CID_HBLANK, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %103, i32* @ov5675_ctrl_ops, i32 %104, i32 %105, i32 %106, i32 1, i32 %107)
  %109 = bitcast i8* %108 to %struct.TYPE_5__*
  %110 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %111 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %110, i32 0, i32 3
  store %struct.TYPE_5__* %109, %struct.TYPE_5__** %111, align 8
  %112 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %113 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %112, i32 0, i32 3
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = icmp ne %struct.TYPE_5__* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %42
  %117 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %118 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %119 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %118, i32 0, i32 3
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %117
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %116, %42
  %125 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %126 = load i32, i32* @V4L2_CID_ANALOGUE_GAIN, align 4
  %127 = load i32, i32* @OV5675_ANAL_GAIN_MIN, align 4
  %128 = load i32, i32* @OV5675_ANAL_GAIN_MAX, align 4
  %129 = load i32, i32* @OV5675_ANAL_GAIN_STEP, align 4
  %130 = load i32, i32* @OV5675_ANAL_GAIN_MIN, align 4
  %131 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %125, i32* @ov5675_ctrl_ops, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %133 = load i32, i32* @V4L2_CID_DIGITAL_GAIN, align 4
  %134 = load i32, i32* @OV5675_DGTL_GAIN_MIN, align 4
  %135 = load i32, i32* @OV5675_DGTL_GAIN_MAX, align 4
  %136 = load i32, i32* @OV5675_DGTL_GAIN_STEP, align 4
  %137 = load i32, i32* @OV5675_DGTL_GAIN_DEFAULT, align 4
  %138 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %132, i32* @ov5675_ctrl_ops, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %140 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %139, i32 0, i32 2
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @OV5675_EXPOSURE_MAX_MARGIN, align 4
  %145 = sub nsw i32 %143, %144
  %146 = sdiv i32 %145, 2
  store i32 %146, i32* %5, align 4
  %147 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %148 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %149 = load i32, i32* @OV5675_EXPOSURE_MIN, align 4
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @OV5675_EXPOSURE_STEP, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %147, i32* @ov5675_ctrl_ops, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %155 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %157 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %158 = load i32, i32* @ov5675_test_pattern_menu, align 4
  %159 = call i64 @ARRAY_SIZE(i32 %158)
  %160 = sub nsw i64 %159, 1
  %161 = load i32, i32* @ov5675_test_pattern_menu, align 4
  %162 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler* %156, i32* @ov5675_ctrl_ops, i32 %157, i64 %160, i32 0, i32 0, i32 %161)
  %163 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %164 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %124
  %168 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %169 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %2, align 4
  br label %176

171:                                              ; preds = %124
  %172 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %173 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %174 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %172, %struct.v4l2_ctrl_handler** %175, align 8
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %171, %167, %14
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local %struct.TYPE_8__* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i64, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @to_pixel_rate(i32) #1

declare dso_local i32 @to_pixels_per_line(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler*, i32*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
