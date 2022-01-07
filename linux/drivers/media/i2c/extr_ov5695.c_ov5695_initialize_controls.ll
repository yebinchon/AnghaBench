; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c_ov5695_initialize_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c_ov5695_initialize_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5695 = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32, i8*, i8*, i8*, i8*, %struct.TYPE_4__*, i32, %struct.ov5695_mode*, %struct.v4l2_ctrl_handler }
%struct.TYPE_6__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ov5695_mode = type { i64, i64, i64, i64, i64 }
%struct.v4l2_ctrl_handler = type { i32, i32* }
%struct.v4l2_ctrl = type { i32 }

@V4L2_CID_LINK_FREQ = common dso_local global i32 0, align 4
@link_freq_menu_items = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@OV5695_PIXEL_RATE = common dso_local global i64 0, align 8
@V4L2_CID_HBLANK = common dso_local global i32 0, align 4
@ov5695_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_VBLANK = common dso_local global i32 0, align 4
@OV5695_VTS_MAX = common dso_local global i64 0, align 8
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@OV5695_EXPOSURE_MIN = common dso_local global i64 0, align 8
@OV5695_EXPOSURE_STEP = common dso_local global i32 0, align 4
@V4L2_CID_ANALOGUE_GAIN = common dso_local global i32 0, align 4
@ANALOG_GAIN_MIN = common dso_local global i64 0, align 8
@ANALOG_GAIN_MAX = common dso_local global i64 0, align 8
@ANALOG_GAIN_STEP = common dso_local global i32 0, align 4
@ANALOG_GAIN_DEFAULT = common dso_local global i64 0, align 8
@V4L2_CID_DIGITAL_GAIN = common dso_local global i32 0, align 4
@OV5695_DIGI_GAIN_MIN = common dso_local global i64 0, align 8
@OV5695_DIGI_GAIN_MAX = common dso_local global i64 0, align 8
@OV5695_DIGI_GAIN_STEP = common dso_local global i32 0, align 4
@OV5695_DIGI_GAIN_DEFAULT = common dso_local global i64 0, align 8
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@ov5695_test_pattern_menu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to init controls(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5695*)* @ov5695_initialize_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5695_initialize_controls(%struct.ov5695* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov5695*, align 8
  %4 = alloca %struct.ov5695_mode*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ov5695* %0, %struct.ov5695** %3, align 8
  %11 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %12 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %11, i32 0, i32 10
  store %struct.v4l2_ctrl_handler* %12, %struct.v4l2_ctrl_handler** %5, align 8
  %13 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %14 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %13, i32 0, i32 9
  %15 = load %struct.ov5695_mode*, %struct.ov5695_mode** %14, align 8
  store %struct.ov5695_mode* %15, %struct.ov5695_mode** %4, align 8
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %17 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %16, i32 8)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %2, align 4
  br label %158

