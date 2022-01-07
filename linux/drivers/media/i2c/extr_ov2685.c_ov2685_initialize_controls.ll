; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2685.c_ov2685_initialize_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2685.c_ov2685_initialize_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2685 = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32, i8*, i8*, i8*, %struct.TYPE_4__*, i32, %struct.ov2685_mode*, %struct.v4l2_ctrl_handler }
%struct.TYPE_6__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ov2685_mode = type { i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { i32, i32* }
%struct.v4l2_ctrl = type { i32 }

@V4L2_CID_LINK_FREQ = common dso_local global i32 0, align 4
@link_freq_menu_items = common dso_local global i32* null, align 8
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@OV2685_LANES = common dso_local global i32 0, align 4
@OV2685_BITS_PER_SAMPLE = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@V4L2_CID_HBLANK = common dso_local global i32 0, align 4
@ov2685_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_VBLANK = common dso_local global i32 0, align 4
@OV2685_VTS_MAX = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@OV2685_EXPOSURE_MIN = common dso_local global i32 0, align 4
@OV2685_EXPOSURE_STEP = common dso_local global i32 0, align 4
@V4L2_CID_ANALOGUE_GAIN = common dso_local global i32 0, align 4
@OV2685_GAIN_MIN = common dso_local global i32 0, align 4
@OV2685_GAIN_MAX = common dso_local global i32 0, align 4
@OV2685_GAIN_STEP = common dso_local global i32 0, align 4
@OV2685_GAIN_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@ov2685_test_pattern_menu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to init controls(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2685*)* @ov2685_initialize_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2685_initialize_controls(%struct.ov2685* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov2685*, align 8
  %4 = alloca %struct.ov2685_mode*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ov2685* %0, %struct.ov2685** %3, align 8
  %11 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %12 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %11, i32 0, i32 9
  store %struct.v4l2_ctrl_handler* %12, %struct.v4l2_ctrl_handler** %5, align 8
  %13 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %14 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %13, i32 0, i32 8
  %15 = load %struct.ov2685_mode*, %struct.ov2685_mode** %14, align 8
  store %struct.ov2685_mode* %15, %struct.ov2685_mode** %4, align 8
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %17 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %16, i32 8)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %2, align 4
  br label %162

22:                                               ; preds = %1
  %23 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %24 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %23, i32 0, i32 7
  %25 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %28 = load i32, i32* @V4L2_CID_LINK_FREQ, align 4
  %29 = load i32*, i32** @link_freq_menu_items, align 8
  %30 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler* %27, i32* null, i32 %28, i32 0, i32 0, i32* %29)
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
  %40 = load i32*, i32** @link_freq_menu_items, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 2
  %44 = load i32, i32* @OV2685_LANES, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* @OV2685_BITS_PER_SAMPLE, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %49 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %48, i32* null, i32 %49, i32 0, i32 %50, i32 1, i32 %51)
  %53 = load %struct.ov2685_mode*, %struct.ov2685_mode** %4, align 8
  %54 = getelementptr inbounds %struct.ov2685_mode, %struct.ov2685_mode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ov2685_mode*, %struct.ov2685_mode** %4, align 8
  %57 = getelementptr inbounds %struct.ov2685_mode, %struct.ov2685_mode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %55, %58
  store i32 %59, i32* %9, align 4
  %60 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %61 = load i32, i32* @V4L2_CID_HBLANK, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %60, i32* null, i32 %61, i32 %62, i32 %63, i32 1, i32 %64)
  %66 = bitcast i8* %65 to %struct.TYPE_4__*
  %67 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %68 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %67, i32 0, i32 6
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %68, align 8
  %69 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %70 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %69, i32 0, i32 6
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %39
  %74 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %75 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %76 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %75, i32 0, i32 6
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %74
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %73, %39
  %82 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %83 = load i32, i32* @V4L2_CID_VBLANK, align 4
  %84 = load %struct.ov2685_mode*, %struct.ov2685_mode** %4, align 8
  %85 = getelementptr inbounds %struct.ov2685_mode, %struct.ov2685_mode* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ov2685_mode*, %struct.ov2685_mode** %4, align 8
  %88 = getelementptr inbounds %struct.ov2685_mode, %struct.ov2685_mode* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %86, %89
  %91 = load i32, i32* @OV2685_VTS_MAX, align 4
  %92 = load %struct.ov2685_mode*, %struct.ov2685_mode** %4, align 8
  %93 = getelementptr inbounds %struct.ov2685_mode, %struct.ov2685_mode* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  %96 = load %struct.ov2685_mode*, %struct.ov2685_mode** %4, align 8
  %97 = getelementptr inbounds %struct.ov2685_mode, %struct.ov2685_mode* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ov2685_mode*, %struct.ov2685_mode** %4, align 8
  %100 = getelementptr inbounds %struct.ov2685_mode, %struct.ov2685_mode* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %98, %101
  %103 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %82, i32* @ov2685_ctrl_ops, i32 %83, i32 %90, i32 %95, i32 1, i32 %102)
  %104 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %105 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %104, i32 0, i32 5
  store i8* %103, i8** %105, align 8
  %106 = load %struct.ov2685_mode*, %struct.ov2685_mode** %4, align 8
  %107 = getelementptr inbounds %struct.ov2685_mode, %struct.ov2685_mode* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 4
  store i32 %109, i32* %7, align 4
  %110 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %111 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %112 = load i32, i32* @OV2685_EXPOSURE_MIN, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @OV2685_EXPOSURE_STEP, align 4
  %115 = load %struct.ov2685_mode*, %struct.ov2685_mode** %4, align 8
  %116 = getelementptr inbounds %struct.ov2685_mode, %struct.ov2685_mode* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %110, i32* @ov2685_ctrl_ops, i32 %111, i32 %112, i32 %113, i32 %114, i32 %117)
  %119 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %120 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  %121 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %122 = load i32, i32* @V4L2_CID_ANALOGUE_GAIN, align 4
  %123 = load i32, i32* @OV2685_GAIN_MIN, align 4
  %124 = load i32, i32* @OV2685_GAIN_MAX, align 4
  %125 = load i32, i32* @OV2685_GAIN_STEP, align 4
  %126 = load i32, i32* @OV2685_GAIN_DEFAULT, align 4
  %127 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %121, i32* @ov2685_ctrl_ops, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %129 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %131 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %132 = load i32, i32* @ov2685_test_pattern_menu, align 4
  %133 = call i64 @ARRAY_SIZE(i32 %132)
  %134 = sub nsw i64 %133, 1
  %135 = load i32, i32* @ov2685_test_pattern_menu, align 4
  %136 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler* %130, i32* @ov2685_ctrl_ops, i32 %131, i64 %134, i32 0, i32 0, i32 %135)
  %137 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %138 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %140 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %81
  %144 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %145 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %10, align 4
  %147 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %148 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @dev_err(i32* %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %151)
  br label %158

153:                                              ; preds = %81
  %154 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %155 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %156 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %154, %struct.v4l2_ctrl_handler** %157, align 8
  store i32 0, i32* %2, align 4
  br label %162

158:                                              ; preds = %143
  %159 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %160 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %159)
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %158, %153, %20
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32*) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

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
