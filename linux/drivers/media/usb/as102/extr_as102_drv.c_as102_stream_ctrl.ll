; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as102_stream_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as102_stream_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as10x_bus_adapter_t = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@elna_enable = common dso_local global i64 0, align 8
@CONTEXT_LNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @as102_stream_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as102_stream_ctrl(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.as10x_bus_adapter_t*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.as10x_bus_adapter_t*
  store %struct.as10x_bus_adapter_t* %11, %struct.as10x_bus_adapter_t** %8, align 8
  %12 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %8, align 8
  %13 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %12, i32 0, i32 0
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i64, i64* @elna_enable, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %8, align 8
  %27 = load i32, i32* @CONTEXT_LNA, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @as10x_cmd_set_context(%struct.as10x_bus_adapter_t* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %22
  %31 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %8, align 8
  %32 = call i32 @as10x_cmd_turn_on(%struct.as10x_bus_adapter_t* %31)
  store i32 %32, i32* %9, align 4
  br label %36

33:                                               ; preds = %19
  %34 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %8, align 8
  %35 = call i32 @as10x_cmd_turn_off(%struct.as10x_bus_adapter_t* %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %8, align 8
  %38 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @as10x_cmd_set_context(%struct.as10x_bus_adapter_t*, i32, i32) #1

declare dso_local i32 @as10x_cmd_turn_on(%struct.as10x_bus_adapter_t*) #1

declare dso_local i32 @as10x_cmd_turn_off(%struct.as10x_bus_adapter_t*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
