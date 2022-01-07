; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_video-mux.c_video_mux_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_video-mux.c_video_mux_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i64 }
%struct.media_pad = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.video_mux = type { i64, i32, i32, i32* }

@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"link setup '%s':%d->'%s':%d[%d]\00", align 1
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"setting %d active\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"going inactive\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @video_mux_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_mux_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.media_pad*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.video_mux*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %6, align 8
  store %struct.media_pad* %1, %struct.media_pad** %7, align 8
  store %struct.media_pad* %2, %struct.media_pad** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %15 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %14)
  store %struct.v4l2_subdev* %15, %struct.v4l2_subdev** %10, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %17 = call %struct.video_mux* @v4l2_subdev_to_video_mux(%struct.v4l2_subdev* %16)
  store %struct.video_mux* %17, %struct.video_mux** %11, align 8
  %18 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %19 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %20, 1
  store i64 %21, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %23 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %140

29:                                               ; preds = %4
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %34 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %39 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %42 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %47 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %51 = and i32 %49, %50
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %40, i32 %45, i64 %48, i32 %51)
  %53 = load %struct.video_mux*, %struct.video_mux** %11, align 8
  %54 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %114

60:                                               ; preds = %29
  %61 = load %struct.video_mux*, %struct.video_mux** %11, align 8
  %62 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %65 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %135

69:                                               ; preds = %60
  %70 = load %struct.video_mux*, %struct.video_mux** %11, align 8
  %71 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp uge i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %13, align 4
  br label %135

77:                                               ; preds = %69
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %79 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %82 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i32, i8*, ...) @dev_dbg(i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  %85 = load %struct.video_mux*, %struct.video_mux** %11, align 8
  %86 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %89 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @mux_control_try_select(i32 %87, i64 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %77
  br label %135

95:                                               ; preds = %77
  %96 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %97 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.video_mux*, %struct.video_mux** %11, align 8
  %100 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.video_mux*, %struct.video_mux** %11, align 8
  %102 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.video_mux*, %struct.video_mux** %11, align 8
  %105 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.video_mux*, %struct.video_mux** %11, align 8
  %110 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 %108, i32* %113, align 4
  br label %134

114:                                              ; preds = %29
  %115 = load %struct.video_mux*, %struct.video_mux** %11, align 8
  %116 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %119 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %135

123:                                              ; preds = %114
  %124 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %125 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i8*, ...) @dev_dbg(i32 %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %128 = load %struct.video_mux*, %struct.video_mux** %11, align 8
  %129 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @mux_control_deselect(i32 %130)
  %132 = load %struct.video_mux*, %struct.video_mux** %11, align 8
  %133 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %132, i32 0, i32 0
  store i64 -1, i64* %133, align 8
  br label %134

134:                                              ; preds = %123, %95
  br label %135

135:                                              ; preds = %134, %122, %94, %74, %68
  %136 = load %struct.video_mux*, %struct.video_mux** %11, align 8
  %137 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %136, i32 0, i32 1
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %135, %28
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.video_mux* @v4l2_subdev_to_video_mux(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mux_control_try_select(i32, i64) #1

declare dso_local i32 @mux_control_deselect(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
