; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vpbe_layer = type { %struct.TYPE_7__, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, %struct.osd_layer_config }
%struct.osd_layer_config = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.osd_state*, %struct.vpbe_device* }
%struct.osd_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.osd_state.0*, i32, %struct.osd_layer_config*)* }
%struct.osd_state.0 = type opaque
%struct.vpbe_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"VIDIOC_G_SELECTION, layer id = %d\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vpbe_display_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_display_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.vpbe_layer*, align 8
  %9 = alloca %struct.osd_layer_config*, align 8
  %10 = alloca %struct.vpbe_device*, align 8
  %11 = alloca %struct.osd_state*, align 8
  %12 = alloca %struct.v4l2_rect*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.vpbe_layer* @video_drvdata(%struct.file* %13)
  store %struct.vpbe_layer* %14, %struct.vpbe_layer** %8, align 8
  %15 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %16 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store %struct.osd_layer_config* %17, %struct.osd_layer_config** %9, align 8
  %18 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %19 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.vpbe_device*, %struct.vpbe_device** %21, align 8
  store %struct.vpbe_device* %22, %struct.vpbe_device** %10, align 8
  %23 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %24 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.osd_state*, %struct.osd_state** %26, align 8
  store %struct.osd_state* %27, %struct.osd_state** %11, align 8
  %28 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %28, i32 0, i32 2
  store %struct.v4l2_rect* %29, %struct.v4l2_rect** %12, align 8
  %30 = load i32, i32* @debug, align 4
  %31 = load %struct.vpbe_device*, %struct.vpbe_device** %10, align 8
  %32 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %31, i32 0, i32 1
  %33 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %34 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @v4l2_dbg(i32 1, i32 %30, i32* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %103

45:                                               ; preds = %3
  %46 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %99 [
    i32 130, label %49
    i32 128, label %82
    i32 129, label %82
  ]

49:                                               ; preds = %45
  %50 = load %struct.osd_state*, %struct.osd_state** %11, align 8
  %51 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (%struct.osd_state.0*, i32, %struct.osd_layer_config*)*, i32 (%struct.osd_state.0*, i32, %struct.osd_layer_config*)** %52, align 8
  %54 = load %struct.osd_state*, %struct.osd_state** %11, align 8
  %55 = bitcast %struct.osd_state* %54 to %struct.osd_state.0*
  %56 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %57 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %61 = call i32 %53(%struct.osd_state.0* %55, i32 %59, %struct.osd_layer_config* %60)
  %62 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %63 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %66 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %68 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %71 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %73 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %76 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %78 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %81 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %102

82:                                               ; preds = %45, %45
  %83 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %84 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %83, i32 0, i32 3
  store i32 0, i32* %84, align 4
  %85 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %86 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %85, i32 0, i32 2
  store i32 0, i32* %86, align 4
  %87 = load %struct.vpbe_device*, %struct.vpbe_device** %10, align 8
  %88 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %92 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.vpbe_device*, %struct.vpbe_device** %10, align 8
  %94 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %98 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %102

99:                                               ; preds = %45
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %103

102:                                              ; preds = %82, %49
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %99, %42
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.vpbe_layer* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
