; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_update_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_update_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_obj = type { %struct.vpif_params, %struct.video_obj, %struct.common_obj* }
%struct.vpif_params = type { %struct.vpif_channel_config_params }
%struct.vpif_channel_config_params = type { i32, i32, i64 }
%struct.video_obj = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.common_obj = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Pixel details: Width = %d,Height = %d\0A\00", align 1
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel_obj*)* @vpif_update_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_update_resolution(%struct.channel_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.channel_obj*, align 8
  %4 = alloca %struct.common_obj*, align 8
  %5 = alloca %struct.video_obj*, align 8
  %6 = alloca %struct.vpif_params*, align 8
  %7 = alloca %struct.vpif_channel_config_params*, align 8
  store %struct.channel_obj* %0, %struct.channel_obj** %3, align 8
  %8 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %9 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %8, i32 0, i32 2
  %10 = load %struct.common_obj*, %struct.common_obj** %9, align 8
  %11 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %12 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %10, i64 %11
  store %struct.common_obj* %12, %struct.common_obj** %4, align 8
  %13 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %14 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %13, i32 0, i32 1
  store %struct.video_obj* %14, %struct.video_obj** %5, align 8
  %15 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %16 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %15, i32 0, i32 0
  store %struct.vpif_params* %16, %struct.vpif_params** %6, align 8
  %17 = load %struct.vpif_params*, %struct.vpif_params** %6, align 8
  %18 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %17, i32 0, i32 0
  store %struct.vpif_channel_config_params* %18, %struct.vpif_channel_config_params** %7, align 8
  %19 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %20 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %25 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %146

33:                                               ; preds = %23, %1
  %34 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %35 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %40 = call i64 @vpif_update_std_info(%struct.channel_obj* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %146

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* @V4L2_PIX_FMT_YUV422P, align 4
  %48 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %49 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 5
  store i32 %47, i32* %52, align 4
  %53 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %54 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %57 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 4
  %61 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %62 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %65 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 %63, i32* %68, align 4
  %69 = load i32, i32* @debug, align 4
  %70 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %71 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %77 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @vpif_dbg(i32 1, i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %81)
  %83 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %84 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %87 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %89 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %92 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %94 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %97 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = mul nsw i32 %99, 2
  %101 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %102 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  store i32 %100, i32* %105, align 4
  %106 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %107 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %46
  %111 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %112 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %113 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  store i32 %111, i32* %116, align 4
  br label %124

117:                                              ; preds = %46
  %118 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %119 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %120 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 4
  store i32 %118, i32* %123, align 4
  br label %124

124:                                              ; preds = %117, %110
  %125 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %126 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %133 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %134 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  store i32 %132, i32* %137, align 4
  br label %145

138:                                              ; preds = %124
  %139 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %140 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %141 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 3
  store i32 %139, i32* %144, align 4
  br label %145

145:                                              ; preds = %138, %131
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %42, %30
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i64 @vpif_update_std_info(%struct.channel_obj*) #1

declare dso_local i32 @vpif_dbg(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
