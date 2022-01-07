; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vpbe_layer = type { i32, %struct.TYPE_4__, i32, %struct.vpbe_display* }
%struct.TYPE_4__ = type { i32, %struct.osd_layer_config }
%struct.osd_layer_config = type { i64 }
%struct.vpbe_display = type { i64, %struct.osd_state*, %struct.vpbe_device* }
%struct.osd_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)* }
%struct.vpbe_device = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"vpbe_display_release\0A\00", align 1
@PIXFMT_NV12 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vpbe_display_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_display_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.vpbe_layer*, align 8
  %4 = alloca %struct.osd_layer_config*, align 8
  %5 = alloca %struct.vpbe_display*, align 8
  %6 = alloca %struct.vpbe_device*, align 8
  %7 = alloca %struct.osd_state*, align 8
  %8 = alloca %struct.vpbe_layer*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %9 = load %struct.file*, %struct.file** %2, align 8
  %10 = call %struct.vpbe_layer* @video_drvdata(%struct.file* %9)
  store %struct.vpbe_layer* %10, %struct.vpbe_layer** %3, align 8
  %11 = load %struct.vpbe_layer*, %struct.vpbe_layer** %3, align 8
  %12 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.osd_layer_config* %13, %struct.osd_layer_config** %4, align 8
  %14 = load %struct.vpbe_layer*, %struct.vpbe_layer** %3, align 8
  %15 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %14, i32 0, i32 3
  %16 = load %struct.vpbe_display*, %struct.vpbe_display** %15, align 8
  store %struct.vpbe_display* %16, %struct.vpbe_display** %5, align 8
  %17 = load %struct.vpbe_display*, %struct.vpbe_display** %5, align 8
  %18 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %17, i32 0, i32 2
  %19 = load %struct.vpbe_device*, %struct.vpbe_device** %18, align 8
  store %struct.vpbe_device* %19, %struct.vpbe_device** %6, align 8
  %20 = load %struct.vpbe_display*, %struct.vpbe_display** %5, align 8
  %21 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %20, i32 0, i32 1
  %22 = load %struct.osd_state*, %struct.osd_state** %21, align 8
  store %struct.osd_state* %22, %struct.osd_state** %7, align 8
  %23 = load i32, i32* @debug, align 4
  %24 = load %struct.vpbe_device*, %struct.vpbe_device** %6, align 8
  %25 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %24, i32 0, i32 0
  %26 = call i32 @v4l2_dbg(i32 1, i32 %23, i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.vpbe_layer*, %struct.vpbe_layer** %3, align 8
  %28 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %31 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %32, align 8
  %34 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %35 = load %struct.vpbe_layer*, %struct.vpbe_layer** %3, align 8
  %36 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %33(%struct.osd_state* %34, i32 %38)
  %40 = load %struct.vpbe_layer*, %struct.vpbe_layer** %3, align 8
  %41 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.vpbe_layer*, %struct.vpbe_layer** %3, align 8
  %45 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %99, label %48

48:                                               ; preds = %1
  %49 = load %struct.osd_layer_config*, %struct.osd_layer_config** %4, align 8
  %50 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PIXFMT_NV12, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %48
  %55 = load %struct.vpbe_display*, %struct.vpbe_display** %5, align 8
  %56 = load %struct.vpbe_layer*, %struct.vpbe_layer** %3, align 8
  %57 = call %struct.vpbe_layer* @_vpbe_display_get_other_win_layer(%struct.vpbe_display* %55, %struct.vpbe_layer* %56)
  store %struct.vpbe_layer* %57, %struct.vpbe_layer** %8, align 8
  %58 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %59 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %60, align 8
  %62 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %63 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %64 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 %61(%struct.osd_state* %62, i32 %66)
  %68 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %69 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %70, align 8
  %72 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %73 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %74 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %71(%struct.osd_state* %72, i32 %76)
  br label %78

78:                                               ; preds = %54, %48
  %79 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %80 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %81, align 8
  %83 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %84 = load %struct.vpbe_layer*, %struct.vpbe_layer** %3, align 8
  %85 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %82(%struct.osd_state* %83, i32 %87)
  %89 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %90 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %91, align 8
  %93 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %94 = load %struct.vpbe_layer*, %struct.vpbe_layer** %3, align 8
  %95 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %92(%struct.osd_state* %93, i32 %97)
  br label %99

99:                                               ; preds = %78, %1
  %100 = load %struct.file*, %struct.file** %2, align 8
  %101 = call i32 @_vb2_fop_release(%struct.file* %100, i32* null)
  %102 = load %struct.vpbe_layer*, %struct.vpbe_layer** %3, align 8
  %103 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load %struct.vpbe_display*, %struct.vpbe_display** %5, align 8
  %106 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  ret i32 0
}

declare dso_local %struct.vpbe_layer* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vpbe_layer* @_vpbe_display_get_other_win_layer(%struct.vpbe_display*, %struct.vpbe_layer*) #1

declare dso_local i32 @_vb2_fop_release(%struct.file*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
