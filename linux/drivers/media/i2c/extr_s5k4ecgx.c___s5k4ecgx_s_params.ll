; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c___s5k4ecgx_s_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c___s5k4ecgx_s_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k4ecgx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32 }
%struct.i2c_client = type { i32 }

@REG_G_INPUTS_CHANGE_REQ = common dso_local global i32 0, align 4
@FR_TIME_DYNAMIC = common dso_local global i32 0, align 4
@FR_TIME_Q_BEST_FRRATE = common dso_local global i32 0, align 4
@REG_G_ACTIVE_PREV_CFG = common dso_local global i32 0, align 4
@REG_G_PREV_OPEN_AFTER_CH = common dso_local global i32 0, align 4
@REG_G_NEW_CFG_SYNC = common dso_local global i32 0, align 4
@REG_G_PREV_CFG_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k4ecgx*)* @__s5k4ecgx_s_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s5k4ecgx_s_params(%struct.s5k4ecgx* %0) #0 {
  %2 = alloca %struct.s5k4ecgx*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca i32, align 4
  store %struct.s5k4ecgx* %0, %struct.s5k4ecgx** %2, align 8
  %6 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %2, align 8
  %7 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %6, i32 0, i32 1
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %2, align 8
  %10 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.v4l2_rect* %12, %struct.v4l2_rect** %4, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %15 = call i32 @s5k4ecgx_set_input_window(%struct.i2c_client* %13, %struct.v4l2_rect* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %21 = call i32 @s5k4ecgx_set_zoom_window(%struct.i2c_client* %19, %struct.v4l2_rect* %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = load i32, i32* @REG_G_INPUTS_CHANGE_REQ, align 4
  %28 = call i32 @s5k4ecgx_write(%struct.i2c_client* %26, i32 %27, i32 1)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = call i32 @s5k4ecgx_write(%struct.i2c_client* %33, i32 1879050782, i32 40)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = call i32 @s5k4ecgx_write(%struct.i2c_client* %39, i32 1879050964, i32 60)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %2, align 8
  %46 = call i32 @s5k4ecgx_set_output_framefmt(%struct.s5k4ecgx* %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = call i32 @REG_P_PVI_MASK(i32 0)
  %53 = call i32 @s5k4ecgx_write(%struct.i2c_client* %51, i32 %52, i32 82)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = call i32 @REG_P_FR_TIME_TYPE(i32 0)
  %60 = load i32, i32* @FR_TIME_DYNAMIC, align 4
  %61 = call i32 @s5k4ecgx_write(%struct.i2c_client* %58, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %67 = call i32 @REG_P_FR_TIME_Q_TYPE(i32 0)
  %68 = load i32, i32* @FR_TIME_Q_BEST_FRRATE, align 4
  %69 = call i32 @s5k4ecgx_write(%struct.i2c_client* %66, i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %75 = call i32 @REG_P_MIN_FR_TIME(i32 0)
  %76 = call i32 @US_TO_FR_TIME(i32 33300)
  %77 = call i32 @s5k4ecgx_write(%struct.i2c_client* %74, i32 %75, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %70
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %83 = call i32 @REG_P_MAX_FR_TIME(i32 0)
  %84 = call i32 @US_TO_FR_TIME(i32 66600)
  %85 = call i32 @s5k4ecgx_write(%struct.i2c_client* %82, i32 %83, i32 %84)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %81, %78
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %91 = call i32 @REG_P_PREV_MIRROR(i32 0)
  %92 = call i32 @s5k4ecgx_write(%struct.i2c_client* %90, i32 %91, i32 0)
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %98 = call i32 @REG_P_CAP_MIRROR(i32 0)
  %99 = call i32 @s5k4ecgx_write(%struct.i2c_client* %97, i32 %98, i32 0)
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %105 = load i32, i32* @REG_G_ACTIVE_PREV_CFG, align 4
  %106 = call i32 @s5k4ecgx_write(%struct.i2c_client* %104, i32 %105, i32 0)
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %112 = load i32, i32* @REG_G_PREV_OPEN_AFTER_CH, align 4
  %113 = call i32 @s5k4ecgx_write(%struct.i2c_client* %111, i32 %112, i32 1)
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %119 = load i32, i32* @REG_G_NEW_CFG_SYNC, align 4
  %120 = call i32 @s5k4ecgx_write(%struct.i2c_client* %118, i32 %119, i32 1)
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %126 = load i32, i32* @REG_G_PREV_CFG_CHG, align 4
  %127 = call i32 @s5k4ecgx_write(%struct.i2c_client* %125, i32 %126, i32 1)
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @s5k4ecgx_set_input_window(%struct.i2c_client*, %struct.v4l2_rect*) #1

declare dso_local i32 @s5k4ecgx_set_zoom_window(%struct.i2c_client*, %struct.v4l2_rect*) #1

declare dso_local i32 @s5k4ecgx_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @s5k4ecgx_set_output_framefmt(%struct.s5k4ecgx*) #1

declare dso_local i32 @REG_P_PVI_MASK(i32) #1

declare dso_local i32 @REG_P_FR_TIME_TYPE(i32) #1

declare dso_local i32 @REG_P_FR_TIME_Q_TYPE(i32) #1

declare dso_local i32 @REG_P_MIN_FR_TIME(i32) #1

declare dso_local i32 @US_TO_FR_TIME(i32) #1

declare dso_local i32 @REG_P_MAX_FR_TIME(i32) #1

declare dso_local i32 @REG_P_PREV_MIRROR(i32) #1

declare dso_local i32 @REG_P_CAP_MIRROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
