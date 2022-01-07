; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_formats_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_formats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_format = type { i32 }
%struct.isc_device = type { i32, %struct.isc_format**, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32 }

@formats_list = common dso_local global %struct.isc_format* null, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_mbus_code = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Mbus code %x not supported\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isc_device*)* @isc_formats_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_formats_init(%struct.isc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isc_device*, align 8
  %4 = alloca %struct.isc_format*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  store %struct.isc_device* %0, %struct.isc_device** %3, align 8
  %11 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %12 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  store %struct.v4l2_subdev* %15, %struct.v4l2_subdev** %5, align 8
  %16 = load %struct.isc_format*, %struct.isc_format** @formats_list, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.isc_format* %16)
  store i32 %17, i32* %9, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 2
  %21 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %21, i32* %20, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %44, %38, %1
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %24 = load i32, i32* @pad, align 4
  %25 = load i32, i32* @enum_mbus_code, align 4
  %26 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %23, i32 %24, i32 %25, i32* null, %struct.v4l2_subdev_mbus_code_enum* %10)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.isc_format* @find_format_by_code(i32 %34, i32* %7)
  store %struct.isc_format* %35, %struct.isc_format** %4, align 8
  %36 = load %struct.isc_format*, %struct.isc_format** %4, align 8
  %37 = icmp ne %struct.isc_format* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %29
  %39 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %40 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @v4l2_warn(i32* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %22

44:                                               ; preds = %29
  %45 = load %struct.isc_format*, %struct.isc_format** %4, align 8
  %46 = getelementptr inbounds %struct.isc_format, %struct.isc_format* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %22

49:                                               ; preds = %22
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %102

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %58 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %60 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.isc_format** @devm_kcalloc(i32 %61, i32 %62, i32 8, i32 %63)
  %65 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %66 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %65, i32 0, i32 1
  store %struct.isc_format** %64, %struct.isc_format*** %66, align 8
  %67 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %68 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %67, i32 0, i32 1
  %69 = load %struct.isc_format**, %struct.isc_format*** %68, align 8
  %70 = icmp ne %struct.isc_format** %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %55
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %102

74:                                               ; preds = %55
  %75 = load %struct.isc_format*, %struct.isc_format** @formats_list, align 8
  %76 = getelementptr inbounds %struct.isc_format, %struct.isc_format* %75, i64 0
  store %struct.isc_format* %76, %struct.isc_format** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %98, %74
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load %struct.isc_format*, %struct.isc_format** %4, align 8
  %83 = getelementptr inbounds %struct.isc_format, %struct.isc_format* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.isc_format*, %struct.isc_format** %4, align 8
  %88 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %89 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %88, i32 0, i32 1
  %90 = load %struct.isc_format**, %struct.isc_format*** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %8, align 4
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds %struct.isc_format*, %struct.isc_format** %90, i64 %93
  store %struct.isc_format* %87, %struct.isc_format** %94, align 8
  br label %95

95:                                               ; preds = %86, %81
  %96 = load %struct.isc_format*, %struct.isc_format** %4, align 8
  %97 = getelementptr inbounds %struct.isc_format, %struct.isc_format* %96, i32 1
  store %struct.isc_format* %97, %struct.isc_format** %4, align 8
  br label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %77

101:                                              ; preds = %77
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %71, %52
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @ARRAY_SIZE(%struct.isc_format*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_mbus_code_enum*) #1

declare dso_local %struct.isc_format* @find_format_by_code(i32, i32*) #1

declare dso_local i32 @v4l2_warn(i32*, i8*, i32) #1

declare dso_local %struct.isc_format** @devm_kcalloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
