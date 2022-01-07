; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ioread = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i32 }
%struct.pvr2_buffer = type { i32 }

@PVR2_TRACE_START_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"/*---TRACE_READ---*/ pvr2_ioread_start id=%p\00", align 1
@PVR2_TRACE_DATA_FLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"/*---TRACE_READ---*/ pvr2_ioread_start id=%p error=%d\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"/*---TRACE_READ---*/ sync_state <== 1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ioread*)* @pvr2_ioread_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_ioread_start(%struct.pvr2_ioread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_ioread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_buffer*, align 8
  store %struct.pvr2_ioread* %0, %struct.pvr2_ioread** %3, align 8
  %6 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %7 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

11:                                               ; preds = %1
  %12 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %13 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %70

17:                                               ; preds = %11
  %18 = load i32, i32* @PVR2_TRACE_START_STOP, align 4
  %19 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %20 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.pvr2_ioread* %19)
  br label %21

21:                                               ; preds = %40, %17
  %22 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %23 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.pvr2_buffer* @pvr2_stream_get_idle_buffer(i32 %24)
  store %struct.pvr2_buffer* %25, %struct.pvr2_buffer** %5, align 8
  %26 = icmp ne %struct.pvr2_buffer* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %29 = call i32 @pvr2_buffer_queue(%struct.pvr2_buffer* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32, i32* @PVR2_TRACE_DATA_FLOW, align 4
  %34 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %33, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), %struct.pvr2_ioread* %34, i32 %35)
  %37 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %38 = call i32 @pvr2_ioread_stop(%struct.pvr2_ioread* %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %70

40:                                               ; preds = %27
  br label %21

41:                                               ; preds = %21
  %42 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %43 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %45 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %44, i32 0, i32 10
  store i32* null, i32** %45, align 8
  %46 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %47 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %46, i32 0, i32 9
  store i32* null, i32** %47, align 8
  %48 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %49 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %48, i32 0, i32 8
  store i64 0, i64* %49, align 8
  %50 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %51 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %50, i32 0, i32 7
  store i64 0, i64* %51, align 8
  %52 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %53 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %55 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %41
  %59 = load i32, i32* @PVR2_TRACE_DATA_FLOW, align 4
  %60 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %62 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %64 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %66 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %58, %41
  %68 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %69 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %32, %16, %10
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local %struct.pvr2_buffer* @pvr2_stream_get_idle_buffer(i32) #1

declare dso_local i32 @pvr2_buffer_queue(%struct.pvr2_buffer*) #1

declare dso_local i32 @pvr2_ioread_stop(%struct.pvr2_ioread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
