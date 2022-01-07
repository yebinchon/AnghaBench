; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i32, i32 }
%struct.isp_res_device = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.resizer_ratio = type { i32 }

@RESZ_PAD_SINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RESZ_PAD_SOURCE = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @resizer_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resizer_get_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.isp_res_device*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca %struct.resizer_ratio, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.isp_res_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.isp_res_device* %13, %struct.isp_res_device** %8, align 8
  %14 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RESZ_PAD_SINK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %85

22:                                               ; preds = %3
  %23 = load %struct.isp_res_device*, %struct.isp_res_device** %8, align 8
  %24 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %25 = load i64, i64* @RESZ_PAD_SINK, align 8
  %26 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.v4l2_mbus_framefmt* @__resizer_get_format(%struct.isp_res_device* %23, %struct.v4l2_subdev_pad_config* %24, i64 %25, i32 %28)
  store %struct.v4l2_mbus_framefmt* %29, %struct.v4l2_mbus_framefmt** %10, align 8
  %30 = load %struct.isp_res_device*, %struct.isp_res_device** %8, align 8
  %31 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %32 = load i64, i64* @RESZ_PAD_SOURCE, align 8
  %33 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.v4l2_mbus_framefmt* @__resizer_get_format(%struct.isp_res_device* %30, %struct.v4l2_subdev_pad_config* %31, i64 %32, i32 %35)
  store %struct.v4l2_mbus_framefmt* %36, %struct.v4l2_mbus_framefmt** %9, align 8
  %37 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %81 [
    i32 128, label %40
    i32 129, label %65
  ]

40:                                               ; preds = %22
  %41 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 0, i32* %46, align 8
  %47 = load i8*, i8** @INT_MAX, align 8
  %48 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** @INT_MAX, align 8
  %52 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %57 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %57, i32 0, i32 2
  %59 = call i32 @resizer_try_crop(%struct.v4l2_mbus_framefmt* %55, %struct.v4l2_mbus_framefmt* %56, %struct.TYPE_4__* %58)
  %60 = load %struct.isp_res_device*, %struct.isp_res_device** %8, align 8
  %61 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %61, i32 0, i32 2
  %63 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %64 = call i32 @resizer_calc_ratios(%struct.isp_res_device* %60, %struct.TYPE_4__* %62, %struct.v4l2_mbus_framefmt* %63, %struct.resizer_ratio* %11)
  br label %84

65:                                               ; preds = %22
  %66 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %66, i32 0, i32 2
  %68 = load %struct.isp_res_device*, %struct.isp_res_device** %8, align 8
  %69 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %70 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.TYPE_4__* @__resizer_get_crop(%struct.isp_res_device* %68, %struct.v4l2_subdev_pad_config* %69, i32 %72)
  %74 = bitcast %struct.TYPE_4__* %67 to i8*
  %75 = bitcast %struct.TYPE_4__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 24, i1 false)
  %76 = load %struct.isp_res_device*, %struct.isp_res_device** %8, align 8
  %77 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %77, i32 0, i32 2
  %79 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %80 = call i32 @resizer_calc_ratios(%struct.isp_res_device* %76, %struct.TYPE_4__* %78, %struct.v4l2_mbus_framefmt* %79, %struct.resizer_ratio* %11)
  br label %84

81:                                               ; preds = %22
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %65, %40
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %81, %19
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.isp_res_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__resizer_get_format(%struct.isp_res_device*, %struct.v4l2_subdev_pad_config*, i64, i32) #1

declare dso_local i32 @resizer_try_crop(%struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt*, %struct.TYPE_4__*) #1

declare dso_local i32 @resizer_calc_ratios(%struct.isp_res_device*, %struct.TYPE_4__*, %struct.v4l2_mbus_framefmt*, %struct.resizer_ratio*) #1

declare dso_local %struct.TYPE_4__* @__resizer_get_crop(%struct.isp_res_device*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
