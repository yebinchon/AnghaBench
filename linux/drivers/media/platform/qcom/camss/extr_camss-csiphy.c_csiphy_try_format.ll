; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_csiphy_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_csiphy_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csiphy_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i8*, i8*, i32 }

@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@MSM_CSID_PAD_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csiphy_device*, %struct.v4l2_subdev_pad_config*, i32, %struct.v4l2_mbus_framefmt*, i32)* @csiphy_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csiphy_try_format(%struct.csiphy_device* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2, %struct.v4l2_mbus_framefmt* %3, i32 %4) #0 {
  %6 = alloca %struct.csiphy_device*, align 8
  %7 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.csiphy_device* %0, %struct.csiphy_device** %6, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.v4l2_mbus_framefmt* %3, %struct.v4l2_mbus_framefmt** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %78 [
    i32 129, label %13
    i32 128, label %69
  ]

13:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %35, %13
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %17 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %25 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %23, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %38

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %11, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %14

38:                                               ; preds = %33, %14
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %41 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp uge i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_2X8, align 4
  %46 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* @u32, align 4
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @clamp_t(i32 %49, i8* %52, i32 1, i32 8191)
  %54 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %55 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @u32, align 4
  %57 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @clamp_t(i32 %56, i8* %59, i32 1, i32 8191)
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %67 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %68 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %78

69:                                               ; preds = %5
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %71 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %72 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %73 = load i32, i32* @MSM_CSID_PAD_SINK, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call %struct.v4l2_mbus_framefmt* @__csiphy_get_format(%struct.csiphy_device* %71, %struct.v4l2_subdev_pad_config* %72, i32 %73, i32 %74)
  %76 = bitcast %struct.v4l2_mbus_framefmt* %70 to i8*
  %77 = bitcast %struct.v4l2_mbus_framefmt* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 32, i1 false)
  br label %78

78:                                               ; preds = %5, %69, %48
  ret void
}

declare dso_local i8* @clamp_t(i32, i8*, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__csiphy_get_format(%struct.csiphy_device*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
