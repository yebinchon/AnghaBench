; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as10x_pid_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as10x_pid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as102_dev_t = type { %struct.as10x_bus_adapter_t }
%struct.as10x_bus_adapter_t = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.as10x_ts_filter = type { i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"amutex_lock_interruptible(lock) failed !\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"DEL_PID_FILTER([%02d] 0x%04x) ret = %d\0A\00", align 1
@TS_PID_TYPE_TS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"ADD_PID_FILTER([%02d -> %02d], 0x%04x) ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as102_dev_t*, i32, i32, i32)* @as10x_pid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as10x_pid_filter(%struct.as102_dev_t* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.as102_dev_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.as10x_bus_adapter_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.as10x_ts_filter, align 4
  store %struct.as102_dev_t* %0, %struct.as102_dev_t** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.as102_dev_t*, %struct.as102_dev_t** %6, align 8
  %14 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %13, i32 0, i32 0
  store %struct.as10x_bus_adapter_t* %14, %struct.as10x_bus_adapter_t** %10, align 8
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.as102_dev_t*, %struct.as102_dev_t** %6, align 8
  %18 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %18, i32 0, i32 0
  %20 = call i64 @mutex_lock_interruptible(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.as102_dev_t*, %struct.as102_dev_t** %6, align 8
  %24 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %72

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %66 [
    i32 0, label %33
    i32 1, label %46
  ]

33:                                               ; preds = %31
  %34 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @as10x_cmd_del_PID_filter(%struct.as10x_bus_adapter_t* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.as102_dev_t*, %struct.as102_dev_t** %6, align 8
  %38 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  br label %66

46:                                               ; preds = %31
  %47 = load i32, i32* @TS_PID_TYPE_TS, align 4
  %48 = getelementptr inbounds %struct.as10x_ts_filter, %struct.as10x_ts_filter* %12, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.as10x_ts_filter, %struct.as10x_ts_filter* %12, i32 0, i32 0
  store i32 255, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.as10x_ts_filter, %struct.as10x_ts_filter* %12, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %10, align 8
  %53 = call i32 @as10x_cmd_add_PID_filter(%struct.as10x_bus_adapter_t* %52, %struct.as10x_ts_filter* %12)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.as102_dev_t*, %struct.as102_dev_t** %6, align 8
  %55 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %7, align 4
  %60 = getelementptr inbounds %struct.as10x_ts_filter, %struct.as10x_ts_filter* %12, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.as10x_ts_filter, %struct.as10x_ts_filter* %12, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %61, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %31, %46, %33
  %67 = load %struct.as102_dev_t*, %struct.as102_dev_t** %6, align 8
  %68 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %66, %22
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @as10x_cmd_del_PID_filter(%struct.as10x_bus_adapter_t*, i32) #1

declare dso_local i32 @as10x_cmd_add_PID_filter(%struct.as10x_bus_adapter_t*, %struct.as10x_ts_filter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
