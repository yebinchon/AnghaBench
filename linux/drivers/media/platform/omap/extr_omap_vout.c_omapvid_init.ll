; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_omapvid_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_omapvid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_vout_device = type { i32, %struct.TYPE_6__*, %struct.v4l2_window, %struct.omapvideo_info }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_window = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.omapvideo_info = type { i32, %struct.omap_overlay** }
%struct.omap_overlay = type { %struct.omap_dss_device* (%struct.omap_overlay*)* }
%struct.omap_dss_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.omap_video_timings }
%struct.omap_video_timings = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"apply_changes failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_vout_device*, i32)* @omapvid_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapvid_init(%struct.omap_vout_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_vout_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_window*, align 8
  %9 = alloca %struct.omap_overlay*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.omap_video_timings*, align 8
  %15 = alloca %struct.omapvideo_info*, align 8
  %16 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_vout_device* %0, %struct.omap_vout_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.omap_vout_device*, %struct.omap_vout_device** %4, align 8
  %18 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %17, i32 0, i32 3
  store %struct.omapvideo_info* %18, %struct.omapvideo_info** %15, align 8
  %19 = load %struct.omap_vout_device*, %struct.omap_vout_device** %4, align 8
  %20 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %19, i32 0, i32 2
  store %struct.v4l2_window* %20, %struct.v4l2_window** %8, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %151, %2
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.omapvideo_info*, %struct.omapvideo_info** %15, align 8
  %24 = getelementptr inbounds %struct.omapvideo_info, %struct.omapvideo_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %154

27:                                               ; preds = %21
  %28 = load %struct.omapvideo_info*, %struct.omapvideo_info** %15, align 8
  %29 = getelementptr inbounds %struct.omapvideo_info, %struct.omapvideo_info* %28, i32 0, i32 1
  %30 = load %struct.omap_overlay**, %struct.omap_overlay*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %30, i64 %32
  %34 = load %struct.omap_overlay*, %struct.omap_overlay** %33, align 8
  store %struct.omap_overlay* %34, %struct.omap_overlay** %9, align 8
  %35 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %36 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %35, i32 0, i32 0
  %37 = load %struct.omap_dss_device* (%struct.omap_overlay*)*, %struct.omap_dss_device* (%struct.omap_overlay*)** %36, align 8
  %38 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %39 = call %struct.omap_dss_device* %37(%struct.omap_overlay* %38)
  store %struct.omap_dss_device* %39, %struct.omap_dss_device** %16, align 8
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %16, align 8
  %41 = icmp ne %struct.omap_dss_device* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %27
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %162

45:                                               ; preds = %27
  %46 = load %struct.omap_dss_device*, %struct.omap_dss_device** %16, align 8
  %47 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store %struct.omap_video_timings* %48, %struct.omap_video_timings** %14, align 8
  %49 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %50 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %54 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  %57 = load %struct.omap_vout_device*, %struct.omap_vout_device** %4, align 8
  %58 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %129 [
    i32 128, label %60
    i32 130, label %81
    i32 129, label %108
  ]

60:                                               ; preds = %45
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @swap(i32 %61, i32 %62)
  %64 = load %struct.omap_video_timings*, %struct.omap_video_timings** %14, align 8
  %65 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %68 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %66, %70
  %72 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %73 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %71, %75
  store i32 %76, i32* %11, align 4
  %77 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %78 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %10, align 4
  br label %138

81:                                               ; preds = %45
  %82 = load %struct.omap_video_timings*, %struct.omap_video_timings** %14, align 8
  %83 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %86 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %84, %88
  %90 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %91 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %89, %93
  store i32 %94, i32* %10, align 4
  %95 = load %struct.omap_video_timings*, %struct.omap_video_timings** %14, align 8
  %96 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %99 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %97, %101
  %103 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %104 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %102, %106
  store i32 %107, i32* %11, align 4
  br label %138

108:                                              ; preds = %45
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @swap(i32 %109, i32 %110)
  %112 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %113 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %11, align 4
  %116 = load %struct.omap_video_timings*, %struct.omap_video_timings** %14, align 8
  %117 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %120 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %118, %122
  %124 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %125 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %123, %127
  store i32 %128, i32* %10, align 4
  br label %138

129:                                              ; preds = %45
  %130 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %131 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %10, align 4
  %134 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %135 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %129, %108, %81, %60
  %139 = load %struct.omap_vout_device*, %struct.omap_vout_device** %4, align 8
  %140 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @omapvid_setup_overlay(%struct.omap_vout_device* %139, %struct.omap_overlay* %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  br label %155

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %21

154:                                              ; preds = %21
  store i32 0, i32* %3, align 4
  br label %162

155:                                              ; preds = %149
  %156 = load %struct.omap_vout_device*, %struct.omap_vout_device** %4, align 8
  %157 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %156, i32 0, i32 1
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = call i32 @v4l2_warn(i32* %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %155, %154, %42
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @omapvid_setup_overlay(%struct.omap_vout_device*, %struct.omap_overlay*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
