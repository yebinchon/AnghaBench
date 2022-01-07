; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_get_sensor_frame_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_get_sensor_frame_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_plane_pix_format = type { i64 }
%struct.v4l2_mbus_frame_desc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@set_frame_desc = common dso_local global i32 0, align 4
@get_frame_desc = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FIMC_MAX_JPEG_BUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unsupported buffer size: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_plane_pix_format*, i32, i32)* @fimc_get_sensor_frame_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_get_sensor_frame_desc(%struct.v4l2_subdev* %0, %struct.v4l2_plane_pix_format* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_plane_pix_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_mbus_frame_desc, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_plane_pix_format* %1, %struct.v4l2_plane_pix_format** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %31, %4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %7, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %19, i64 %21
  %23 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %10, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 %24, i64* %30, align 8
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @set_frame_desc, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %43, i32 %44, i32 %45, i32 %46, %struct.v4l2_mbus_frame_desc* %10)
  store i32 %47, i32* %12, align 4
  br label %54

48:                                               ; preds = %34
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @get_frame_desc, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %49, i32 %50, i32 %51, i32 %52, %struct.v4l2_mbus_frame_desc* %10)
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %48, %42
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %109

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %10, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %109

67:                                               ; preds = %59
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %10, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %7, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %80, i64 %82
  %84 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %83, i32 0, i32 0
  store i64 %79, i64* %84, align 8
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %68

88:                                               ; preds = %68
  %89 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %10, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @FIMC_MAX_JPEG_BUF_SIZE, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %88
  %97 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %98 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %10, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @v4l2_err(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %109

108:                                              ; preds = %88
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %96, %64, %57
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32, %struct.v4l2_mbus_frame_desc*) #1

declare dso_local i32 @v4l2_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
