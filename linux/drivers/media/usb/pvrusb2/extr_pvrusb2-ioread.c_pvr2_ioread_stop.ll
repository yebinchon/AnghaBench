; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ioread = type { i64, i64, i64, i64, i64, i64, i32*, i32*, i32 }

@PVR2_TRACE_START_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"/*---TRACE_READ---*/ pvr2_ioread_stop id=%p\00", align 1
@PVR2_TRACE_DATA_FLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"/*---TRACE_READ---*/ sync_state <== 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_ioread*)* @pvr2_ioread_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_ioread_stop(%struct.pvr2_ioread* %0) #0 {
  %2 = alloca %struct.pvr2_ioread*, align 8
  store %struct.pvr2_ioread* %0, %struct.pvr2_ioread** %2, align 8
  %3 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %4 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %39

8:                                                ; preds = %1
  %9 = load i32, i32* @PVR2_TRACE_START_STOP, align 4
  %10 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %11 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.pvr2_ioread* %10)
  %12 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %13 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pvr2_stream_kill(i32 %14)
  %16 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %17 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %16, i32 0, i32 7
  store i32* null, i32** %17, align 8
  %18 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %19 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %18, i32 0, i32 6
  store i32* null, i32** %19, align 8
  %20 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %21 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %23 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %25 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %27 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %29 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %31 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %8
  %35 = load i32, i32* @PVR2_TRACE_DATA_FLOW, align 4
  %36 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %38 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %7, %34, %8
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @pvr2_stream_kill(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
