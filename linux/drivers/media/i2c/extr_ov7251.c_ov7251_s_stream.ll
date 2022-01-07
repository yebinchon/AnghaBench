; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov7251 = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"could not set mode %dx%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"could not sync v4l2 controls\0A\00", align 1
@OV7251_SC_MODE_SELECT = common dso_local global i32 0, align 4
@OV7251_SC_MODE_SELECT_STREAMING = common dso_local global i32 0, align 4
@OV7251_SC_MODE_SELECT_SW_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov7251_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7251_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ov7251*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.ov7251* @to_ov7251(%struct.v4l2_subdev* %7)
  store %struct.ov7251* %8, %struct.ov7251** %5, align 8
  %9 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %10 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %2
  %15 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %16 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %17 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %22 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ov7251_set_register_array(%struct.ov7251* %15, i32 %20, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %14
  %30 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %31 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %34 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %39 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %42)
  br label %66

44:                                               ; preds = %14
  %45 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %46 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %45, i32 0, i32 2
  %47 = call i32 @__v4l2_ctrl_handler_setup(i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %52 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %66

55:                                               ; preds = %44
  %56 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %57 = load i32, i32* @OV7251_SC_MODE_SELECT, align 4
  %58 = load i32, i32* @OV7251_SC_MODE_SELECT_STREAMING, align 4
  %59 = call i32 @ov7251_write_reg(%struct.ov7251* %56, i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  br label %65

60:                                               ; preds = %2
  %61 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %62 = load i32, i32* @OV7251_SC_MODE_SELECT, align 4
  %63 = load i32, i32* @OV7251_SC_MODE_SELECT_SW_STANDBY, align 4
  %64 = call i32 @ov7251_write_reg(%struct.ov7251* %61, i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %50, %29
  %67 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %68 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.ov7251* @to_ov7251(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov7251_set_register_array(%struct.ov7251*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @__v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @ov7251_write_reg(%struct.ov7251*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
