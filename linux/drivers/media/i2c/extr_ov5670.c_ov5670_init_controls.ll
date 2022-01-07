; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5670.c_ov5670_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5670.c_ov5670_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.ov5670 = type { %struct.TYPE_8__, i8*, %struct.TYPE_7__*, %struct.TYPE_6__*, i8*, i8*, %struct.TYPE_9__*, i32, %struct.v4l2_ctrl_handler }
%struct.TYPE_8__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.v4l2_ctrl_handler = type { i32, i32* }

@ov5670_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_LINK_FREQ = common dso_local global i32 0, align 4
@link_freq_menu_items = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@link_freq_configs = common dso_local global %struct.TYPE_10__* null, align 8
@OV5670_VTS_MAX = common dso_local global i64 0, align 8
@V4L2_CID_VBLANK = common dso_local global i32 0, align 4
@V4L2_CID_HBLANK = common dso_local global i32 0, align 4
@OV5670_FIXED_PPL = common dso_local global i64 0, align 8
@V4L2_CID_ANALOGUE_GAIN = common dso_local global i32 0, align 4
@ANALOG_GAIN_MIN = common dso_local global i64 0, align 8
@ANALOG_GAIN_MAX = common dso_local global i64 0, align 8
@ANALOG_GAIN_STEP = common dso_local global i32 0, align 4
@ANALOG_GAIN_DEFAULT = common dso_local global i64 0, align 8
@V4L2_CID_DIGITAL_GAIN = common dso_local global i32 0, align 4
@OV5670_DGTL_GAIN_MIN = common dso_local global i64 0, align 8
@OV5670_DGTL_GAIN_MAX = common dso_local global i64 0, align 8
@OV5670_DGTL_GAIN_STEP = common dso_local global i32 0, align 4
@OV5670_DGTL_GAIN_DEFAULT = common dso_local global i64 0, align 8
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@OV5670_EXPOSURE_MIN = common dso_local global i64 0, align 8
@OV5670_EXPOSURE_STEP = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@ov5670_test_pattern_menu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5670*)* @ov5670_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5670_init_controls(%struct.ov5670* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov5670*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ov5670* %0, %struct.ov5670** %3, align 8
  %10 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %11 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %10, i32 0, i32 8
  store %struct.v4l2_ctrl_handler* %11, %struct.v4l2_ctrl_handler** %4, align 8
  %12 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %13 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %12, i32 8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %2, align 4
  br label %185

18:                                               ; preds = %1
  %19 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %20 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %19, i32 0, i32 7
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %24 = load i32, i32* @V4L2_CID_LINK_FREQ, align 4
  %25 = load i32, i32* @link_freq_menu_items, align 4
  %26 = call %struct.TYPE_9__* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler* %23, i32* @ov5670_ctrl_ops, i32 %24, i32 0, i32 0, i32 %25)
  %27 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %28 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %27, i32 0, i32 6
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %28, align 8
  %29 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %30 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %29, i32 0, i32 6
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %35 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %36 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %35, i32 0, i32 6
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %34
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %33, %18
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %43 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @link_freq_configs, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** @link_freq_configs, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %42, i32* @ov5670_ctrl_ops, i32 %43, i64 0, i64 %47, i32 1, i64 %51)
  %53 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %54 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load i64, i64* @OV5670_VTS_MAX, align 8
  %56 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %57 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %56, i32 0, i32 2
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %55, %60
  store i64 %61, i64* %5, align 8
  %62 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %63 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %62, i32 0, i32 2
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %68 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %66, %71
  store i64 %72, i64* %6, align 8
  %73 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %74 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %79 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %77, %82
  store i64 %83, i64* %7, align 8
  %84 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %85 = load i32, i32* @V4L2_CID_VBLANK, align 4
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %84, i32* @ov5670_ctrl_ops, i32 %85, i64 %86, i64 %87, i32 1, i64 %88)
  %90 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %91 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %93 = load i32, i32* @V4L2_CID_HBLANK, align 4
  %94 = load i64, i64* @OV5670_FIXED_PPL, align 8
  %95 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %96 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %94, %99
  %101 = load i64, i64* @OV5670_FIXED_PPL, align 8
  %102 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %103 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %102, i32 0, i32 2
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %101, %106
  %108 = load i64, i64* @OV5670_FIXED_PPL, align 8
  %109 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %110 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %109, i32 0, i32 2
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %108, %113
  %115 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %92, i32* @ov5670_ctrl_ops, i32 %93, i64 %100, i64 %107, i32 1, i64 %114)
  %116 = bitcast i8* %115 to %struct.TYPE_6__*
  %117 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %118 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %117, i32 0, i32 3
  store %struct.TYPE_6__* %116, %struct.TYPE_6__** %118, align 8
  %119 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %120 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %119, i32 0, i32 3
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = icmp ne %struct.TYPE_6__* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %41
  %124 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %125 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %126 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %125, i32 0, i32 3
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %124
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %123, %41
  %132 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %133 = load i32, i32* @V4L2_CID_ANALOGUE_GAIN, align 4
  %134 = load i64, i64* @ANALOG_GAIN_MIN, align 8
  %135 = load i64, i64* @ANALOG_GAIN_MAX, align 8
  %136 = load i32, i32* @ANALOG_GAIN_STEP, align 4
  %137 = load i64, i64* @ANALOG_GAIN_DEFAULT, align 8
  %138 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %132, i32* @ov5670_ctrl_ops, i32 %133, i64 %134, i64 %135, i32 %136, i64 %137)
  %139 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %140 = load i32, i32* @V4L2_CID_DIGITAL_GAIN, align 4
  %141 = load i64, i64* @OV5670_DGTL_GAIN_MIN, align 8
  %142 = load i64, i64* @OV5670_DGTL_GAIN_MAX, align 8
  %143 = load i32, i32* @OV5670_DGTL_GAIN_STEP, align 4
  %144 = load i64, i64* @OV5670_DGTL_GAIN_DEFAULT, align 8
  %145 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %139, i32* @ov5670_ctrl_ops, i32 %140, i64 %141, i64 %142, i32 %143, i64 %144)
  %146 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %147 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %146, i32 0, i32 2
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %150, 8
  store i64 %151, i64* %8, align 8
  %152 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %153 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %154 = load i64, i64* @OV5670_EXPOSURE_MIN, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load i32, i32* @OV5670_EXPOSURE_STEP, align 4
  %157 = load i64, i64* %8, align 8
  %158 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %152, i32* @ov5670_ctrl_ops, i32 %153, i64 %154, i64 %155, i32 %156, i64 %157)
  %159 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %160 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %162 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %163 = load i32, i32* @ov5670_test_pattern_menu, align 4
  %164 = call i64 @ARRAY_SIZE(i32 %163)
  %165 = sub nsw i64 %164, 1
  %166 = load i32, i32* @ov5670_test_pattern_menu, align 4
  %167 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler* %161, i32* @ov5670_ctrl_ops, i32 %162, i64 %165, i32 0, i32 0, i32 %166)
  %168 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %169 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %131
  %173 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %174 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %9, align 4
  br label %181

176:                                              ; preds = %131
  %177 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %178 = load %struct.ov5670*, %struct.ov5670** %3, align 8
  %179 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %177, %struct.v4l2_ctrl_handler** %180, align 8
  store i32 0, i32* %2, align 4
  br label %185

181:                                              ; preds = %172
  %182 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %183 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %182)
  %184 = load i32, i32* %9, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %181, %176, %16
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local %struct.TYPE_9__* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i64, i64, i32, i64) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler*, i32*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
