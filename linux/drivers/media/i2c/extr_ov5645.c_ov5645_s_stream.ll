; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5645.c_ov5645_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5645.c_ov5645_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov5645 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"could not set mode %dx%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"could not sync v4l2 controls\0A\00", align 1
@OV5645_IO_MIPI_CTRL00 = common dso_local global i32 0, align 4
@OV5645_SYSTEM_CTRL0 = common dso_local global i32 0, align 4
@OV5645_SYSTEM_CTRL0_START = common dso_local global i32 0, align 4
@OV5645_SYSTEM_CTRL0_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov5645_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5645_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov5645*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.ov5645* @to_ov5645(%struct.v4l2_subdev* %8)
  store %struct.ov5645* %9, %struct.ov5645** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %73

12:                                               ; preds = %2
  %13 = load %struct.ov5645*, %struct.ov5645** %6, align 8
  %14 = load %struct.ov5645*, %struct.ov5645** %6, align 8
  %15 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ov5645*, %struct.ov5645** %6, align 8
  %20 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ov5645_set_register_array(%struct.ov5645* %13, i32 %18, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %12
  %28 = load %struct.ov5645*, %struct.ov5645** %6, align 8
  %29 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ov5645*, %struct.ov5645** %6, align 8
  %32 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ov5645*, %struct.ov5645** %6, align 8
  %37 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %92

43:                                               ; preds = %12
  %44 = load %struct.ov5645*, %struct.ov5645** %6, align 8
  %45 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %44, i32 0, i32 1
  %46 = call i32 @v4l2_ctrl_handler_setup(i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.ov5645*, %struct.ov5645** %6, align 8
  %51 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %92

55:                                               ; preds = %43
  %56 = load %struct.ov5645*, %struct.ov5645** %6, align 8
  %57 = load i32, i32* @OV5645_IO_MIPI_CTRL00, align 4
  %58 = call i32 @ov5645_write_reg(%struct.ov5645* %56, i32 %57, i32 69)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %92

63:                                               ; preds = %55
  %64 = load %struct.ov5645*, %struct.ov5645** %6, align 8
  %65 = load i32, i32* @OV5645_SYSTEM_CTRL0, align 4
  %66 = load i32, i32* @OV5645_SYSTEM_CTRL0_START, align 4
  %67 = call i32 @ov5645_write_reg(%struct.ov5645* %64, i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %92

72:                                               ; preds = %63
  br label %91

73:                                               ; preds = %2
  %74 = load %struct.ov5645*, %struct.ov5645** %6, align 8
  %75 = load i32, i32* @OV5645_IO_MIPI_CTRL00, align 4
  %76 = call i32 @ov5645_write_reg(%struct.ov5645* %74, i32 %75, i32 64)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %92

81:                                               ; preds = %73
  %82 = load %struct.ov5645*, %struct.ov5645** %6, align 8
  %83 = load i32, i32* @OV5645_SYSTEM_CTRL0, align 4
  %84 = load i32, i32* @OV5645_SYSTEM_CTRL0_STOP, align 4
  %85 = call i32 @ov5645_write_reg(%struct.ov5645* %82, i32 %83, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %92

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %72
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %88, %79, %70, %61, %49, %27
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.ov5645* @to_ov5645(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov5645_set_register_array(%struct.ov5645*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @ov5645_write_reg(%struct.ov5645*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
