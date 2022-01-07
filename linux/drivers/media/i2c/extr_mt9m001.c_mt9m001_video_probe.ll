; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_video_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9m001 = type { i32, i32*, i32*, i8* }

@MT9M001_CHIP_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"write: %d\0A\00", align 1
@MT9M001_CHIP_VERSION = common dso_local global i32 0, align 4
@mt9m001_colour_fmts = common dso_local global i8* null, align 8
@mt9m001_monochrome_fmts = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"No MT9M001 chip detected, register read %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Detected a MT9M001 chip ID %x (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"C12STM\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"C12ST\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to initialise the camera\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9m001_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m001_video_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.mt9m001*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.mt9m001* @to_mt9m001(%struct.i2c_client* %6)
  store %struct.mt9m001* %7, %struct.mt9m001** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = load i32, i32* @MT9M001_CHIP_ENABLE, align 4
  %10 = call i32 @reg_write(%struct.i2c_client* %8, i32 %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %16 = load i32, i32* @MT9M001_CHIP_VERSION, align 4
  %17 = call i32 @reg_read(%struct.i2c_client* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %37 [
    i32 33809, label %19
    i32 33825, label %19
    i32 33841, label %28
  ]

19:                                               ; preds = %1, %1
  %20 = load i8*, i8** @mt9m001_colour_fmts, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.mt9m001*, %struct.mt9m001** %3, align 8
  %23 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load i8*, i8** @mt9m001_colour_fmts, align 8
  %25 = call i8* @ARRAY_SIZE(i8* %24)
  %26 = load %struct.mt9m001*, %struct.mt9m001** %3, align 8
  %27 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  br label %44

28:                                               ; preds = %1
  %29 = load i8*, i8** @mt9m001_monochrome_fmts, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.mt9m001*, %struct.mt9m001** %3, align 8
  %32 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load i8*, i8** @mt9m001_monochrome_fmts, align 8
  %34 = call i8* @ARRAY_SIZE(i8* %33)
  %35 = load %struct.mt9m001*, %struct.mt9m001** %3, align 8
  %36 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  br label %44

37:                                               ; preds = %1
  %38 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %71

44:                                               ; preds = %28, %19
  %45 = load %struct.mt9m001*, %struct.mt9m001** %3, align 8
  %46 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load %struct.mt9m001*, %struct.mt9m001** %3, align 8
  %50 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 33841
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %58 = call i32 @dev_info(i32* %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %53, i8* %57)
  %59 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %60 = call i32 @mt9m001_init(%struct.i2c_client* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %44
  %64 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %71

67:                                               ; preds = %44
  %68 = load %struct.mt9m001*, %struct.mt9m001** %3, align 8
  %69 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %68, i32 0, i32 0
  %70 = call i32 @v4l2_ctrl_handler_setup(i32* %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %63, %37
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.mt9m001* @to_mt9m001(%struct.i2c_client*) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*) #1

declare dso_local i32 @mt9m001_init(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
