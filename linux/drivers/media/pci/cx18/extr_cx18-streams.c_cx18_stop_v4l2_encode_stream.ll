; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_stop_v4l2_encode_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_stop_v4l2_encode_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { i64, i32, i32, i32, %struct.cx18* }
%struct.cx18 = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Stop Capture\0A\00", align 1
@CX18_F_S_STOPPING = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@CX18_CPU_CAPTURE_STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"ignoring gop_end: not (yet?) supported by the firmware\0A\00", align 1
@CX18_ENC_STREAM_TYPE_TS = common dso_local global i64 0, align 8
@CX18_F_S_STREAMING = common dso_local global i32 0, align 4
@CX18_CPU_DE_RELEASE_MDL = common dso_local global i32 0, align 4
@CX18_DESTROY_TASK = common dso_local global i32 0, align 4
@CX18_INVALID_TASK_HANDLE = common dso_local global i32 0, align 4
@CX18_DSP0_INTERRUPT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx18*, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %8 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %7, i32 0, i32 4
  %9 = load %struct.cx18*, %struct.cx18** %8, align 8
  store %struct.cx18* %9, %struct.cx18** %6, align 8
  %10 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %11 = call i32 @cx18_stream_enabled(%struct.cx18_stream* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %114

16:                                               ; preds = %2
  %17 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.cx18*, %struct.cx18** %6, align 8
  %19 = getelementptr inbounds %struct.cx18, %struct.cx18* %18, i32 0, i32 1
  %20 = call i64 @atomic_read(i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %114

23:                                               ; preds = %16
  %24 = load i32, i32* @CX18_F_S_STOPPING, align 4
  %25 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %26 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %25, i32 0, i32 2
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  %28 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %29 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %23
  %34 = load %struct.cx18*, %struct.cx18** %6, align 8
  %35 = load i32, i32* @CX18_CPU_CAPTURE_STOP, align 4
  %36 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %37 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 (%struct.cx18*, i32, i32, i32, ...) @cx18_vapi(%struct.cx18* %34, i32 %35, i32 2, i32 %38, i32 %42)
  br label %51

44:                                               ; preds = %23
  %45 = load %struct.cx18*, %struct.cx18** %6, align 8
  %46 = load i32, i32* @CX18_CPU_CAPTURE_STOP, align 4
  %47 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %48 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.cx18*, i32, i32, i32, ...) @cx18_vapi(%struct.cx18* %45, i32 %46, i32 1, i32 %49)
  br label %51

51:                                               ; preds = %44, %33
  %52 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %53 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @CX18_INFO(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57, %51
  %63 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %64 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CX18_ENC_STREAM_TYPE_TS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.cx18*, %struct.cx18** %6, align 8
  %70 = getelementptr inbounds %struct.cx18, %struct.cx18* %69, i32 0, i32 2
  %71 = call i32 @atomic_dec(i32* %70)
  br label %72

72:                                               ; preds = %68, %62
  %73 = load %struct.cx18*, %struct.cx18** %6, align 8
  %74 = getelementptr inbounds %struct.cx18, %struct.cx18* %73, i32 0, i32 1
  %75 = call i32 @atomic_dec(i32* %74)
  %76 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %77 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %78 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %77, i32 0, i32 2
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  %80 = load %struct.cx18*, %struct.cx18** %6, align 8
  %81 = load i32, i32* @CX18_CPU_DE_RELEASE_MDL, align 4
  %82 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %83 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (%struct.cx18*, i32, i32, i32, ...) @cx18_vapi(%struct.cx18* %80, i32 %81, i32 1, i32 %84)
  %86 = load %struct.cx18*, %struct.cx18** %6, align 8
  %87 = load i32, i32* @CX18_DESTROY_TASK, align 4
  %88 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %89 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (%struct.cx18*, i32, i32, i32, ...) @cx18_vapi(%struct.cx18* %86, i32 %87, i32 1, i32 %90)
  %92 = load i32, i32* @CX18_INVALID_TASK_HANDLE, align 4
  %93 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %94 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @CX18_F_S_STOPPING, align 4
  %96 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %97 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %96, i32 0, i32 2
  %98 = call i32 @clear_bit(i32 %95, i32* %97)
  %99 = load %struct.cx18*, %struct.cx18** %6, align 8
  %100 = getelementptr inbounds %struct.cx18, %struct.cx18* %99, i32 0, i32 1
  %101 = call i64 @atomic_read(i32* %100)
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %72
  store i32 0, i32* %3, align 4
  br label %114

104:                                              ; preds = %72
  %105 = load %struct.cx18*, %struct.cx18** %6, align 8
  %106 = getelementptr inbounds %struct.cx18, %struct.cx18* %105, i32 0, i32 0
  %107 = call i32 @cx2341x_handler_set_busy(i32* %106, i32 0)
  %108 = load %struct.cx18*, %struct.cx18** %6, align 8
  %109 = load i32, i32* @CX18_DSP0_INTERRUPT_MASK, align 4
  %110 = call i32 @cx18_write_reg(%struct.cx18* %108, i32 5, i32 %109)
  %111 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %112 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %111, i32 0, i32 1
  %113 = call i32 @wake_up(i32* %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %104, %103, %22, %13
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @cx18_stream_enabled(%struct.cx18_stream*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cx18_vapi(%struct.cx18*, i32, i32, i32, ...) #1

declare dso_local i32 @CX18_INFO(i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cx2341x_handler_set_busy(i32*, i32) #1

declare dso_local i32 @cx18_write_reg(%struct.cx18*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
