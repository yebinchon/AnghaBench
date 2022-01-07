; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_set_queued.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_set_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_buffer = type { i32, i64, i32, %struct.pvr2_stream* }
%struct.pvr2_stream = type { i32, %struct.pvr2_buffer*, %struct.pvr2_buffer*, i32 }

@PVR2_TRACE_BUF_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"/*---TRACE_FLOW---*/ bufferState    %p %6s --> %6s\00", align 1
@pvr2_buffer_state_queued = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"/*---TRACE_FLOW---*/ bufferPool\09%8s inc cap=%07d cnt=%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_buffer*)* @pvr2_buffer_set_queued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_buffer_set_queued(%struct.pvr2_buffer* %0) #0 {
  %2 = alloca %struct.pvr2_buffer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pvr2_stream*, align 8
  store %struct.pvr2_buffer* %0, %struct.pvr2_buffer** %2, align 8
  %5 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %6 = call i32 @BUFFER_CHECK(%struct.pvr2_buffer* %5)
  %7 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %7, i32 0, i32 3
  %9 = load %struct.pvr2_stream*, %struct.pvr2_stream** %8, align 8
  store %struct.pvr2_stream* %9, %struct.pvr2_stream** %4, align 8
  %10 = load i32, i32* @PVR2_TRACE_BUF_FLOW, align 4
  %11 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %12 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %13 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.pvr2_buffer* @pvr2_buffer_state_decode(i32 %14)
  %16 = load i32, i32* @pvr2_buffer_state_queued, align 4
  %17 = call %struct.pvr2_buffer* @pvr2_buffer_state_decode(i32 %16)
  %18 = call i32 @pvr2_trace(i32 %10, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.pvr2_buffer* %11, %struct.pvr2_buffer* %15, %struct.pvr2_buffer* %17)
  %19 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %20 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %19, i32 0, i32 0
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %24 = call i32 @pvr2_buffer_remove(%struct.pvr2_buffer* %23)
  %25 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %26 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %25, i32 0, i32 2
  %27 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %28 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %27, i32 0, i32 3
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  %30 = load i32, i32* @pvr2_buffer_state_queued, align 4
  %31 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %32 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %34 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %33, i32 0, i32 1
  %35 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %34, align 8
  %36 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %35, i32 1
  store %struct.pvr2_buffer* %36, %struct.pvr2_buffer** %34, align 8
  %37 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %38 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %41 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %40, i32 0, i32 2
  %42 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %41, align 8
  %43 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %42, i64 %39
  store %struct.pvr2_buffer* %43, %struct.pvr2_buffer** %41, align 8
  %44 = load i32, i32* @PVR2_TRACE_BUF_FLOW, align 4
  %45 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %46 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.pvr2_buffer* @pvr2_buffer_state_decode(i32 %47)
  %49 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %50 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %49, i32 0, i32 2
  %51 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %50, align 8
  %52 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %53 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %52, i32 0, i32 1
  %54 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %53, align 8
  %55 = call i32 @pvr2_trace(i32 %44, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), %struct.pvr2_buffer* %48, %struct.pvr2_buffer* %51, %struct.pvr2_buffer* %54)
  %56 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %57 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %56, i32 0, i32 0
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret void
}

declare dso_local i32 @BUFFER_CHECK(%struct.pvr2_buffer*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_buffer*, %struct.pvr2_buffer*, %struct.pvr2_buffer*) #1

declare dso_local %struct.pvr2_buffer* @pvr2_buffer_state_decode(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pvr2_buffer_remove(%struct.pvr2_buffer*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
