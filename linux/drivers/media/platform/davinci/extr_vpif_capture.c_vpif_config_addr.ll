; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_config_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_config_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_obj = type { i64, %struct.common_obj* }
%struct.common_obj = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vpif_config_addr\0A\00", align 1
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@VPIF_CHANNEL1_VIDEO = common dso_local global i64 0, align 8
@ch1_set_videobuf_addr = common dso_local global i32 0, align 4
@ch0_set_videobuf_addr_yc_nmux = common dso_local global i32 0, align 4
@ch0_set_videobuf_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel_obj*, i32)* @vpif_config_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpif_config_addr(%struct.channel_obj* %0, i32 %1) #0 {
  %3 = alloca %struct.channel_obj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.common_obj*, align 8
  store %struct.channel_obj* %0, %struct.channel_obj** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @debug, align 4
  %7 = call i32 @vpif_dbg(i32 2, i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %9 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %8, i32 0, i32 1
  %10 = load %struct.common_obj*, %struct.common_obj** %9, align 8
  %11 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %12 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %10, i64 %11
  store %struct.common_obj* %12, %struct.common_obj** %5, align 8
  %13 = load i64, i64* @VPIF_CHANNEL1_VIDEO, align 8
  %14 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %15 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @ch1_set_videobuf_addr, align 4
  %20 = load %struct.common_obj*, %struct.common_obj** %5, align 8
  %21 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %34

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 2, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @ch0_set_videobuf_addr_yc_nmux, align 4
  %27 = load %struct.common_obj*, %struct.common_obj** %5, align 8
  %28 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @ch0_set_videobuf_addr, align 4
  %31 = load %struct.common_obj*, %struct.common_obj** %5, align 8
  %32 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %18
  ret void
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
