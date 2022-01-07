; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispif_line = type { i32, i32* }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_mbus_framefmt = type { i8*, i32, i8*, i8*, i32 }

@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispif_line*, %struct.v4l2_subdev_pad_config*, i32, %struct.v4l2_mbus_framefmt*, i32)* @ispif_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ispif_try_format(%struct.ispif_line* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2, %struct.v4l2_mbus_framefmt* %3, i32 %4) #0 {
  %6 = alloca %struct.ispif_line*, align 8
  %7 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ispif_line* %0, %struct.ispif_line** %6, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.v4l2_mbus_framefmt* %3, %struct.v4l2_mbus_framefmt** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %76 [
    i32 129, label %13
    i32 128, label %68
  ]

13:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %34, %13
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.ispif_line*, %struct.ispif_line** %6, align 8
  %17 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ispif_line*, %struct.ispif_line** %6, align 8
  %25 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %23, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %37

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %11, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %14

37:                                               ; preds = %32, %14
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.ispif_line*, %struct.ispif_line** %6, align 8
  %40 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp uge i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_2X8, align 4
  %45 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %46 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load i32, i32* @u32, align 4
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @clamp_t(i32 %48, i8* %51, i32 1, i32 8191)
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @u32, align 4
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @clamp_t(i32 %55, i8* %58, i32 1, i32 8191)
  %60 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %61 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %63 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %64 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** @V4L2_COLORSPACE_SRGB, align 8
  %66 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %67 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %76

68:                                               ; preds = %5
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %70 = load %struct.ispif_line*, %struct.ispif_line** %6, align 8
  %71 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call %struct.v4l2_mbus_framefmt* @__ispif_get_format(%struct.ispif_line* %70, %struct.v4l2_subdev_pad_config* %71, i32 129, i32 %72)
  %74 = bitcast %struct.v4l2_mbus_framefmt* %69 to i8*
  %75 = bitcast %struct.v4l2_mbus_framefmt* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 40, i1 false)
  br label %76

76:                                               ; preds = %5, %68, %47
  %77 = load i8*, i8** @V4L2_COLORSPACE_SRGB, align 8
  %78 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  ret void
}

declare dso_local i8* @clamp_t(i32, i8*, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__ispif_get_format(%struct.ispif_line*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
