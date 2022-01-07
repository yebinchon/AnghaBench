; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_set_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.v4l2_subdev** }
%struct.v4l2_subdev = type { i32 }
%struct.vpif_capture_config = type { i32 (i64, i32)*, %struct.vpif_subdev_info*, %struct.vpif_capture_chan_config* }
%struct.vpif_subdev_info = type { i32 }
%struct.vpif_capture_chan_config = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.channel_obj = type { i64, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.v4l2_subdev* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@vpif_obj = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"couldn't setup input path for the sub device %s, for input index %d\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to set input\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpif_capture_config*, %struct.channel_obj*, i32)* @vpif_set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_set_input(%struct.vpif_capture_config* %0, %struct.channel_obj* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpif_capture_config*, align 8
  %6 = alloca %struct.channel_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpif_capture_chan_config*, align 8
  %9 = alloca %struct.vpif_subdev_info*, align 8
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vpif_capture_config* %0, %struct.vpif_capture_config** %5, align 8
  store %struct.channel_obj* %1, %struct.channel_obj** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %5, align 8
  %16 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %15, i32 0, i32 2
  %17 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %16, align 8
  %18 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %19 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %17, i64 %20
  store %struct.vpif_capture_chan_config* %21, %struct.vpif_capture_chan_config** %8, align 8
  store %struct.vpif_subdev_info* null, %struct.vpif_subdev_info** %9, align 8
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %5, align 8
  %23 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @vpif_input_to_subdev(%struct.vpif_capture_config* %22, %struct.vpif_capture_chan_config* %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %3
  %29 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vpif_obj, i32 0, i32 0), align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %29, i64 %31
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %32, align 8
  store %struct.v4l2_subdev* %33, %struct.v4l2_subdev** %10, align 8
  %34 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %5, align 8
  %35 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %34, i32 0, i32 1
  %36 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.vpif_subdev_info, %struct.vpif_subdev_info* %36, i64 %38
  store %struct.vpif_subdev_info* %39, %struct.vpif_subdev_info** %9, align 8
  br label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %134

41:                                               ; preds = %28
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %43 = icmp ne %struct.v4l2_subdev* %42, null
  br i1 %43, label %44, label %71

44:                                               ; preds = %41
  %45 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %5, align 8
  %46 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %45, i32 0, i32 0
  %47 = load i32 (i64, i32)*, i32 (i64, i32)** %46, align 8
  %48 = icmp ne i32 (i64, i32)* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %44
  %50 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %5, align 8
  %51 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %50, i32 0, i32 0
  %52 = load i32 (i64, i32)*, i32 (i64, i32)** %51, align 8
  %53 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %54 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %9, align 8
  %57 = getelementptr inbounds %struct.vpif_subdev_info, %struct.vpif_subdev_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 %52(i64 %55, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %49
  %63 = load i32, i32* @debug, align 4
  %64 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %9, align 8
  %65 = getelementptr inbounds %struct.vpif_subdev_info, %struct.vpif_subdev_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i32, i32, i8*, ...) @vpif_dbg(i32 1, i32 %63, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %4, align 4
  br label %134

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %70, %44, %41
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %73 = icmp ne %struct.v4l2_subdev* %72, null
  br i1 %73, label %74, label %109

74:                                               ; preds = %71
  %75 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %8, align 8
  %76 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %11, align 4
  %83 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %8, align 8
  %84 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %12, align 4
  %91 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %92 = load i32, i32* @video, align 4
  %93 = load i32, i32* @s_routing, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 0)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %74
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @ENOIOCTLCMD, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @debug, align 4
  %106 = call i32 (i32, i32, i8*, ...) @vpif_dbg(i32 1, i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %4, align 4
  br label %134

108:                                              ; preds = %99, %74
  br label %109

109:                                              ; preds = %108, %71
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %112 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %114 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %115 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %114, i32 0, i32 4
  store %struct.v4l2_subdev* %113, %struct.v4l2_subdev** %115, align 8
  %116 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %8, align 8
  %117 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %120 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %8, align 8
  %123 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %132 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 4
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %109, %104, %62, %40
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @vpif_input_to_subdev(%struct.vpif_capture_config*, %struct.vpif_capture_chan_config*, i32) #1

declare dso_local i32 @vpif_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
