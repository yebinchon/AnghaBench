; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_fw_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_fw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.m5mols_info = type { i32, i32 }

@FLASH_CAM_START = common dso_local global i32 0, align 4
@REG_IN_FLASH_MODE = common dso_local global i32 0, align 4
@M5MOLS_I2C_RDY_WAIT_FL = common dso_local global i32 0, align 4
@REG_START_ARM_BOOT = common dso_local global i32 0, align 4
@REG_INT_MODE = common dso_local global i32 0, align 4
@m5mols_sensor_power = common dso_local global i32 0, align 4
@m5mols_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Success ARM Booting\0A\00", align 1
@PARM_INTERFACE = common dso_local global i32 0, align 4
@REG_INTERFACE_MIPI = common dso_local global i32 0, align 4
@REG_INT_AF = common dso_local global i32 0, align 4
@REG_INT_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @m5mols_fw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_fw_start(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.m5mols_info*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev* %6)
  store %struct.m5mols_info* %7, %struct.m5mols_info** %4, align 8
  %8 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %9 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %8, i32 0, i32 1
  %10 = call i32 @atomic_set(i32* %9, i32 0)
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = load i32, i32* @FLASH_CAM_START, align 4
  %13 = load i32, i32* @REG_IN_FLASH_MODE, align 4
  %14 = load i32, i32* @M5MOLS_I2C_RDY_WAIT_FL, align 4
  %15 = or i32 %14, 255
  %16 = call i32 @m5mols_busy_wait(%struct.v4l2_subdev* %11, i32 %12, i32 %13, i32 %15, i32 -1)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = load i32, i32* @FLASH_CAM_START, align 4
  %22 = load i32, i32* @REG_START_ARM_BOOT, align 4
  %23 = call i32 @m5mols_write(%struct.v4l2_subdev* %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %29 = load i32, i32* @REG_INT_MODE, align 4
  %30 = call i32 @m5mols_wait_interrupt(%struct.v4l2_subdev* %28, i32 %29, i32 2000)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %70

36:                                               ; preds = %31
  %37 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %38 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %40 = call i32 @m5mols_get_version(%struct.v4l2_subdev* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %45 = load i32, i32* @m5mols_sensor_power, align 4
  %46 = call i32 @m5mols_update_fw(%struct.v4l2_subdev* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %70

52:                                               ; preds = %47
  %53 = load i32, i32* @m5mols_debug, align 4
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %55 = call i32 @v4l2_dbg(i32 1, i32 %53, %struct.v4l2_subdev* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %57 = load i32, i32* @PARM_INTERFACE, align 4
  %58 = load i32, i32* @REG_INTERFACE_MIPI, align 4
  %59 = call i32 @m5mols_write(%struct.v4l2_subdev* %56, i32 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %52
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %64 = load i32, i32* @REG_INT_AF, align 4
  %65 = load i32, i32* @REG_INT_CAPTURE, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @m5mols_enable_interrupt(%struct.v4l2_subdev* %63, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %62, %52
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %50, %34
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @m5mols_busy_wait(%struct.v4l2_subdev*, i32, i32, i32, i32) #1

declare dso_local i32 @m5mols_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @m5mols_wait_interrupt(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @m5mols_get_version(%struct.v4l2_subdev*) #1

declare dso_local i32 @m5mols_update_fw(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @m5mols_enable_interrupt(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
