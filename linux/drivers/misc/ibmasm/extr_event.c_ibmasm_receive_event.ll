; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_event.c_ibmasm_receive_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_event.c_ibmasm_receive_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_processor = type { i32, %struct.event_buffer* }
%struct.event_buffer = type { i64, i32, %struct.ibmasm_event* }
%struct.ibmasm_event = type { i32, i32, i32 }

@IBMASM_EVENT_MAX_SIZE = common dso_local global i32 0, align 4
@IBMASM_NUM_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibmasm_receive_event(%struct.service_processor* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.service_processor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.event_buffer*, align 8
  %8 = alloca %struct.ibmasm_event*, align 8
  %9 = alloca i64, align 8
  store %struct.service_processor* %0, %struct.service_processor** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %11 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %10, i32 0, i32 1
  %12 = load %struct.event_buffer*, %struct.event_buffer** %11, align 8
  store %struct.event_buffer* %12, %struct.event_buffer** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @IBMASM_EVENT_MAX_SIZE, align 4
  %15 = call i32 @min(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %17 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %16, i32 0, i32 0
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.event_buffer*, %struct.event_buffer** %7, align 8
  %21 = getelementptr inbounds %struct.event_buffer, %struct.event_buffer* %20, i32 0, i32 2
  %22 = load %struct.ibmasm_event*, %struct.ibmasm_event** %21, align 8
  %23 = load %struct.event_buffer*, %struct.event_buffer** %7, align 8
  %24 = getelementptr inbounds %struct.event_buffer, %struct.event_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %22, i64 %25
  store %struct.ibmasm_event* %26, %struct.ibmasm_event** %8, align 8
  %27 = load %struct.ibmasm_event*, %struct.ibmasm_event** %8, align 8
  %28 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @memcpy_fromio(i32 %29, i8* %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ibmasm_event*, %struct.ibmasm_event** %8, align 8
  %35 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.event_buffer*, %struct.event_buffer** %7, align 8
  %37 = getelementptr inbounds %struct.event_buffer, %struct.event_buffer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ibmasm_event*, %struct.ibmasm_event** %8, align 8
  %40 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.event_buffer*, %struct.event_buffer** %7, align 8
  %42 = getelementptr inbounds %struct.event_buffer, %struct.event_buffer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  %45 = load i32, i32* @IBMASM_NUM_EVENTS, align 4
  %46 = sext i32 %45 to i64
  %47 = urem i64 %44, %46
  %48 = load %struct.event_buffer*, %struct.event_buffer** %7, align 8
  %49 = getelementptr inbounds %struct.event_buffer, %struct.event_buffer* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.event_buffer*, %struct.event_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.event_buffer, %struct.event_buffer* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %55 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %54, i32 0, i32 0
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %59 = call i32 @wake_up_event_readers(%struct.service_processor* %58)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy_fromio(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_event_readers(%struct.service_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
