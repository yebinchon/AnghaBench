; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.s5c73m3 = type { i64, i32 }

@s5c73m3_dbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set_ctrl: %s, value: %d\0A\00", align 1
@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@COMM_WDR = common dso_local global i32 0, align 4
@COMM_ZOOM_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @s5c73m3_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.s5c73m3*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %7 = call %struct.v4l2_subdev* @ctrl_to_sensor_sd(%struct.v4l2_ctrl* %6)
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %3, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.s5c73m3* @sensor_sd_to_s5c73m3(%struct.v4l2_subdev* %8)
  store %struct.s5c73m3* %9, %struct.s5c73m3** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @s5c73m3_dbg, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @v4l2_dbg(i32 1, i32 %10, %struct.v4l2_subdev* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %20 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %23 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %136

27:                                               ; preds = %1
  %28 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %136

37:                                               ; preds = %27
  %38 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %39 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %135 [
    i32 142, label %41
    i32 141, label %45
    i32 139, label %51
    i32 140, label %57
    i32 138, label %63
    i32 137, label %69
    i32 136, label %75
    i32 135, label %81
    i32 134, label %87
    i32 133, label %93
    i32 132, label %99
    i32 131, label %105
    i32 130, label %111
    i32 129, label %117
    i32 128, label %128
  ]

41:                                               ; preds = %37
  %42 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %43 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %44 = call i32 @s5c73m3_3a_lock(%struct.s5c73m3* %42, %struct.v4l2_ctrl* %43)
  store i32 %44, i32* %5, align 4
  br label %135

45:                                               ; preds = %37
  %46 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %47 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %48 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @s5c73m3_set_white_balance(%struct.s5c73m3* %46, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %135

51:                                               ; preds = %37
  %52 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %53 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %54 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @s5c73m3_set_contrast(%struct.s5c73m3* %52, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %135

57:                                               ; preds = %37
  %58 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %59 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %60 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @s5c73m3_set_colorfx(%struct.s5c73m3* %58, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %135

63:                                               ; preds = %37
  %64 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %65 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %66 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @s5c73m3_set_exposure(%struct.s5c73m3* %64, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %135

69:                                               ; preds = %37
  %70 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %71 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %72 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @s5c73m3_set_auto_focus(%struct.s5c73m3* %70, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %135

75:                                               ; preds = %37
  %76 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %77 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %78 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @s5c73m3_set_stabilization(%struct.s5c73m3* %76, i32 %79)
  store i32 %80, i32* %5, align 4
  br label %135

81:                                               ; preds = %37
  %82 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %83 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %84 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @s5c73m3_set_iso(%struct.s5c73m3* %82, i32 %85)
  store i32 %86, i32* %5, align 4
  br label %135

87:                                               ; preds = %37
  %88 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %89 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %90 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @s5c73m3_set_jpeg_quality(%struct.s5c73m3* %88, i32 %91)
  store i32 %92, i32* %5, align 4
  br label %135

93:                                               ; preds = %37
  %94 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %95 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %96 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @s5c73m3_set_power_line_freq(%struct.s5c73m3* %94, i32 %97)
  store i32 %98, i32* %5, align 4
  br label %135

99:                                               ; preds = %37
  %100 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %101 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %102 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @s5c73m3_set_saturation(%struct.s5c73m3* %100, i32 %103)
  store i32 %104, i32* %5, align 4
  br label %135

105:                                              ; preds = %37
  %106 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %107 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %108 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @s5c73m3_set_scene_program(%struct.s5c73m3* %106, i32 %109)
  store i32 %110, i32* %5, align 4
  br label %135

111:                                              ; preds = %37
  %112 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %113 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %114 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @s5c73m3_set_sharpness(%struct.s5c73m3* %112, i32 %115)
  store i32 %116, i32* %5, align 4
  br label %135

117:                                              ; preds = %37
  %118 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %119 = load i32, i32* @COMM_WDR, align 4
  %120 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %121 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %118, i32 %119, i32 %126)
  store i32 %127, i32* %5, align 4
  br label %135

128:                                              ; preds = %37
  %129 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %130 = load i32, i32* @COMM_ZOOM_STEP, align 4
  %131 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %132 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %129, i32 %130, i32 %133)
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %37, %128, %117, %111, %105, %99, %93, %87, %81, %75, %69, %63, %57, %51, %45, %41
  br label %136

136:                                              ; preds = %135, %34, %26
  %137 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %138 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %137, i32 0, i32 1
  %139 = call i32 @mutex_unlock(i32* %138)
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.v4l2_subdev* @ctrl_to_sensor_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.s5c73m3* @sensor_sd_to_s5c73m3(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @s5c73m3_3a_lock(%struct.s5c73m3*, %struct.v4l2_ctrl*) #1

declare dso_local i32 @s5c73m3_set_white_balance(%struct.s5c73m3*, i32) #1

declare dso_local i32 @s5c73m3_set_contrast(%struct.s5c73m3*, i32) #1

declare dso_local i32 @s5c73m3_set_colorfx(%struct.s5c73m3*, i32) #1

declare dso_local i32 @s5c73m3_set_exposure(%struct.s5c73m3*, i32) #1

declare dso_local i32 @s5c73m3_set_auto_focus(%struct.s5c73m3*, i32) #1

declare dso_local i32 @s5c73m3_set_stabilization(%struct.s5c73m3*, i32) #1

declare dso_local i32 @s5c73m3_set_iso(%struct.s5c73m3*, i32) #1

declare dso_local i32 @s5c73m3_set_jpeg_quality(%struct.s5c73m3*, i32) #1

declare dso_local i32 @s5c73m3_set_power_line_freq(%struct.s5c73m3*, i32) #1

declare dso_local i32 @s5c73m3_set_saturation(%struct.s5c73m3*, i32) #1

declare dso_local i32 @s5c73m3_set_scene_program(%struct.s5c73m3*, i32) #1

declare dso_local i32 @s5c73m3_set_sharpness(%struct.s5c73m3*, i32) #1

declare dso_local i32 @s5c73m3_isp_command(%struct.s5c73m3*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
