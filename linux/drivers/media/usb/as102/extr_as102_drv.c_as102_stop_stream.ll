; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as102_stop_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as102_stop_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as102_dev_t = type { %struct.as10x_bus_adapter_t }
%struct.as10x_bus_adapter_t = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.as102_dev_t*)* }

@ts_auto_disable = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"as10x_cmd_stop_streaming failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.as102_dev_t*)* @as102_stop_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as102_stop_stream(%struct.as102_dev_t* %0) #0 {
  %2 = alloca %struct.as102_dev_t*, align 8
  %3 = alloca %struct.as10x_bus_adapter_t*, align 8
  store %struct.as102_dev_t* %0, %struct.as102_dev_t** %2, align 8
  %4 = load %struct.as102_dev_t*, %struct.as102_dev_t** %2, align 8
  %5 = icmp ne %struct.as102_dev_t* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.as102_dev_t*, %struct.as102_dev_t** %2, align 8
  %8 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %7, i32 0, i32 0
  store %struct.as10x_bus_adapter_t* %8, %struct.as10x_bus_adapter_t** %3, align 8
  br label %10

9:                                                ; preds = %1
  br label %51

10:                                               ; preds = %6
  %11 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %3, align 8
  %12 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.as102_dev_t*)*, i32 (%struct.as102_dev_t*)** %14, align 8
  %16 = icmp ne i32 (%struct.as102_dev_t*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %3, align 8
  %19 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.as102_dev_t*)*, i32 (%struct.as102_dev_t*)** %21, align 8
  %23 = load %struct.as102_dev_t*, %struct.as102_dev_t** %2, align 8
  %24 = call i32 %22(%struct.as102_dev_t* %23)
  br label %25

25:                                               ; preds = %17, %10
  %26 = load i64, i64* @ts_auto_disable, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load %struct.as102_dev_t*, %struct.as102_dev_t** %2, align 8
  %30 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %30, i32 0, i32 0
  %32 = call i64 @mutex_lock_interruptible(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %51

35:                                               ; preds = %28
  %36 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %3, align 8
  %37 = call i64 @as10x_cmd_stop_streaming(%struct.as10x_bus_adapter_t* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.as102_dev_t*, %struct.as102_dev_t** %2, align 8
  %41 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @dev_dbg(i32* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %39, %35
  %47 = load %struct.as102_dev_t*, %struct.as102_dev_t** %2, align 8
  %48 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %51

51:                                               ; preds = %9, %34, %46, %25
  ret void
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @as10x_cmd_stop_streaming(%struct.as10x_bus_adapter_t*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
