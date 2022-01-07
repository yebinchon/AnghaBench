; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_buffer = type { i32, i32, i32, i32, %struct.pvr2_stream* }
%struct.pvr2_stream = type { i32, i32, i32, i32, i32, i32 }

@PVR2_TRACE_BUF_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"/*---TRACE_FLOW---*/ bufferPool\09%8s dec cap=%07d cnt=%02d\00", align 1
@pvr2_buffer_state_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_buffer*)* @pvr2_buffer_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_buffer_remove(%struct.pvr2_buffer* %0) #0 {
  %2 = alloca %struct.pvr2_buffer*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvr2_stream*, align 8
  store %struct.pvr2_buffer* %0, %struct.pvr2_buffer** %2, align 8
  %7 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %7, i32 0, i32 4
  %9 = load %struct.pvr2_stream*, %struct.pvr2_stream** %8, align 8
  store %struct.pvr2_stream* %9, %struct.pvr2_stream** %6, align 8
  %10 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %37 [
    i32 130, label %13
    i32 129, label %21
    i32 128, label %29
  ]

13:                                               ; preds = %1
  %14 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %15 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %14, i32 0, i32 0
  store i32* %15, i32** %3, align 8
  %16 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %17 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %16, i32 0, i32 1
  store i32* %17, i32** %4, align 8
  %18 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  br label %38

21:                                               ; preds = %1
  %22 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %23 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %22, i32 0, i32 2
  store i32* %23, i32** %3, align 8
  %24 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %25 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %24, i32 0, i32 3
  store i32* %25, i32** %4, align 8
  %26 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %27 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %31 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %30, i32 0, i32 4
  store i32* %31, i32** %3, align 8
  %32 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %33 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %32, i32 0, i32 5
  store i32* %33, i32** %4, align 8
  %34 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %35 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %1
  br label %62

38:                                               ; preds = %29, %21, %13
  %39 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %40 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %39, i32 0, i32 3
  %41 = call i32 @list_del_init(i32* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sub i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @PVR2_TRACE_BUF_FLOW, align 4
  %50 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %51 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pvr2_buffer_state_decode(i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pvr2_trace(i32 %49, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55, i32 %57)
  %59 = load i32, i32* @pvr2_buffer_state_none, align 4
  %60 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %61 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pvr2_buffer_state_decode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
