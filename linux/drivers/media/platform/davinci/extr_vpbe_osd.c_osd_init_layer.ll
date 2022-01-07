; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_init_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_init_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32, i32, i32, i32, %struct.osd_osdwin_state*, %struct.osd_window_state* }
%struct.osd_osdwin_state = type { i32, i32, i32, i32 }
%struct.osd_window_state = type { i64, i8*, i8*, i64, %struct.osd_layer_config }
%struct.osd_layer_config = type { i32, i64, i64, i64, i64, i64, i64 }

@ZOOM_X1 = common dso_local global i8* null, align 8
@OSDWIN_OSD0 = common dso_local global i32 0, align 4
@OSDWIN_OSD1 = common dso_local global i32 0, align 4
@PIXFMT_8BPP = common dso_local global i32 0, align 4
@RAM_CLUT = common dso_local global i32 0, align 4
@OSD_8_VID_0 = common dso_local global i32 0, align 4
@BLINK_X1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32)* @osd_init_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osd_init_layer(%struct.osd_state* %0, i32 %1) #0 {
  %3 = alloca %struct.osd_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.osd_state*, align 8
  %6 = alloca %struct.osd_window_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.osd_osdwin_state*, align 8
  %9 = alloca %struct.osd_layer_config*, align 8
  %10 = alloca i64, align 8
  store %struct.osd_state* %0, %struct.osd_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  store %struct.osd_state* %11, %struct.osd_state** %5, align 8
  %12 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %13 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %12, i32 0, i32 5
  %14 = load %struct.osd_window_state*, %struct.osd_window_state** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %14, i64 %16
  store %struct.osd_window_state* %17, %struct.osd_window_state** %6, align 8
  %18 = load %struct.osd_window_state*, %struct.osd_window_state** %6, align 8
  %19 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %18, i32 0, i32 4
  store %struct.osd_layer_config* %19, %struct.osd_layer_config** %9, align 8
  %20 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %21 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %20, i32 0, i32 0
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.osd_window_state*, %struct.osd_window_state** %6, align 8
  %25 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @_osd_disable_layer(%struct.osd_state* %26, i32 %27)
  %29 = load i8*, i8** @ZOOM_X1, align 8
  %30 = load %struct.osd_window_state*, %struct.osd_window_state** %6, align 8
  %31 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @ZOOM_X1, align 8
  %33 = load %struct.osd_window_state*, %struct.osd_window_state** %6, align 8
  %34 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.osd_window_state*, %struct.osd_window_state** %6, align 8
  %38 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.osd_window_state*, %struct.osd_window_state** %6, align 8
  %41 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @_osd_set_zoom(%struct.osd_state* %35, i32 %36, i8* %39, i8* %42)
  %44 = load %struct.osd_window_state*, %struct.osd_window_state** %6, align 8
  %45 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.osd_window_state*, %struct.osd_window_state** %6, align 8
  %49 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @_osd_start_layer(%struct.osd_state* %46, i32 %47, i64 %50, i32 0)
  %52 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %53 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %55 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %57 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %59 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %61 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %63 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %4, align 4
  switch i32 %64, label %138 [
    i32 131, label %65
    i32 130, label %65
    i32 129, label %128
    i32 128, label %128
  ]

65:                                               ; preds = %2, %2
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 131
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @OSDWIN_OSD0, align 4
  br label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @OSDWIN_OSD1, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %7, align 4
  %74 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %75 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %74, i32 0, i32 4
  %76 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %76, i64 %78
  store %struct.osd_osdwin_state* %79, %struct.osd_osdwin_state** %8, align 8
  %80 = load i32, i32* @PIXFMT_8BPP, align 4
  %81 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %82 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %86 = call i32 @_osd_set_layer_config(%struct.osd_state* %83, i32 %84, %struct.osd_layer_config* %85)
  %87 = load i32, i32* @RAM_CLUT, align 4
  %88 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %8, align 8
  %89 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %8, align 8
  %93 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @_osd_set_osd_clut(%struct.osd_state* %90, i32 %91, i32 %94)
  %96 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %8, align 8
  %97 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %96, i32 0, i32 2
  store i32 0, i32* %97, align 4
  %98 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @_osd_disable_color_key(%struct.osd_state* %98, i32 %99)
  %101 = load i32, i32* @OSD_8_VID_0, align 4
  %102 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %8, align 8
  %103 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %8, align 8
  %107 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @_osd_set_blending_factor(%struct.osd_state* %104, i32 %105, i32 %108)
  %110 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %8, align 8
  %111 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %110, i32 0, i32 0
  store i32 0, i32* %111, align 4
  %112 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %8, align 8
  %115 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @_osd_set_rec601_attenuation(%struct.osd_state* %112, i32 %113, i32 %116)
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @OSDWIN_OSD1, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %72
  %122 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %123 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %122, i32 0, i32 3
  store i32 0, i32* %123, align 4
  %124 = load i32, i32* @BLINK_X1, align 4
  %125 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %126 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %121, %72
  br label %138

128:                                              ; preds = %2, %2
  %129 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %130 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %133 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %137 = call i32 @_osd_set_layer_config(%struct.osd_state* %134, i32 %135, %struct.osd_layer_config* %136)
  br label %138

138:                                              ; preds = %2, %128, %127
  %139 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %140 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %139, i32 0, i32 0
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_osd_disable_layer(%struct.osd_state*, i32) #1

declare dso_local i32 @_osd_set_zoom(%struct.osd_state*, i32, i8*, i8*) #1

declare dso_local i32 @_osd_start_layer(%struct.osd_state*, i32, i64, i32) #1

declare dso_local i32 @_osd_set_layer_config(%struct.osd_state*, i32, %struct.osd_layer_config*) #1

declare dso_local i32 @_osd_set_osd_clut(%struct.osd_state*, i32, i32) #1

declare dso_local i32 @_osd_disable_color_key(%struct.osd_state*, i32) #1

declare dso_local i32 @_osd_set_blending_factor(%struct.osd_state*, i32, i32) #1

declare dso_local i32 @_osd_set_rec601_attenuation(%struct.osd_state*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
