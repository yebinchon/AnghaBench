; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as102_start_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as102_start_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as102_dev_t = type { %struct.as10x_bus_adapter_t }
%struct.as10x_bus_adapter_t = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EFAULT = common dso_local global i32 0, align 4
@ts_auto_disable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as102_dev_t*)* @as102_start_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as102_start_stream(%struct.as102_dev_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.as102_dev_t*, align 8
  %4 = alloca %struct.as10x_bus_adapter_t*, align 8
  %5 = alloca i32, align 4
  store %struct.as102_dev_t* %0, %struct.as102_dev_t** %3, align 8
  %6 = load i32, i32* @EFAULT, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %9 = icmp ne %struct.as102_dev_t* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %12 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %11, i32 0, i32 0
  store %struct.as10x_bus_adapter_t* %12, %struct.as10x_bus_adapter_t** %4, align 8
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %53

15:                                               ; preds = %10
  %16 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %4, align 8
  %17 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.as102_dev_t*)**
  %21 = load i32 (%struct.as102_dev_t*)*, i32 (%struct.as102_dev_t*)** %20, align 8
  %22 = icmp ne i32 (%struct.as102_dev_t*)* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %4, align 8
  %25 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.as102_dev_t*)**
  %29 = load i32 (%struct.as102_dev_t*)*, i32 (%struct.as102_dev_t*)** %28, align 8
  %30 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %31 = call i32 %29(%struct.as102_dev_t* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %23, %15
  %33 = load i64, i64* @ts_auto_disable, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %37 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %37, i32 0, i32 0
  %39 = call i64 @mutex_lock_interruptible(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %53

44:                                               ; preds = %35
  %45 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %4, align 8
  %46 = call i32 @as10x_cmd_start_streaming(%struct.as10x_bus_adapter_t* %45)
  store i32 %46, i32* %5, align 4
  %47 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %48 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %51

51:                                               ; preds = %44, %32
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %41, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @as10x_cmd_start_streaming(%struct.as10x_bus_adapter_t*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
