; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.ov5675_reg_list }
%struct.ov5675_reg_list = type { i32 }
%struct.ov5675 = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.ov5675_reg_list }
%struct.i2c_client = type { i32 }

@link_freq_configs = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"failed to set plls\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to set mode\00", align 1
@OV5675_REG_MODE_SELECT = common dso_local global i32 0, align 4
@OV5675_REG_VALUE_08BIT = common dso_local global i32 0, align 4
@OV5675_MODE_STREAMING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to set stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5675*)* @ov5675_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5675_start_streaming(%struct.ov5675* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov5675*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ov5675_reg_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ov5675* %0, %struct.ov5675** %3, align 8
  %8 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %9 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %8, i32 0, i32 0
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.TYPE_5__* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %12 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @link_freq_configs, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.ov5675_reg_list* %20, %struct.ov5675_reg_list** %5, align 8
  %21 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %22 = load %struct.ov5675_reg_list*, %struct.ov5675_reg_list** %5, align 8
  %23 = call i32 @ov5675_write_reg_list(%struct.ov5675* %21, %struct.ov5675_reg_list* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %70

31:                                               ; preds = %1
  %32 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %33 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store %struct.ov5675_reg_list* %35, %struct.ov5675_reg_list** %5, align 8
  %36 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %37 = load %struct.ov5675_reg_list*, %struct.ov5675_reg_list** %5, align 8
  %38 = call i32 @ov5675_write_reg_list(%struct.ov5675* %36, %struct.ov5675_reg_list* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %70

46:                                               ; preds = %31
  %47 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %48 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @__v4l2_ctrl_handler_setup(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %70

56:                                               ; preds = %46
  %57 = load %struct.ov5675*, %struct.ov5675** %3, align 8
  %58 = load i32, i32* @OV5675_REG_MODE_SELECT, align 4
  %59 = load i32, i32* @OV5675_REG_VALUE_08BIT, align 4
  %60 = load i32, i32* @OV5675_MODE_STREAMING, align 4
  %61 = call i32 @ov5675_write_reg(%struct.ov5675* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %64, %54, %41, %26
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.TYPE_5__*) #1

declare dso_local i32 @ov5675_write_reg_list(%struct.ov5675*, %struct.ov5675_reg_list*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @__v4l2_ctrl_handler_setup(i32) #1

declare dso_local i32 @ov5675_write_reg(%struct.ov5675*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
