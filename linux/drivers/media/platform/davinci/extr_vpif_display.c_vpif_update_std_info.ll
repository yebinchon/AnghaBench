; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_update_std_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_update_std_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpif_channel_config_params = type { i64, i32 }
%struct.channel_obj = type { %struct.vpif_params, %struct.video_obj }
%struct.vpif_params = type { %struct.vpif_channel_config_params }
%struct.video_obj = type { i32 }

@vpif_ch_params_count = common dso_local global i32 0, align 4
@vpif_ch_params = common dso_local global %struct.vpif_channel_config_params* null, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"SD format\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Format not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel_obj*)* @vpif_update_std_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_update_std_info(%struct.channel_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.channel_obj*, align 8
  %4 = alloca %struct.video_obj*, align 8
  %5 = alloca %struct.vpif_params*, align 8
  %6 = alloca %struct.vpif_channel_config_params*, align 8
  %7 = alloca %struct.vpif_channel_config_params*, align 8
  %8 = alloca i32, align 4
  store %struct.channel_obj* %0, %struct.channel_obj** %3, align 8
  %9 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %10 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %9, i32 0, i32 1
  store %struct.video_obj* %10, %struct.video_obj** %4, align 8
  %11 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %12 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %11, i32 0, i32 0
  store %struct.vpif_params* %12, %struct.vpif_params** %5, align 8
  %13 = load %struct.vpif_params*, %struct.vpif_params** %5, align 8
  %14 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %13, i32 0, i32 0
  store %struct.vpif_channel_config_params* %14, %struct.vpif_channel_config_params** %6, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %45, %1
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @vpif_ch_params_count, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** @vpif_ch_params, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %20, i64 %22
  store %struct.vpif_channel_config_params* %23, %struct.vpif_channel_config_params** %7, align 8
  %24 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %25 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %19
  %29 = load i32, i32* @debug, align 4
  %30 = call i32 @vpif_dbg(i32 2, i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %32 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.video_obj*, %struct.video_obj** %4, align 8
  %35 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %6, align 8
  %41 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %42 = call i32 @memcpy(%struct.vpif_channel_config_params* %40, %struct.vpif_channel_config_params* %41, i32 16)
  br label %48

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %19
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %15

48:                                               ; preds = %39, %15
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @vpif_ch_params_count, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* @debug, align 4
  %54 = call i32 @vpif_dbg(i32 1, i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @memcpy(%struct.vpif_channel_config_params*, %struct.vpif_channel_config_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
