; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_video-mux.c_video_mux_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_video-mux.c_video_mux_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i64, i32, i32 }
%struct.video_mux = type { i64, i32, %struct.v4l2_mbus_framefmt*, %struct.media_pad* }
%struct.media_pad = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @video_mux_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_mux_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.video_mux*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca %struct.media_pad*, align 8
  %12 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call %struct.video_mux* @v4l2_subdev_to_video_mux(%struct.v4l2_subdev* %13)
  store %struct.video_mux* %14, %struct.video_mux** %8, align 8
  %15 = load %struct.video_mux*, %struct.video_mux** %8, align 8
  %16 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %15, i32 0, i32 3
  %17 = load %struct.media_pad*, %struct.media_pad** %16, align 8
  %18 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %17, i64 %20
  store %struct.media_pad* %21, %struct.media_pad** %11, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %25, 1
  store i64 %26, i64* %12, align 8
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %28 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %29 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.v4l2_mbus_framefmt* @__video_mux_get_pad_format(%struct.v4l2_subdev* %27, %struct.v4l2_subdev_pad_config* %28, i64 %31, i32 %34)
  store %struct.v4l2_mbus_framefmt* %35, %struct.v4l2_mbus_framefmt** %9, align 8
  %36 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %37 = icmp ne %struct.v4l2_mbus_framefmt* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %140

41:                                               ; preds = %3
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %43 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.v4l2_mbus_framefmt* @__video_mux_get_pad_format(%struct.v4l2_subdev* %42, %struct.v4l2_subdev_pad_config* %43, i64 %44, i32 %47)
  store %struct.v4l2_mbus_framefmt* %48, %struct.v4l2_mbus_framefmt** %10, align 8
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %50 = icmp ne %struct.v4l2_mbus_framefmt* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %140

54:                                               ; preds = %41
  %55 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 3
  %58 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %59, i32 0, i32 2
  %61 = call i32 @v4l_bound_align_image(i32* %57, i32 1, i32 65536, i32 0, i32* %60, i32 1, i32 65536, i32 0, i32 0)
  %62 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %67 [
    i32 203, label %66
    i32 202, label %66
    i32 201, label %66
    i32 200, label %66
    i32 199, label %66
    i32 198, label %66
    i32 212, label %66
    i32 211, label %66
    i32 197, label %66
    i32 196, label %66
    i32 195, label %66
    i32 207, label %66
    i32 194, label %66
    i32 210, label %66
    i32 209, label %66
    i32 193, label %66
    i32 191, label %66
    i32 190, label %66
    i32 214, label %66
    i32 192, label %66
    i32 206, label %66
    i32 205, label %66
    i32 204, label %66
    i32 147, label %66
    i32 169, label %66
    i32 163, label %66
    i32 151, label %66
    i32 136, label %66
    i32 129, label %66
    i32 162, label %66
    i32 150, label %66
    i32 135, label %66
    i32 128, label %66
    i32 149, label %66
    i32 167, label %66
    i32 155, label %66
    i32 140, label %66
    i32 133, label %66
    i32 148, label %66
    i32 165, label %66
    i32 153, label %66
    i32 138, label %66
    i32 131, label %66
    i32 164, label %66
    i32 152, label %66
    i32 137, label %66
    i32 130, label %66
    i32 146, label %66
    i32 168, label %66
    i32 156, label %66
    i32 141, label %66
    i32 134, label %66
    i32 157, label %66
    i32 142, label %66
    i32 158, label %66
    i32 166, label %66
    i32 154, label %66
    i32 139, label %66
    i32 132, label %66
    i32 145, label %66
    i32 161, label %66
    i32 213, label %66
    i32 160, label %66
    i32 144, label %66
    i32 143, label %66
    i32 159, label %66
    i32 208, label %66
    i32 215, label %66
    i32 185, label %66
    i32 180, label %66
    i32 175, label %66
    i32 170, label %66
    i32 189, label %66
    i32 184, label %66
    i32 179, label %66
    i32 174, label %66
    i32 188, label %66
    i32 183, label %66
    i32 178, label %66
    i32 173, label %66
    i32 187, label %66
    i32 182, label %66
    i32 177, label %66
    i32 172, label %66
    i32 186, label %66
    i32 181, label %66
    i32 176, label %66
    i32 171, label %66
  ]

66:                                               ; preds = %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54, %54
  br label %71

67:                                               ; preds = %54
  %68 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %69, i32 0, i32 0
  store i32 147, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %66
  %72 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %80 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %81, i32 0, i32 1
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %78, %71
  %84 = load %struct.video_mux*, %struct.video_mux** %8, align 8
  %85 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %84, i32 0, i32 1
  %86 = call i32 @mutex_lock(i32* %85)
  %87 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %88 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %83
  %94 = load %struct.video_mux*, %struct.video_mux** %8, align 8
  %95 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp uge i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %99, i32 0, i32 1
  %101 = load %struct.video_mux*, %struct.video_mux** %8, align 8
  %102 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %101, i32 0, i32 2
  %103 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %102, align 8
  %104 = load %struct.video_mux*, %struct.video_mux** %8, align 8
  %105 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %103, i64 %106
  %108 = bitcast %struct.v4l2_mbus_framefmt* %100 to i8*
  %109 = bitcast %struct.v4l2_mbus_framefmt* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 24, i1 false)
  br label %110

110:                                              ; preds = %98, %93, %83
  %111 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %112 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %112, i32 0, i32 1
  %114 = bitcast %struct.v4l2_mbus_framefmt* %111 to i8*
  %115 = bitcast %struct.v4l2_mbus_framefmt* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 24, i1 false)
  %116 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %117 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %110
  %123 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %124 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.video_mux*, %struct.video_mux** %8, align 8
  %127 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %122
  %131 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %132 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %133 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %132, i32 0, i32 1
  %134 = bitcast %struct.v4l2_mbus_framefmt* %131 to i8*
  %135 = bitcast %struct.v4l2_mbus_framefmt* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %135, i64 24, i1 false)
  br label %136

136:                                              ; preds = %130, %122, %110
  %137 = load %struct.video_mux*, %struct.video_mux** %8, align 8
  %138 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %137, i32 0, i32 1
  %139 = call i32 @mutex_unlock(i32* %138)
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %136, %51, %38
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.video_mux* @v4l2_subdev_to_video_mux(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__video_mux_get_pad_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64, i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
