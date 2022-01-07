; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_buffer = type { i32, i32, i32, i32, %struct.pvr2_stream*, i32 }
%struct.pvr2_stream = type { i32 }

@BUFFER_SIG = common dso_local global i32 0, align 4
@PVR2_TRACE_BUF_POOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"/*---TRACE_FLOW---*/ bufferInit     %p stream=%p\00", align 1
@pvr2_buffer_state_none = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_buffer*, %struct.pvr2_stream*, i32)* @pvr2_buffer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_buffer_init(%struct.pvr2_buffer* %0, %struct.pvr2_stream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_buffer*, align 8
  %6 = alloca %struct.pvr2_stream*, align 8
  %7 = alloca i32, align 4
  store %struct.pvr2_buffer* %0, %struct.pvr2_buffer** %5, align 8
  store %struct.pvr2_stream* %1, %struct.pvr2_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %9 = call i32 @memset(%struct.pvr2_buffer* %8, i32 0, i32 32)
  %10 = load i32, i32* @BUFFER_SIG, align 4
  %11 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @PVR2_TRACE_BUF_POOL, align 4
  %17 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %18 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %19 = call i32 @pvr2_trace(i32 %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.pvr2_buffer* %17, %struct.pvr2_stream* %18)
  %20 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %21 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %22 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %21, i32 0, i32 4
  store %struct.pvr2_stream* %20, %struct.pvr2_stream** %22, align 8
  %23 = load i32, i32* @pvr2_buffer_state_none, align 4
  %24 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %26, i32 0, i32 2
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @usb_alloc_urb(i32 0, i32 %29)
  %31 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %34 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.pvr2_buffer*, i32, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_buffer*, %struct.pvr2_stream*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
