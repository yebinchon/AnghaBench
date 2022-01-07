; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.s5k5baf = type { i64, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ctrl: %s, value: %d\0A\00", align 1
@REG_USER_BRIGHTNESS = common dso_local global i32 0, align 4
@REG_USER_CONTRAST = common dso_local global i32 0, align 4
@REG_USER_SATURATION = common dso_local global i32 0, align 4
@REG_USER_SHARPBLUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @s5k5baf_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.s5k5baf*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %7 = call %struct.v4l2_subdev* @ctrl_to_sd(%struct.v4l2_ctrl* %6)
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %3, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev* %8)
  store %struct.s5k5baf* %9, %struct.s5k5baf** %4, align 8
  %10 = load i32, i32* @debug, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @v4l2_dbg(i32 1, i32 %10, %struct.v4l2_subdev* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %20 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %23 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %108

27:                                               ; preds = %1
  %28 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %107 [
    i32 138, label %31
    i32 137, label %37
    i32 136, label %44
    i32 135, label %50
    i32 134, label %57
    i32 133, label %63
    i32 132, label %66
    i32 131, label %72
    i32 130, label %79
    i32 128, label %86
    i32 129, label %101
  ]

31:                                               ; preds = %27
  %32 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %34 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @s5k5baf_hw_set_awb(%struct.s5k5baf* %32, i32 %35)
  br label %107

37:                                               ; preds = %27
  %38 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %39 = load i32, i32* @REG_USER_BRIGHTNESS, align 4
  %40 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @s5k5baf_write(%struct.s5k5baf* %38, i32 %39, i32 %42)
  br label %107

44:                                               ; preds = %27
  %45 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %46 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %47 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @s5k5baf_hw_set_colorfx(%struct.s5k5baf* %45, i32 %48)
  br label %107

50:                                               ; preds = %27
  %51 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %52 = load i32, i32* @REG_USER_CONTRAST, align 4
  %53 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %54 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @s5k5baf_write(%struct.s5k5baf* %51, i32 %52, i32 %55)
  br label %107

57:                                               ; preds = %27
  %58 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %59 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %60 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @s5k5baf_hw_set_auto_exposure(%struct.s5k5baf* %58, i32 %61)
  br label %107

63:                                               ; preds = %27
  %64 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %65 = call i32 @s5k5baf_hw_set_mirror(%struct.s5k5baf* %64)
  br label %107

66:                                               ; preds = %27
  %67 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %68 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %69 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @s5k5baf_hw_set_anti_flicker(%struct.s5k5baf* %67, i32 %70)
  br label %107

72:                                               ; preds = %27
  %73 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %74 = load i32, i32* @REG_USER_SATURATION, align 4
  %75 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %76 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @s5k5baf_write(%struct.s5k5baf* %73, i32 %74, i32 %77)
  br label %107

79:                                               ; preds = %27
  %80 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %81 = load i32, i32* @REG_USER_SHARPBLUR, align 4
  %82 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %83 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @s5k5baf_write(%struct.s5k5baf* %80, i32 %81, i32 %84)
  br label %107

86:                                               ; preds = %27
  %87 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %88 = call i32 @REG_P_COLORTEMP(i32 0)
  %89 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %90 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @s5k5baf_write(%struct.s5k5baf* %87, i32 %88, i32 %91)
  %93 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %94 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %99 = call i32 @s5k5baf_hw_sync_cfg(%struct.s5k5baf* %98)
  br label %100

100:                                              ; preds = %97, %86
  br label %107

101:                                              ; preds = %27
  %102 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %103 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %104 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @s5k5baf_hw_set_test_pattern(%struct.s5k5baf* %102, i32 %105)
  br label %107

107:                                              ; preds = %27, %101, %100, %79, %72, %66, %63, %57, %50, %44, %37, %31
  br label %108

108:                                              ; preds = %107, %26
  %109 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %110 = call i32 @s5k5baf_clear_error(%struct.s5k5baf* %109)
  store i32 %110, i32* %5, align 4
  %111 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %112 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.v4l2_subdev* @ctrl_to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @s5k5baf_hw_set_awb(%struct.s5k5baf*, i32) #1

declare dso_local i32 @s5k5baf_write(%struct.s5k5baf*, i32, i32) #1

declare dso_local i32 @s5k5baf_hw_set_colorfx(%struct.s5k5baf*, i32) #1

declare dso_local i32 @s5k5baf_hw_set_auto_exposure(%struct.s5k5baf*, i32) #1

declare dso_local i32 @s5k5baf_hw_set_mirror(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_hw_set_anti_flicker(%struct.s5k5baf*, i32) #1

declare dso_local i32 @REG_P_COLORTEMP(i32) #1

declare dso_local i32 @s5k5baf_hw_sync_cfg(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_hw_set_test_pattern(%struct.s5k5baf*, i32) #1

declare dso_local i32 @s5k5baf_clear_error(%struct.s5k5baf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
