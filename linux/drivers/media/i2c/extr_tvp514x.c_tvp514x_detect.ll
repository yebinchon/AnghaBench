; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp514x.c_tvp514x_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp514x.c_tvp514x_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tvp514x_decoder = type { i64 }
%struct.i2c_client = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@REG_CHIP_ID_MSB = common dso_local global i32 0, align 4
@REG_CHIP_ID_LSB = common dso_local global i32 0, align 4
@REG_ROM_VERSION = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"chip id detected msb:0x%x lsb:0x%x rom version:0x%x\0A\00", align 1
@TVP514X_CHIP_ID_MSB = common dso_local global i64 0, align 8
@TVP5146_CHIP_ID_LSB = common dso_local global i64 0, align 8
@TVP5147_CHIP_ID_LSB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"chip id mismatch msb:0x%x lsb:0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%s (Version - 0x%.2x) found at 0x%x (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.tvp514x_decoder*)* @tvp514x_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_detect(%struct.v4l2_subdev* %0, %struct.tvp514x_decoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.tvp514x_decoder*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.tvp514x_decoder* %1, %struct.tvp514x_decoder** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %9, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = load i32, i32* @REG_CHIP_ID_MSB, align 4
  %14 = call i64 @tvp514x_read_reg(%struct.v4l2_subdev* %12, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = load i32, i32* @REG_CHIP_ID_LSB, align 4
  %17 = call i64 @tvp514x_read_reg(%struct.v4l2_subdev* %15, i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = load i32, i32* @REG_ROM_VERSION, align 4
  %20 = call i64 @tvp514x_read_reg(%struct.v4l2_subdev* %18, i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* @debug, align 4
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @v4l2_dbg(i32 1, i32 %21, %struct.v4l2_subdev* %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24, i64 %25)
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @TVP514X_CHIP_ID_MSB, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @TVP5146_CHIP_ID_LSB, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @TVP5147_CHIP_ID_LSB, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34, %2
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @v4l2_err(%struct.v4l2_subdev* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %66

45:                                               ; preds = %34, %30
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %5, align 8
  %48 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %5, align 8
  %54 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 %58, 1
  %60 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @v4l2_info(%struct.v4l2_subdev* %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %52, i64 %55, i32 %59, i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %45, %38
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @tvp514x_read_reg(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i64, i64, i64) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i64, i64) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
