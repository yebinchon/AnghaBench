; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32, i32 }
%struct.isp_ccdc_device = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@CCDC_PAD_SOURCE_OF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i8* null, align 8
@CCDC_PAD_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @ccdc_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_get_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.isp_ccdc_device*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.isp_ccdc_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.isp_ccdc_device* %11, %struct.isp_ccdc_device** %8, align 8
  %12 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CCDC_PAD_SOURCE_OF, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %66

20:                                               ; preds = %3
  %21 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %62 [
    i32 128, label %24
    i32 129, label %51
  ]

24:                                               ; preds = %20
  %25 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = load i8*, i8** @INT_MAX, align 8
  %32 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load i8*, i8** @INT_MAX, align 8
  %36 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %40 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %41 = load i32, i32* @CCDC_PAD_SINK, align 4
  %42 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.v4l2_mbus_framefmt* @__ccdc_get_format(%struct.isp_ccdc_device* %39, %struct.v4l2_subdev_pad_config* %40, i32 %41, i32 %44)
  store %struct.v4l2_mbus_framefmt* %45, %struct.v4l2_mbus_framefmt** %9, align 8
  %46 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %48 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %48, i32 0, i32 3
  %50 = call i32 @ccdc_try_crop(%struct.isp_ccdc_device* %46, %struct.v4l2_mbus_framefmt* %47, %struct.TYPE_3__* %49)
  br label %65

51:                                               ; preds = %20
  %52 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %52, i32 0, i32 3
  %54 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %55 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %56 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_3__* @__ccdc_get_crop(%struct.isp_ccdc_device* %54, %struct.v4l2_subdev_pad_config* %55, i32 %58)
  %60 = bitcast %struct.TYPE_3__* %53 to i8*
  %61 = bitcast %struct.TYPE_3__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 24, i1 false)
  br label %65

62:                                               ; preds = %20
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %51, %24
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %62, %17
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.isp_ccdc_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__ccdc_get_format(%struct.isp_ccdc_device*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @ccdc_try_crop(%struct.isp_ccdc_device*, %struct.v4l2_mbus_framefmt*, %struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @__ccdc_get_crop(%struct.isp_ccdc_device*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
