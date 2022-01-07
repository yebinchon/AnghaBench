; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_buffer_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_buffer_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.channel_obj = type { %struct.common_obj* }
%struct.common_obj = type { i32, i32 }
%struct.vpif_cap_buffer = type { i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"vpif_buffer_queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @vpif_buffer_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpif_buffer_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.channel_obj*, align 8
  %5 = alloca %struct.vpif_cap_buffer*, align 8
  %6 = alloca %struct.common_obj*, align 8
  %7 = alloca i64, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %9 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %8)
  store %struct.vb2_v4l2_buffer* %9, %struct.vb2_v4l2_buffer** %3, align 8
  %10 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.channel_obj* @vb2_get_drv_priv(i32 %12)
  store %struct.channel_obj* %13, %struct.channel_obj** %4, align 8
  %14 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %15 = call %struct.vpif_cap_buffer* @to_vpif_buffer(%struct.vb2_v4l2_buffer* %14)
  store %struct.vpif_cap_buffer* %15, %struct.vpif_cap_buffer** %5, align 8
  %16 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %17 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %16, i32 0, i32 0
  %18 = load %struct.common_obj*, %struct.common_obj** %17, align 8
  %19 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %20 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %18, i64 %19
  store %struct.common_obj* %20, %struct.common_obj** %6, align 8
  %21 = load i32, i32* @debug, align 4
  %22 = call i32 @vpif_dbg(i32 2, i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %24 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %23, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.vpif_cap_buffer*, %struct.vpif_cap_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.vpif_cap_buffer, %struct.vpif_cap_buffer* %27, i32 0, i32 0
  %29 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %30 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %29, i32 0, i32 1
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  %32 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %33 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %32, i32 0, i32 0
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.channel_obj* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.vpif_cap_buffer* @to_vpif_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
