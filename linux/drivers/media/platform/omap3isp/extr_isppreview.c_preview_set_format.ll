; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }
%struct.isp_prev_device = type { i32 }
%struct.v4l2_rect = type { i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PREV_PAD_SINK = common dso_local global i32 0, align 4
@PREV_PAD_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @preview_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preview_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.isp_prev_device*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.isp_prev_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.isp_prev_device* %12, %struct.isp_prev_device** %8, align 8
  %13 = load %struct.isp_prev_device*, %struct.isp_prev_device** %8, align 8
  %14 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %15 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.v4l2_mbus_framefmt* @__preview_get_format(%struct.isp_prev_device* %13, %struct.v4l2_subdev_pad_config* %14, i32 %17, i32 %20)
  store %struct.v4l2_mbus_framefmt* %21, %struct.v4l2_mbus_framefmt** %9, align 8
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %23 = icmp eq %struct.v4l2_mbus_framefmt* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %93

27:                                               ; preds = %3
  %28 = load %struct.isp_prev_device*, %struct.isp_prev_device** %8, align 8
  %29 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %30 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %33, i32 0, i32 1
  %35 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @preview_try_format(%struct.isp_prev_device* %28, %struct.v4l2_subdev_pad_config* %29, i32 %32, %struct.v4l2_mbus_framefmt* %34, i32 %37)
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %40 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %40, i32 0, i32 1
  %42 = bitcast %struct.v4l2_mbus_framefmt* %39 to i8*
  %43 = bitcast %struct.v4l2_mbus_framefmt* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 8, i1 false)
  %44 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PREV_PAD_SINK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %92

49:                                               ; preds = %27
  %50 = load %struct.isp_prev_device*, %struct.isp_prev_device** %8, align 8
  %51 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %52 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.v4l2_rect* @__preview_get_crop(%struct.isp_prev_device* %50, %struct.v4l2_subdev_pad_config* %51, i32 %54)
  store %struct.v4l2_rect* %55, %struct.v4l2_rect** %10, align 8
  %56 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %57 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %59 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %71 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.isp_prev_device*, %struct.isp_prev_device** %8, align 8
  %73 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %73, i32 0, i32 1
  %75 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %76 = call i32 @preview_try_crop(%struct.isp_prev_device* %72, %struct.v4l2_mbus_framefmt* %74, %struct.v4l2_rect* %75)
  %77 = load %struct.isp_prev_device*, %struct.isp_prev_device** %8, align 8
  %78 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %79 = load i32, i32* @PREV_PAD_SOURCE, align 4
  %80 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.v4l2_mbus_framefmt* @__preview_get_format(%struct.isp_prev_device* %77, %struct.v4l2_subdev_pad_config* %78, i32 %79, i32 %82)
  store %struct.v4l2_mbus_framefmt* %83, %struct.v4l2_mbus_framefmt** %9, align 8
  %84 = load %struct.isp_prev_device*, %struct.isp_prev_device** %8, align 8
  %85 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %86 = load i32, i32* @PREV_PAD_SOURCE, align 4
  %87 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %88 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @preview_try_format(%struct.isp_prev_device* %84, %struct.v4l2_subdev_pad_config* %85, i32 %86, %struct.v4l2_mbus_framefmt* %87, i32 %90)
  br label %92

92:                                               ; preds = %49, %27
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %24
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.isp_prev_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__preview_get_format(%struct.isp_prev_device*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @preview_try_format(%struct.isp_prev_device*, %struct.v4l2_subdev_pad_config*, i32, %struct.v4l2_mbus_framefmt*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.v4l2_rect* @__preview_get_crop(%struct.isp_prev_device*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @preview_try_crop(%struct.isp_prev_device*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_rect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
