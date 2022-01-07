; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_get_sensor_bounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_get_sensor_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dcmi = type { i32, %struct.dcmi_framesize*, %struct.TYPE_2__ }
%struct.dcmi_framesize = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_rect = type { i32, i32, i64, i64 }
%struct.v4l2_subdev_selection = type { %struct.v4l2_rect, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32 }

@V4L2_SEL_TGT_CROP_BOUNDS = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@get_selection = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dcmi*, %struct.v4l2_rect*)* @dcmi_get_sensor_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_get_sensor_bounds(%struct.stm32_dcmi* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_dcmi*, align 8
  %5 = alloca %struct.v4l2_rect*, align 8
  %6 = alloca %struct.v4l2_subdev_selection, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_pix_format, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dcmi_framesize*, align 8
  %14 = alloca i32, align 4
  store %struct.stm32_dcmi* %0, %struct.stm32_dcmi** %4, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %5, align 8
  %15 = bitcast %struct.v4l2_subdev_selection* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %6, i32 0, i32 1
  %17 = load i32, i32* @V4L2_SEL_TGT_CROP_BOUNDS, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %6, i32 0, i32 2
  %19 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %21 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @pad, align 4
  %25 = load i32, i32* @get_selection, align 4
  %26 = call i32 @v4l2_subdev_call(i32 %23, i32 %24, i32 %25, i32* null, %struct.v4l2_subdev_selection* %6)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %6, i32 0, i32 0
  %32 = bitcast %struct.v4l2_rect* %30 to i8*
  %33 = bitcast %struct.v4l2_rect* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 24, i1 false)
  br label %34

34:                                               ; preds = %29, %2
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @ENOIOCTLCMD, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %3, align 4
  br label %111

41:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %74, %41
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %45 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %42
  %49 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %50 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %49, i32 0, i32 1
  %51 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %51, i64 %53
  store %struct.dcmi_framesize* %54, %struct.dcmi_framesize** %13, align 8
  %55 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %13, align 8
  %56 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %13, align 8
  %59 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul i32 %57, %60
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %48
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %9, align 4
  %67 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %13, align 8
  %68 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %7, align 4
  %70 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %13, align 8
  %71 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %65, %48
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %42

77:                                               ; preds = %42
  %78 = load i32, i32* %9, align 4
  %79 = icmp ugt i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %3, align 4
  br label %111

91:                                               ; preds = %77
  %92 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %93 = call i32 @dcmi_get_sensor_format(%struct.stm32_dcmi* %92, %struct.v4l2_pix_format* %10)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %3, align 4
  br label %111

98:                                               ; preds = %91
  %99 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %100 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  %101 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %102 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %10, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %106 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %10, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %110 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %98, %96, %80, %39
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_selection*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dcmi_get_sensor_format(%struct.stm32_dcmi*, %struct.v4l2_pix_format*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
