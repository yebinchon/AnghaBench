; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { %struct.v4l2_mbus_framefmt, i32, i64 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }
%struct.vfe_line = type { i64 }
%struct.v4l2_subdev_selection = type { %struct.TYPE_2__, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MSM_VFE_PAD_SINK = common dso_local global i64 0, align 8
@MSM_VFE_PAD_SRC = common dso_local global i64 0, align 8
@VFE_LINE_PIX = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_COMPOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @vfe_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.vfe_line*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.v4l2_subdev_selection, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.vfe_line* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.vfe_line* %13, %struct.vfe_line** %8, align 8
  %14 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %15 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.v4l2_mbus_framefmt* @__vfe_get_format(%struct.vfe_line* %14, %struct.v4l2_subdev_pad_config* %15, i64 %18, i32 %21)
  store %struct.v4l2_mbus_framefmt* %22, %struct.v4l2_mbus_framefmt** %9, align 8
  %23 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %24 = icmp eq %struct.v4l2_mbus_framefmt* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %108

28:                                               ; preds = %3
  %29 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %30 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %31 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %34, i32 0, i32 0
  %36 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @vfe_try_format(%struct.vfe_line* %29, %struct.v4l2_subdev_pad_config* %30, i64 %33, %struct.v4l2_mbus_framefmt* %35, i32 %38)
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %41 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %41, i32 0, i32 0
  %43 = bitcast %struct.v4l2_mbus_framefmt* %40 to i8*
  %44 = bitcast %struct.v4l2_mbus_framefmt* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 8 %44, i64 8, i1 false)
  %45 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %107

50:                                               ; preds = %28
  %51 = bitcast %struct.v4l2_subdev_selection* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %51, i8 0, i64 32, i1 false)
  %52 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %53 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %54 = load i64, i64* @MSM_VFE_PAD_SRC, align 8
  %55 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.v4l2_mbus_framefmt* @__vfe_get_format(%struct.vfe_line* %52, %struct.v4l2_subdev_pad_config* %53, i64 %54, i32 %57)
  store %struct.v4l2_mbus_framefmt* %58, %struct.v4l2_mbus_framefmt** %9, align 8
  %59 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %60 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %60, i32 0, i32 0
  %62 = bitcast %struct.v4l2_mbus_framefmt* %59 to i8*
  %63 = bitcast %struct.v4l2_mbus_framefmt* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 8 %63, i64 8, i1 false)
  %64 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %65 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %66 = load i64, i64* @MSM_VFE_PAD_SRC, align 8
  %67 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %68 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @vfe_try_format(%struct.vfe_line* %64, %struct.v4l2_subdev_pad_config* %65, i64 %66, %struct.v4l2_mbus_framefmt* %67, i32 %70)
  %72 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %73 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VFE_LINE_PIX, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %108

78:                                               ; preds = %50
  %79 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 3
  store i32 %81, i32* %82, align 8
  %83 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 2
  store i64 %83, i64* %84, align 8
  %85 = load i32, i32* @V4L2_SEL_TGT_COMPOSE, align 4
  %86 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 1
  store i32 %85, i32* %86, align 8
  %87 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %100 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %101 = call i32 @vfe_set_selection(%struct.v4l2_subdev* %99, %struct.v4l2_subdev_pad_config* %100, %struct.v4l2_subdev_selection* %10)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %78
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %4, align 4
  br label %108

106:                                              ; preds = %78
  br label %107

107:                                              ; preds = %106, %28
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %104, %77, %25
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.vfe_line* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__vfe_get_format(%struct.vfe_line*, %struct.v4l2_subdev_pad_config*, i64, i32) #1

declare dso_local i32 @vfe_try_format(%struct.vfe_line*, %struct.v4l2_subdev_pad_config*, i64, %struct.v4l2_mbus_framefmt*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @vfe_set_selection(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
