; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_set_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_set_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.v4l2_subdev** }
%struct.v4l2_subdev = type { i32 }
%struct.vpif_display_config = type { %struct.vpif_display_chan_config* }
%struct.vpif_display_chan_config = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.channel_obj = type { i64, i32, %struct.TYPE_5__, %struct.v4l2_subdev* }
%struct.TYPE_5__ = type { i32 }

@vpif_obj = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to set output\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpif_display_config*, %struct.channel_obj*, i32)* @vpif_set_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_set_output(%struct.vpif_display_config* %0, %struct.channel_obj* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpif_display_config*, align 8
  %6 = alloca %struct.channel_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpif_display_chan_config*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vpif_display_config* %0, %struct.vpif_display_config** %5, align 8
  store %struct.channel_obj* %1, %struct.channel_obj** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.vpif_display_config*, %struct.vpif_display_config** %5, align 8
  %15 = getelementptr inbounds %struct.vpif_display_config, %struct.vpif_display_config* %14, i32 0, i32 0
  %16 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %15, align 8
  %17 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %18 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %16, i64 %19
  store %struct.vpif_display_chan_config* %20, %struct.vpif_display_chan_config** %8, align 8
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.vpif_display_config*, %struct.vpif_display_config** %5, align 8
  %22 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @vpif_output_to_subdev(%struct.vpif_display_config* %21, %struct.vpif_display_chan_config* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vpif_obj, i32 0, i32 0), align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %28, i64 %30
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %31, align 8
  store %struct.v4l2_subdev* %32, %struct.v4l2_subdev** %9, align 8
  br label %33

33:                                               ; preds = %27, %3
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %35 = icmp ne %struct.v4l2_subdev* %34, null
  br i1 %35, label %36, label %70

36:                                               ; preds = %33
  %37 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %8, align 8
  %38 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %8, align 8
  %46 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %54 = load i32, i32* @video, align 4
  %55 = load i32, i32* @s_routing, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 0)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %36
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @ENOIOCTLCMD, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = call i32 @vpif_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %4, align 4
  br label %95

69:                                               ; preds = %61, %36
  br label %70

70:                                               ; preds = %69, %33
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %73 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %75 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %76 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %75, i32 0, i32 3
  store %struct.v4l2_subdev* %74, %struct.v4l2_subdev** %76, align 8
  %77 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %8, align 8
  %78 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = icmp ne %struct.TYPE_7__* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %70
  %82 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %8, align 8
  %83 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %92 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  br label %94

94:                                               ; preds = %81, %70
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %66
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @vpif_output_to_subdev(%struct.vpif_display_config*, %struct.vpif_display_chan_config*, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vpif_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
