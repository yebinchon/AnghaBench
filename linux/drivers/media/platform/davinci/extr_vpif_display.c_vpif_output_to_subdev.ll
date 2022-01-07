; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_output_to_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_output_to_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpif_display_config = type { i32, %struct.vpif_subdev_info* }
%struct.vpif_subdev_info = type { i32 }
%struct.vpif_display_chan_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"vpif_output_to_subdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpif_display_config*, %struct.vpif_display_chan_config*, i32)* @vpif_output_to_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_output_to_subdev(%struct.vpif_display_config* %0, %struct.vpif_display_chan_config* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpif_display_config*, align 8
  %6 = alloca %struct.vpif_display_chan_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpif_subdev_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.vpif_display_config* %0, %struct.vpif_display_config** %5, align 8
  store %struct.vpif_display_chan_config* %1, %struct.vpif_display_chan_config** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @debug, align 4
  %12 = call i32 @vpif_dbg(i32 2, i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %6, align 8
  %14 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %6, align 8
  %20 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %57

30:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.vpif_display_config*, %struct.vpif_display_config** %5, align 8
  %34 = getelementptr inbounds %struct.vpif_display_config, %struct.vpif_display_config* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load %struct.vpif_display_config*, %struct.vpif_display_config** %5, align 8
  %39 = getelementptr inbounds %struct.vpif_display_config, %struct.vpif_display_config* %38, i32 0, i32 1
  %40 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.vpif_subdev_info, %struct.vpif_subdev_info* %40, i64 %42
  store %struct.vpif_subdev_info* %43, %struct.vpif_subdev_info** %8, align 8
  %44 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %8, align 8
  %45 = getelementptr inbounds %struct.vpif_subdev_info, %struct.vpif_subdev_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strcmp(i32 %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %57

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %31

56:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %50, %29, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
