; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_set_osd_display_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_set_osd_display_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_display = type { i32, %struct.vpbe_device*, %struct.osd_state* }
%struct.vpbe_device = type { i32 }
%struct.osd_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.osd_state*, i32, i32)*, i32 (%struct.osd_state*, i32, i64, i32)* }
%struct.vpbe_layer = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, %struct.osd_layer_config }
%struct.osd_layer_config = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Error in enabling osd window layer 0\0A\00", align 1
@PIXFMT_NV12 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Error in enabling osd window layer 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_display*, %struct.vpbe_layer*)* @vpbe_set_osd_display_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_set_osd_display_params(%struct.vpbe_display* %0, %struct.vpbe_layer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpbe_display*, align 8
  %5 = alloca %struct.vpbe_layer*, align 8
  %6 = alloca %struct.osd_layer_config*, align 8
  %7 = alloca %struct.osd_state*, align 8
  %8 = alloca %struct.vpbe_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vpbe_layer*, align 8
  store %struct.vpbe_display* %0, %struct.vpbe_display** %4, align 8
  store %struct.vpbe_layer* %1, %struct.vpbe_layer** %5, align 8
  %12 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %13 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store %struct.osd_layer_config* %14, %struct.osd_layer_config** %6, align 8
  %15 = load %struct.vpbe_display*, %struct.vpbe_display** %4, align 8
  %16 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %15, i32 0, i32 2
  %17 = load %struct.osd_state*, %struct.osd_state** %16, align 8
  store %struct.osd_state* %17, %struct.osd_state** %7, align 8
  %18 = load %struct.vpbe_display*, %struct.vpbe_display** %4, align 8
  %19 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %18, i32 0, i32 1
  %20 = load %struct.vpbe_device*, %struct.vpbe_device** %19, align 8
  store %struct.vpbe_device* %20, %struct.vpbe_device** %8, align 8
  %21 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %22 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %25, i32 0)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %28 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32 (%struct.osd_state*, i32, i64, i32)*, i32 (%struct.osd_state*, i32, i64, i32)** %29, align 8
  %31 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %32 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %33 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.vpbe_display*, %struct.vpbe_display** %4, align 8
  %38 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %30(%struct.osd_state* %31, i32 %35, i64 %36, i32 %39)
  %41 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %42 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32 (%struct.osd_state*, i32, i32)*, i32 (%struct.osd_state*, i32, i32)** %43, align 8
  %45 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %46 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %47 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 %44(%struct.osd_state* %45, i32 %49, i32 0)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %2
  %54 = load %struct.vpbe_device*, %struct.vpbe_device** %8, align 8
  %55 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %54, i32 0, i32 0
  %56 = call i32 @v4l2_err(i32* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %91

57:                                               ; preds = %2
  %58 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %59 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %62 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PIXFMT_NV12, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %57
  %67 = load %struct.vpbe_display*, %struct.vpbe_display** %4, align 8
  %68 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %69 = call %struct.vpbe_layer* @_vpbe_display_get_other_win_layer(%struct.vpbe_display* %67, %struct.vpbe_layer* %68)
  store %struct.vpbe_layer* %69, %struct.vpbe_layer** %11, align 8
  %70 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %71 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32 (%struct.osd_state*, i32, i32)*, i32 (%struct.osd_state*, i32, i32)** %72, align 8
  %74 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %75 = load %struct.vpbe_layer*, %struct.vpbe_layer** %11, align 8
  %76 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 %73(%struct.osd_state* %74, i32 %78, i32 1)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %66
  %83 = load %struct.vpbe_device*, %struct.vpbe_device** %8, align 8
  %84 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %83, i32 0, i32 0
  %85 = call i32 @v4l2_err(i32* %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %91

86:                                               ; preds = %66
  %87 = load %struct.vpbe_layer*, %struct.vpbe_layer** %11, align 8
  %88 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %57
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %82, %53
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local %struct.vpbe_layer* @_vpbe_display_get_other_win_layer(%struct.vpbe_display*, %struct.vpbe_layer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
