; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_registered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.mt9v032 = type { %struct.TYPE_3__*, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Probing MT9V032 at address 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MT9V032 power up failed\0A\00", align 1
@MT9V032_CHIP_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed reading chip version\0A\00", align 1
@mt9v032_versions = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Unsupported chip version 0x%04x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"%s detected at address 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @mt9v032_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v032_registered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.mt9v032*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call %struct.mt9v032* @to_mt9v032(%struct.v4l2_subdev* %11)
  store %struct.mt9v032* %12, %struct.mt9v032** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.mt9v032*, %struct.mt9v032** %5, align 8
  %20 = call i32 @mt9v032_power_on(%struct.mt9v032* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %96

28:                                               ; preds = %1
  %29 = load %struct.mt9v032*, %struct.mt9v032** %5, align 8
  %30 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MT9V032_CHIP_VERSION, align 4
  %33 = call i32 @regmap_read(i32 %31, i32 %32, i64* %7)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.mt9v032*, %struct.mt9v032** %5, align 8
  %35 = call i32 @mt9v032_power_off(%struct.mt9v032* %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %96

43:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %66, %43
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9v032_versions, align 8
  %47 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %46)
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9v032_versions, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9v032_versions, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = load %struct.mt9v032*, %struct.mt9v032** %5, align 8
  %64 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %63, i32 0, i32 0
  store %struct.TYPE_3__* %62, %struct.TYPE_3__** %64, align 8
  br label %69

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %44

69:                                               ; preds = %58, %44
  %70 = load %struct.mt9v032*, %struct.mt9v032** %5, align 8
  %71 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = icmp eq %struct.TYPE_3__* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 1
  %77 = load i64, i64* %7, align 8
  %78 = call i32 (i32*, i8*, ...) @dev_err(i32* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %96

81:                                               ; preds = %69
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 1
  %84 = load %struct.mt9v032*, %struct.mt9v032** %5, align 8
  %85 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %88, i32 %91)
  %93 = load %struct.mt9v032*, %struct.mt9v032** %5, align 8
  %94 = call i32 @mt9v032_configure_pixel_rate(%struct.mt9v032* %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %81, %74, %38, %23
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9v032* @to_mt9v032(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @mt9v032_power_on(%struct.mt9v032*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

declare dso_local i32 @mt9v032_power_off(%struct.mt9v032*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @mt9v032_configure_pixel_rate(%struct.mt9v032*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
