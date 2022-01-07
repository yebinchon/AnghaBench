; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_set_format_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_set_format_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.smiapp_sensor = type { i64*, i64, i32, %struct.smiapp_csi_data_format*, i32*, %struct.TYPE_3__* }
%struct.smiapp_csi_data_format = type { i32, i64, i32 }
%struct.TYPE_3__ = type { %struct.v4l2_subdev }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @smiapp_set_format_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_set_format_source(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.smiapp_sensor*, align 8
  %9 = alloca %struct.smiapp_csi_data_format*, align 8
  %10 = alloca %struct.smiapp_csi_data_format*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev* %15)
  store %struct.smiapp_sensor* %16, %struct.smiapp_sensor** %8, align 8
  %17 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %18 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %17, i32 0, i32 3
  %19 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** %18, align 8
  store %struct.smiapp_csi_data_format* %19, %struct.smiapp_csi_data_format** %10, align 8
  %20 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %25 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %26 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %27 = call i32 @__smiapp_get_format(%struct.v4l2_subdev* %24, %struct.v4l2_subdev_pad_config* %25, %struct.v4l2_subdev_format* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %4, align 4
  br label %131

32:                                               ; preds = %3
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %34 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %35 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %34, i32 0, i32 5
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = icmp ne %struct.v4l2_subdev* %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %131

40:                                               ; preds = %32
  %41 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call %struct.smiapp_csi_data_format* @smiapp_validate_csi_data_format(%struct.smiapp_sensor* %41, i32 %42)
  store %struct.smiapp_csi_data_format* %43, %struct.smiapp_csi_data_format** %9, align 8
  %44 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** %9, align 8
  %45 = getelementptr inbounds %struct.smiapp_csi_data_format, %struct.smiapp_csi_data_format* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %131

56:                                               ; preds = %40
  %57 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** %9, align 8
  %58 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %59 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %58, i32 0, i32 3
  store %struct.smiapp_csi_data_format* %57, %struct.smiapp_csi_data_format** %59, align 8
  %60 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** %9, align 8
  %61 = getelementptr inbounds %struct.smiapp_csi_data_format, %struct.smiapp_csi_data_format* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** %10, align 8
  %64 = getelementptr inbounds %struct.smiapp_csi_data_format, %struct.smiapp_csi_data_format* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %56
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %89, %67
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %71 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ARRAY_SIZE(i32* %72)
  %74 = icmp ult i32 %69, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %68
  %76 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %77 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** %9, align 8
  %84 = getelementptr inbounds %struct.smiapp_csi_data_format, %struct.smiapp_csi_data_format* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = shl i32 1, %85
  %87 = sub nsw i32 %86, 1
  %88 = call i32 @__v4l2_ctrl_modify_range(i32 %82, i32 0, i32 %87, i64 1, i32 0)
  br label %89

89:                                               ; preds = %75
  %90 = load i32, i32* %13, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %68

92:                                               ; preds = %68
  br label %93

93:                                               ; preds = %92, %56
  %94 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** %9, align 8
  %95 = getelementptr inbounds %struct.smiapp_csi_data_format, %struct.smiapp_csi_data_format* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** %10, align 8
  %98 = getelementptr inbounds %struct.smiapp_csi_data_format, %struct.smiapp_csi_data_format* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %131

102:                                              ; preds = %93
  %103 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %104 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %107 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %106, i32 0, i32 3
  %108 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** %107, align 8
  %109 = getelementptr inbounds %struct.smiapp_csi_data_format, %struct.smiapp_csi_data_format* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %112 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = sub i64 %110, %113
  %115 = getelementptr inbounds i64, i64* %105, i64 %114
  store i64* %115, i64** %11, align 8
  %116 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %117 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i64*, i64** %11, align 8
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @__fls(i64 %120)
  %122 = load i64*, i64** %11, align 8
  %123 = load i64, i64* %122, align 8
  %124 = xor i64 %123, -1
  %125 = load i64*, i64** %11, align 8
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @__ffs(i64 %126)
  %128 = call i32 @__v4l2_ctrl_modify_range(i32 %118, i32 0, i32 %121, i64 %124, i32 %127)
  %129 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %130 = call i32 @smiapp_pll_update(%struct.smiapp_sensor* %129)
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %102, %101, %55, %39, %30
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev*) #1

declare dso_local i32 @__smiapp_get_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local %struct.smiapp_csi_data_format* @smiapp_validate_csi_data_format(%struct.smiapp_sensor*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__v4l2_ctrl_modify_range(i32, i32, i32, i64, i32) #1

declare dso_local i32 @__fls(i64) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @smiapp_pll_update(%struct.smiapp_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
