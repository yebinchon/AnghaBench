; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx319.c_imx319_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx319.c_imx319_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx319_reg_list = type { i32, i32 }
%struct.imx319 = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.imx319_reg_list }
%struct.i2c_client = type { i32 }

@imx319_global_setting = common dso_local global %struct.imx319_reg_list zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to set global settings\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to set mode\00", align 1
@IMX319_REG_DPGA_USE_GLOBAL_GAIN = common dso_local global i32 0, align 4
@IMX319_REG_MODE_SELECT = common dso_local global i32 0, align 4
@IMX319_MODE_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx319*)* @imx319_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx319_start_streaming(%struct.imx319* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx319*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.imx319_reg_list*, align 8
  %6 = alloca i32, align 4
  store %struct.imx319* %0, %struct.imx319** %3, align 8
  %7 = load %struct.imx319*, %struct.imx319** %3, align 8
  %8 = getelementptr inbounds %struct.imx319, %struct.imx319* %7, i32 0, i32 0
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.TYPE_4__* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  store %struct.imx319_reg_list* @imx319_global_setting, %struct.imx319_reg_list** %5, align 8
  %10 = load %struct.imx319*, %struct.imx319** %3, align 8
  %11 = load %struct.imx319_reg_list*, %struct.imx319_reg_list** %5, align 8
  %12 = getelementptr inbounds %struct.imx319_reg_list, %struct.imx319_reg_list* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.imx319_reg_list*, %struct.imx319_reg_list** %5, align 8
  %15 = getelementptr inbounds %struct.imx319_reg_list, %struct.imx319_reg_list* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @imx319_write_regs(%struct.imx319* %10, i32 %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %68

25:                                               ; preds = %1
  %26 = load %struct.imx319*, %struct.imx319** %3, align 8
  %27 = getelementptr inbounds %struct.imx319, %struct.imx319* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store %struct.imx319_reg_list* %29, %struct.imx319_reg_list** %5, align 8
  %30 = load %struct.imx319*, %struct.imx319** %3, align 8
  %31 = load %struct.imx319_reg_list*, %struct.imx319_reg_list** %5, align 8
  %32 = getelementptr inbounds %struct.imx319_reg_list, %struct.imx319_reg_list* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.imx319_reg_list*, %struct.imx319_reg_list** %5, align 8
  %35 = getelementptr inbounds %struct.imx319_reg_list, %struct.imx319_reg_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @imx319_write_regs(%struct.imx319* %30, i32 %33, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %68

45:                                               ; preds = %25
  %46 = load %struct.imx319*, %struct.imx319** %3, align 8
  %47 = load i32, i32* @IMX319_REG_DPGA_USE_GLOBAL_GAIN, align 4
  %48 = call i32 @imx319_write_reg(%struct.imx319* %46, i32 %47, i32 1, i32 1)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %68

53:                                               ; preds = %45
  %54 = load %struct.imx319*, %struct.imx319** %3, align 8
  %55 = getelementptr inbounds %struct.imx319, %struct.imx319* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @__v4l2_ctrl_handler_setup(i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %68

63:                                               ; preds = %53
  %64 = load %struct.imx319*, %struct.imx319** %3, align 8
  %65 = load i32, i32* @IMX319_REG_MODE_SELECT, align 4
  %66 = load i32, i32* @IMX319_MODE_STREAMING, align 4
  %67 = call i32 @imx319_write_reg(%struct.imx319* %64, i32 %65, i32 1, i32 %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %61, %51, %40, %20
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.TYPE_4__*) #1

declare dso_local i32 @imx319_write_regs(%struct.imx319*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @imx319_write_reg(%struct.imx319*, i32, i32, i32) #1

declare dso_local i32 @__v4l2_ctrl_handler_setup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
