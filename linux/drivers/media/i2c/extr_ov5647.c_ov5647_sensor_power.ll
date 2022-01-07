; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5647.c_ov5647_sensor_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5647.c_ov5647_sensor_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov5647 = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"OV5647 power on\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"clk prepare enable failed\0A\00", align 1
@sensor_oe_enable_regs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"write sensor_oe_enable_regs error\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Camera not available, check Power\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"OV5647 power off\0A\00", align 1
@sensor_oe_disable_regs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"disable oe failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"soft stby failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov5647_sensor_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5647_sensor_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov5647*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.ov5647* @to_state(%struct.v4l2_subdev* %8)
  store %struct.ov5647* %9, %struct.ov5647** %6, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %7, align 8
  %12 = load %struct.ov5647*, %struct.ov5647** %6, align 8
  %13 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %2
  %18 = load %struct.ov5647*, %struct.ov5647** %6, align 8
  %19 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %17
  %23 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ov5647*, %struct.ov5647** %6, align 8
  %27 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_prepare_enable(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %119

36:                                               ; preds = %22
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %38 = load i32, i32* @sensor_oe_enable_regs, align 4
  %39 = load i32, i32* @sensor_oe_enable_regs, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = call i32 @ov5647_write_array(%struct.v4l2_subdev* %37, i32 %38, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.ov5647*, %struct.ov5647** %6, align 8
  %46 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clk_disable_unprepare(i32 %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %119

52:                                               ; preds = %36
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %54 = call i32 @__sensor_init(%struct.v4l2_subdev* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.ov5647*, %struct.ov5647** %6, align 8
  %59 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @clk_disable_unprepare(i32 %60)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %119

65:                                               ; preds = %52
  br label %104

66:                                               ; preds = %17, %2
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %103, label %69

69:                                               ; preds = %66
  %70 = load %struct.ov5647*, %struct.ov5647** %6, align 8
  %71 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %103

74:                                               ; preds = %69
  %75 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %79 = load i32, i32* @sensor_oe_disable_regs, align 4
  %80 = load i32, i32* @sensor_oe_disable_regs, align 4
  %81 = call i32 @ARRAY_SIZE(i32 %80)
  %82 = call i32 @ov5647_write_array(%struct.v4l2_subdev* %78, i32 %79, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = call i32 @dev_dbg(i32* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %74
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %91 = call i32 @set_sw_standby(%struct.v4l2_subdev* %90, i32 1)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = call i32 @dev_dbg(i32* %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %89
  %99 = load %struct.ov5647*, %struct.ov5647** %6, align 8
  %100 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @clk_disable_unprepare(i32 %101)
  br label %103

103:                                              ; preds = %98, %69, %66
  br label %104

104:                                              ; preds = %103, %65
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 -1
  %109 = load %struct.ov5647*, %struct.ov5647** %6, align 8
  %110 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.ov5647*, %struct.ov5647** %6, align 8
  %114 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @WARN_ON(i32 %117)
  br label %119

119:                                              ; preds = %104, %57, %44, %32
  %120 = load %struct.ov5647*, %struct.ov5647** %6, align 8
  %121 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %120, i32 0, i32 1
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.ov5647* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ov5647_write_array(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @__sensor_init(%struct.v4l2_subdev*) #1

declare dso_local i32 @set_sw_standby(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
