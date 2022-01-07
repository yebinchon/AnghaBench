; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_enum_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_enum_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vpif_display_config* }
%struct.vpif_display_config = type { %struct.vpif_display_chan_config* }
%struct.vpif_display_chan_config = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.v4l2_output }
%struct.v4l2_output = type { i64 }
%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.channel_obj = type { i64 }

@vpif_dev = common dso_local global %struct.TYPE_4__* null, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid output index\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_output*)* @vpif_enum_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_enum_output(%struct.file* %0, i8* %1, %struct.v4l2_output* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_output*, align 8
  %8 = alloca %struct.vpif_display_config*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.channel_obj*, align 8
  %11 = alloca %struct.vpif_display_chan_config*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_output* %2, %struct.v4l2_output** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vpif_dev, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.vpif_display_config*, %struct.vpif_display_config** %13, align 8
  store %struct.vpif_display_config* %14, %struct.vpif_display_config** %8, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call %struct.video_device* @video_devdata(%struct.file* %15)
  store %struct.video_device* %16, %struct.video_device** %9, align 8
  %17 = load %struct.video_device*, %struct.video_device** %9, align 8
  %18 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %17)
  store %struct.channel_obj* %18, %struct.channel_obj** %10, align 8
  %19 = load %struct.vpif_display_config*, %struct.vpif_display_config** %8, align 8
  %20 = getelementptr inbounds %struct.vpif_display_config, %struct.vpif_display_config* %19, i32 0, i32 0
  %21 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %20, align 8
  %22 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %23 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %21, i64 %24
  store %struct.vpif_display_chan_config* %25, %struct.vpif_display_chan_config** %11, align 8
  %26 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %11, align 8
  %30 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load i32, i32* @debug, align 4
  %35 = call i32 @vpif_dbg(i32 1, i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %50

38:                                               ; preds = %3
  %39 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %40 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %11, align 8
  %41 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = bitcast %struct.v4l2_output* %39 to i8*
  %49 = bitcast %struct.v4l2_output* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %38, %33
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
