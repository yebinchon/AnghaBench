; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_buffer = type { i32, i32*, i64 }

@PVR2_TRACE_BUF_POOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"/*---TRACE_FLOW---*/ bufferDone     %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_buffer*)* @pvr2_buffer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_buffer_done(%struct.pvr2_buffer* %0) #0 {
  %2 = alloca %struct.pvr2_buffer*, align 8
  store %struct.pvr2_buffer* %0, %struct.pvr2_buffer** %2, align 8
  %3 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %4 = call i32 @pvr2_buffer_wipe(%struct.pvr2_buffer* %3)
  %5 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %6 = call i32 @pvr2_buffer_set_none(%struct.pvr2_buffer* %5)
  %7 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @usb_free_urb(i32 %13)
  %15 = load i32, i32* @PVR2_TRACE_BUF_POOL, align 4
  %16 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %17 = call i32 @pvr2_trace(i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.pvr2_buffer* %16)
  ret void
}

declare dso_local i32 @pvr2_buffer_wipe(%struct.pvr2_buffer*) #1

declare dso_local i32 @pvr2_buffer_set_none(%struct.pvr2_buffer*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