22:                                               ; preds = %1
  %23 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %24 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %23, i32 0, i32 8
  %25 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %28 = load i32, i32* @V4L2_CID_LINK_FREQ, align 4
  %29 = load i32, i32* @link_freq_menu_items, align 4
  %30 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler* %27, i32* null, i32 %28, i32 0, i32 0, i32 %29)
  store %struct.v4l2_ctrl* %30, %struct.v4l2_ctrl** %6, align 8
  %31 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %32 = icmp ne %struct.v4l2_ctrl* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %35 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %22
  %40 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %41 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %42 = load i64, i64* @OV5695_PIXEL_RATE, align 8
  %43 = load i64, i64* @OV5695_PIXEL_RATE, align 8
  %44 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %40, i32* null, i32 %41, i64 0, i64 %42, i32 1, i64 %43)
  %45 = load %struct.ov5695_mode*, %struct.ov5695_mode** %4, align 8
  %46 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ov5695_mode*, %struct.ov5695_mode** %4, align 8
  %49 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %9, align 8
  %52 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %53 = load i32, i32* @V4L2_CID_HBLANK, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %52, i32* null, i32 %53, i64 %54, i64 %55, i32 1, i64 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_4__*
  %59 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %60 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %59, i32 0, i32 7
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %60, align 8
  %61 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %62 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %61, i32 0, i32 7
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %39
  %66 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %67 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %68 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %67, i32 0, i32 7
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %66
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %65, %39
  %74 = load %struct.ov5695_mode*, %struct.ov5695_mode** %4, align 8
  %75 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ov5695_mode*, %struct.ov5695_mode** %4, align 8
  %78 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  store i64 %80, i64* %8, align 8
  %81 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %82 = load i32, i32* @V4L2_CID_VBLANK, align 4
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @OV5695_VTS_MAX, align 8
  %85 = load %struct.ov5695_mode*, %struct.ov5695_mode** %4, align 8
  %86 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = load i64, i64* %8, align 8
  %90 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %81, i32* @ov5695_ctrl_ops, i32 %82, i64 %83, i64 %88, i32 1, i64 %89)
  %91 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %92 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %91, i32 0, i32 6
  store i8* %90, i8** %92, align 8
  %93 = load %struct.ov5695_mode*, %struct.ov5695_mode** %4, align 8
  %94 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, 4
  store i64 %96, i64* %7, align 8
  %97 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %98 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %99 = load i64, i64* @OV5695_EXPOSURE_MIN, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i32, i32* @OV5695_EXPOSURE_STEP, align 4
  %102 = load %struct.ov5695_mode*, %struct.ov5695_mode** %4, align 8
  %103 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %97, i32* @ov5695_ctrl_ops, i32 %98, i64 %99, i64 %100, i32 %101, i64 %104)
  %106 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %107 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %109 = load i32, i32* @V4L2_CID_ANALOGUE_GAIN, align 4
  %110 = load i64, i64* @ANALOG_GAIN_MIN, align 8
  %111 = load i64, i64* @ANALOG_GAIN_MAX, align 8
  %112 = load i32, i32* @ANALOG_GAIN_STEP, align 4
  %113 = load i64, i64* @ANALOG_GAIN_DEFAULT, align 8
  %114 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %108, i32* @ov5695_ctrl_ops, i32 %109, i64 %110, i64 %111, i32 %112, i64 %113)
  %115 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %116 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %118 = load i32, i32* @V4L2_CID_DIGITAL_GAIN, align 4
  %119 = load i64, i64* @OV5695_DIGI_GAIN_MIN, align 8
  %120 = load i64, i64* @OV5695_DIGI_GAIN_MAX, align 8
  %121 = load i32, i32* @OV5695_DIGI_GAIN_STEP, align 4
  %122 = load i64, i64* @OV5695_DIGI_GAIN_DEFAULT, align 8
  %123 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %117, i32* @ov5695_ctrl_ops, i32 %118, i64 %119, i64 %120, i32 %121, i64 %122)
  %124 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %125 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %127 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %128 = load i32, i32* @ov5695_test_pattern_menu, align 4
  %129 = call i64 @ARRAY_SIZE(i32 %128)
  %130 = sub nsw i64 %129, 1
  %131 = load i32, i32* @ov5695_test_pattern_menu, align 4
  %132 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler* %126, i32* @ov5695_ctrl_ops, i32 %127, i64 %130, i32 0, i32 0, i32 %131)
  %133 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %134 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %136 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %73
  %140 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %141 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %10, align 4
  %143 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %144 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %143, i32 0, i32 1
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @dev_err(i32* %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %147)
  br label %154

149:                                              ; preds = %73
  %150 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %151 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %152 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %150, %struct.v4l2_ctrl_handler** %153, align 8
  store i32 0, i32* %2, align 4
  br label %158

154:                                              ; preds = %139
  %155 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %156 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %155)
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %154, %149, %20
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i64, i64, i32, i64) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler*, i32*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
