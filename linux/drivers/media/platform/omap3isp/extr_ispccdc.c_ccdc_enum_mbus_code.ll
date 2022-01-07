; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_enum_mbus_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_enum_mbus_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i64, i32, i32 }
%struct.isp_ccdc_device = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@ccdc_fmts = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_YUYV8_2X8 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_YUYV8_1X16 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_1X16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_mbus_code_enum*)* @ccdc_enum_mbus_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_enum_mbus_code(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_mbus_code_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_mbus_code_enum*, align 8
  %8 = alloca %struct.isp_ccdc_device*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_mbus_code_enum* %2, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.isp_ccdc_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.isp_ccdc_device* %11, %struct.isp_ccdc_device** %8, align 8
  %12 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %125 [
    i32 130, label %15
    i32 129, label %34
    i32 128, label %94
  ]

15:                                               ; preds = %3
  %16 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32*, i32** @ccdc_fmts, align 8
  %20 = call i64 @ARRAY_SIZE(i32* %19)
  %21 = icmp uge i64 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %129

25:                                               ; preds = %15
  %26 = load i32*, i32** @ccdc_fmts, align 8
  %27 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %128

34:                                               ; preds = %3
  %35 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %36 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %37 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.v4l2_mbus_framefmt* @__ccdc_get_format(%struct.isp_ccdc_device* %35, %struct.v4l2_subdev_pad_config* %36, i32 %39, i32 %42)
  store %struct.v4l2_mbus_framefmt* %43, %struct.v4l2_mbus_framefmt** %9, align 8
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MEDIA_BUS_FMT_YUYV8_2X8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %34
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_2X8, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %49, %34
  %56 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @MEDIA_BUS_FMT_YUYV8_1X16, align 4
  %62 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %77

64:                                               ; preds = %55
  %65 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_1X16, align 4
  %71 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %129

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %60
  br label %93

78:                                               ; preds = %49
  %79 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %85 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  br label %92

89:                                               ; preds = %78
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %129

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %77
  br label %128

94:                                               ; preds = %3
  %95 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %129

102:                                              ; preds = %94
  %103 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %104 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %105 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %106 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call %struct.v4l2_mbus_framefmt* @__ccdc_get_format(%struct.isp_ccdc_device* %103, %struct.v4l2_subdev_pad_config* %104, i32 %107, i32 %110)
  store %struct.v4l2_mbus_framefmt* %111, %struct.v4l2_mbus_framefmt** %9, align 8
  %112 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %113 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %102
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %129

119:                                              ; preds = %102
  %120 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %121 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  br label %128

125:                                              ; preds = %3
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %129

128:                                              ; preds = %119, %93, %25
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %125, %116, %99, %89, %73, %22
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.isp_ccdc_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__ccdc_get_format(%struct.isp_ccdc_device*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
