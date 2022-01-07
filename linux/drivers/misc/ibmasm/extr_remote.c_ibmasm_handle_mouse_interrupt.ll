; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_remote.c_ibmasm_handle_mouse_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_remote.c_ibmasm_handle_mouse_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_processor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.remote_input = type { i64 }

@INPUT_TYPE_MOUSE = common dso_local global i64 0, align 8
@INPUT_TYPE_KEYBOARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibmasm_handle_mouse_interrupt(%struct.service_processor* %0) #0 {
  %2 = alloca %struct.service_processor*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.remote_input, align 8
  store %struct.service_processor* %0, %struct.service_processor** %2, align 8
  %6 = load %struct.service_processor*, %struct.service_processor** %2, align 8
  %7 = call i64 @get_queue_reader(%struct.service_processor* %6)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.service_processor*, %struct.service_processor** %2, align 8
  %9 = call i64 @get_queue_writer(%struct.service_processor* %8)
  store i64 %9, i64* %4, align 8
  br label %10

10:                                               ; preds = %43, %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load %struct.service_processor*, %struct.service_processor** %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @get_queue_entry(%struct.service_processor* %15, i64 %16)
  %18 = call i32 @memcpy_fromio(%struct.remote_input* %5, i32 %17, i32 8)
  %19 = call i32 @print_input(%struct.remote_input* %5)
  %20 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @INPUT_TYPE_MOUSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load %struct.service_processor*, %struct.service_processor** %2, align 8
  %26 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @send_mouse_event(i32 %28, %struct.remote_input* %5)
  br label %43

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @INPUT_TYPE_KEYBOARD, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.service_processor*, %struct.service_processor** %2, align 8
  %37 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @send_keyboard_event(i32 %39, %struct.remote_input* %5)
  br label %42

41:                                               ; preds = %30
  br label %49

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.service_processor*, %struct.service_processor** %2, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @advance_queue_reader(%struct.service_processor* %44, i64 %45)
  store i64 %46, i64* %3, align 8
  %47 = load %struct.service_processor*, %struct.service_processor** %2, align 8
  %48 = call i64 @get_queue_writer(%struct.service_processor* %47)
  store i64 %48, i64* %4, align 8
  br label %10

49:                                               ; preds = %41, %10
  ret void
}

declare dso_local i64 @get_queue_reader(%struct.service_processor*) #1

declare dso_local i64 @get_queue_writer(%struct.service_processor*) #1

declare dso_local i32 @memcpy_fromio(%struct.remote_input*, i32, i32) #1

declare dso_local i32 @get_queue_entry(%struct.service_processor*, i64) #1

declare dso_local i32 @print_input(%struct.remote_input*) #1

declare dso_local i32 @send_mouse_event(i32, %struct.remote_input*) #1

declare dso_local i32 @send_keyboard_event(i32, %struct.remote_input*) #1

declare dso_local i64 @advance_queue_reader(%struct.service_processor*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
