; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_stream_achieve_buffer_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_stream_achieve_buffer_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_stream = type { i32, i32, %struct.pvr2_buffer** }
%struct.pvr2_buffer = type { i64 }

@PVR2_TRACE_BUF_POOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"/*---TRACE_FLOW---*/ poolCheck\09stream=%p cur=%d tgt=%d\00", align 1
@pvr2_buffer_state_idle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_stream*)* @pvr2_stream_achieve_buffer_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_stream_achieve_buffer_count(%struct.pvr2_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_stream*, align 8
  %4 = alloca %struct.pvr2_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.pvr2_stream* %0, %struct.pvr2_stream** %3, align 8
  %6 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %7 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %10 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

14:                                               ; preds = %1
  %15 = load i32, i32* @PVR2_TRACE_BUF_POOL, align 4
  %16 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %17 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %18 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %21 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pvr2_trace(i32 %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.pvr2_stream* %16, i32 %19, i32 %22)
  %24 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %25 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %28 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %14
  %32 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %33 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %34 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pvr2_stream_buffer_count(%struct.pvr2_stream* %32, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %82

37:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %67, %37
  %39 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %40 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sub i32 %41, %42
  %44 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %45 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ugt i32 %43, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %38
  %49 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %50 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %49, i32 0, i32 2
  %51 = load %struct.pvr2_buffer**, %struct.pvr2_buffer*** %50, align 8
  %52 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %53 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  %57 = sub i32 %54, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.pvr2_buffer*, %struct.pvr2_buffer** %51, i64 %58
  %60 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %59, align 8
  store %struct.pvr2_buffer* %60, %struct.pvr2_buffer** %4, align 8
  %61 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %4, align 8
  %62 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @pvr2_buffer_state_idle, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %48
  br label %70

67:                                               ; preds = %48
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %38

70:                                               ; preds = %66, %38
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %75 = load %struct.pvr2_stream*, %struct.pvr2_stream** %3, align 8
  %76 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sub i32 %77, %78
  %80 = call i32 @pvr2_stream_buffer_count(%struct.pvr2_stream* %74, i32 %79)
  br label %81

81:                                               ; preds = %73, %70
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %31, %13
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_stream*, i32, i32) #1

declare dso_local i32 @pvr2_stream_buffer_count(%struct.pvr2_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
