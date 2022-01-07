; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.s5k6aa = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ctrl: 0x%x, value: %d\0A\00", align 1
@REG_USER_BRIGHTNESS = common dso_local global i32 0, align 4
@REG_USER_CONTRAST = common dso_local global i32 0, align 4
@REG_G_PREV_CFG_CHG = common dso_local global i32 0, align 4
@REG_USER_SATURATION = common dso_local global i32 0, align 4
@REG_USER_SHARPBLUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @s5k6aa_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.s5k6aa*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %9 = call %struct.v4l2_subdev* @ctrl_to_sd(%struct.v4l2_ctrl* %8)
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %3, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = call %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev* %12)
  store %struct.s5k6aa* %13, %struct.s5k6aa** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @debug, align 4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @v4l2_dbg(i32 1, i32 %14, %struct.v4l2_subdev* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %24 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %27 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %121

31:                                               ; preds = %1
  %32 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %33 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %120 [
    i32 137, label %40
    i32 136, label %46
    i32 135, label %53
    i32 134, label %59
    i32 133, label %66
    i32 132, label %72
    i32 131, label %85
    i32 130, label %91
    i32 129, label %98
    i32 128, label %105
  ]

40:                                               ; preds = %31
  %41 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %42 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @s5k6aa_set_awb(%struct.s5k6aa* %41, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %120

46:                                               ; preds = %31
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load i32, i32* @REG_USER_BRIGHTNESS, align 4
  %49 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @s5k6aa_write(%struct.i2c_client* %47, i32 %48, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %120

53:                                               ; preds = %31
  %54 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %55 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %56 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @s5k6aa_set_colorfx(%struct.s5k6aa* %54, i32 %57)
  store i32 %58, i32* %7, align 4
  br label %120

59:                                               ; preds = %31
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* @REG_USER_CONTRAST, align 4
  %62 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @s5k6aa_write(%struct.i2c_client* %60, i32 %61, i32 %64)
  store i32 %65, i32* %7, align 4
  br label %120

66:                                               ; preds = %31
  %67 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %68 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %69 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @s5k6aa_set_auto_exposure(%struct.s5k6aa* %67, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %120

72:                                               ; preds = %31
  %73 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %74 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %75 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @s5k6aa_set_mirror(%struct.s5k6aa* %73, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %120

81:                                               ; preds = %72
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load i32, i32* @REG_G_PREV_CFG_CHG, align 4
  %84 = call i32 @s5k6aa_write(%struct.i2c_client* %82, i32 %83, i32 1)
  store i32 %84, i32* %7, align 4
  br label %120

85:                                               ; preds = %31
  %86 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %87 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %88 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @s5k6aa_set_anti_flicker(%struct.s5k6aa* %86, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %120

91:                                               ; preds = %31
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = load i32, i32* @REG_USER_SATURATION, align 4
  %94 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %95 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @s5k6aa_write(%struct.i2c_client* %92, i32 %93, i32 %96)
  store i32 %97, i32* %7, align 4
  br label %120

98:                                               ; preds = %31
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = load i32, i32* @REG_USER_SHARPBLUR, align 4
  %101 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %102 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @s5k6aa_write(%struct.i2c_client* %99, i32 %100, i32 %103)
  store i32 %104, i32* %7, align 4
  br label %120

105:                                              ; preds = %31
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @REG_P_COLORTEMP(i32 %107)
  %109 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %110 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @s5k6aa_write(%struct.i2c_client* %106, i32 %108, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %120

116:                                              ; preds = %105
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = load i32, i32* @REG_G_PREV_CFG_CHG, align 4
  %119 = call i32 @s5k6aa_write(%struct.i2c_client* %117, i32 %118, i32 1)
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %31, %116, %115, %98, %91, %85, %81, %80, %66, %59, %53, %46, %40
  br label %121

121:                                              ; preds = %120, %30
  %122 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %123 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %122, i32 0, i32 1
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local %struct.v4l2_subdev* @ctrl_to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @s5k6aa_set_awb(%struct.s5k6aa*, i32) #1

declare dso_local i32 @s5k6aa_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @s5k6aa_set_colorfx(%struct.s5k6aa*, i32) #1

declare dso_local i32 @s5k6aa_set_auto_exposure(%struct.s5k6aa*, i32) #1

declare dso_local i32 @s5k6aa_set_mirror(%struct.s5k6aa*, i32) #1

declare dso_local i32 @s5k6aa_set_anti_flicker(%struct.s5k6aa*, i32) #1

declare dso_local i32 @REG_P_COLORTEMP(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
