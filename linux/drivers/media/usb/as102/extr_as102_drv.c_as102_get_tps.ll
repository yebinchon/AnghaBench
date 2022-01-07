; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as102_get_tps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as102_get_tps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as10x_tps = type { i32 }
%struct.as10x_bus_adapter_t = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.as10x_tps*)* @as102_get_tps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as102_get_tps(i8* %0, %struct.as10x_tps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.as10x_tps*, align 8
  %6 = alloca %struct.as10x_bus_adapter_t*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.as10x_tps* %1, %struct.as10x_tps** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.as10x_bus_adapter_t*
  store %struct.as10x_bus_adapter_t* %9, %struct.as10x_bus_adapter_t** %6, align 8
  %10 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %6, align 8
  %11 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %10, i32 0, i32 0
  %12 = call i64 @mutex_lock_interruptible(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %6, align 8
  %19 = load %struct.as10x_tps*, %struct.as10x_tps** %5, align 8
  %20 = call i32 @as10x_cmd_get_tps(%struct.as10x_bus_adapter_t* %18, %struct.as10x_tps* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %6, align 8
  %22 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @as10x_cmd_get_tps(%struct.as10x_bus_adapter_t*, %struct.as10x_tps*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
