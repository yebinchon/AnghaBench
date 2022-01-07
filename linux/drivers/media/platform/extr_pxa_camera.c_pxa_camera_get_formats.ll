; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_get_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_get_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_mbus_pixelfmt = type { i32, i32 }
%struct.v4l2_device = type { i32 }
%struct.pxa_camera_format_xlate = type { i32, %struct.pxa_mbus_pixelfmt* }
%struct.pxa_camera_dev = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_mbus_code = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid format code #%u: %d\0A\00", align 1
@pxa_camera_formats = common dso_local global %struct.pxa_mbus_pixelfmt* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Providing format %s using code %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Providing format %s packed\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Providing format %s in pass-through mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_device*, i32, %struct.pxa_camera_format_xlate*)* @pxa_camera_get_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_get_formats(%struct.v4l2_device* %0, i32 %1, %struct.pxa_camera_format_xlate* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pxa_camera_format_xlate*, align 8
  %8 = alloca %struct.pxa_camera_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  %12 = alloca %struct.pxa_mbus_pixelfmt*, align 8
  store %struct.v4l2_device* %0, %struct.v4l2_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pxa_camera_format_xlate* %2, %struct.pxa_camera_format_xlate** %7, align 8
  %13 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %14 = call %struct.pxa_camera_dev* @v4l2_dev_to_pcdev(%struct.v4l2_device* %13)
  store %struct.pxa_camera_dev* %14, %struct.pxa_camera_dev** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %11, i32 0, i32 0
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %11, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %11, i32 0, i32 2
  %19 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %21 = load i32, i32* @pad, align 4
  %22 = load i32, i32* @enum_mbus_code, align 4
  %23 = call i32 @sensor_call(%struct.pxa_camera_dev* %20, i32 %21, i32 %22, i32* null, %struct.v4l2_subdev_mbus_code_enum* %11)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %122

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %11, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.pxa_mbus_pixelfmt* @pxa_mbus_get_fmtdesc(i32 %29)
  store %struct.pxa_mbus_pixelfmt* %30, %struct.pxa_mbus_pixelfmt** %12, align 8
  %31 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %12, align 8
  %32 = icmp ne %struct.pxa_mbus_pixelfmt* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %35 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %34)
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %11, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38)
  store i32 0, i32* %4, align 4
  br label %122

40:                                               ; preds = %27
  %41 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %42 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %12, align 8
  %43 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, %struct.pxa_mbus_pixelfmt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pxa_camera_try_bus_param(%struct.pxa_camera_dev* %41, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %122

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %11, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %89 [
    i32 131, label %52
    i32 130, label %78
    i32 129, label %78
    i32 128, label %78
    i32 132, label %78
    i32 133, label %78
  ]

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %7, align 8
  %56 = icmp ne %struct.pxa_camera_format_xlate* %55, null
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** @pxa_camera_formats, align 8
  %59 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, %struct.pxa_mbus_pixelfmt* %58, i64 0
  %60 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %7, align 8
  %61 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %60, i32 0, i32 1
  store %struct.pxa_mbus_pixelfmt* %59, %struct.pxa_mbus_pixelfmt** %61, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %11, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %7, align 8
  %65 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %7, align 8
  %67 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %66, i32 1
  store %struct.pxa_camera_format_xlate* %67, %struct.pxa_camera_format_xlate** %7, align 8
  %68 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %69 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %68)
  %70 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** @pxa_camera_formats, align 8
  %71 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, %struct.pxa_mbus_pixelfmt* %70, i64 0
  %72 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, %struct.pxa_mbus_pixelfmt* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %11, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %57, %52
  br label %78

78:                                               ; preds = %49, %49, %49, %49, %49, %77
  %79 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %7, align 8
  %80 = icmp ne %struct.pxa_camera_format_xlate* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %83 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %82)
  %84 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %12, align 8
  %85 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, %struct.pxa_mbus_pixelfmt* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %81, %78
  br label %105

89:                                               ; preds = %49
  %90 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %12, align 8
  %91 = call i32 @pxa_camera_packing_supported(%struct.pxa_mbus_pixelfmt* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %122

94:                                               ; preds = %89
  %95 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %7, align 8
  %96 = icmp ne %struct.pxa_camera_format_xlate* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %99 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %98)
  %100 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %12, align 8
  %101 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, %struct.pxa_mbus_pixelfmt* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %97, %94
  br label %105

105:                                              ; preds = %104, %88
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  %108 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %7, align 8
  %109 = icmp ne %struct.pxa_camera_format_xlate* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %12, align 8
  %112 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %7, align 8
  %113 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %112, i32 0, i32 1
  store %struct.pxa_mbus_pixelfmt* %111, %struct.pxa_mbus_pixelfmt** %113, align 8
  %114 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %11, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %7, align 8
  %117 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %7, align 8
  %119 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %118, i32 1
  store %struct.pxa_camera_format_xlate* %119, %struct.pxa_camera_format_xlate** %7, align 8
  br label %120

120:                                              ; preds = %110, %105
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %93, %48, %33, %26
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.pxa_camera_dev* @v4l2_dev_to_pcdev(%struct.v4l2_device*) #1

declare dso_local i32 @sensor_call(%struct.pxa_camera_dev*, i32, i32, i32*, %struct.v4l2_subdev_mbus_code_enum*) #1

declare dso_local %struct.pxa_mbus_pixelfmt* @pxa_mbus_get_fmtdesc(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @pcdev_to_dev(%struct.pxa_camera_dev*) #1

declare dso_local i32 @pxa_camera_try_bus_param(%struct.pxa_camera_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @pxa_camera_packing_supported(%struct.pxa_mbus_pixelfmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
