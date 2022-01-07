; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_bus_rx_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_bus_rx_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { %struct.mei_cl_device* }
%struct.mei_cl_device = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cl_bus_rx_event(%struct.mei_cl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_cl*, align 8
  %4 = alloca %struct.mei_cl_device*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %3, align 8
  %5 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %6 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %5, i32 0, i32 0
  %7 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  store %struct.mei_cl_device* %7, %struct.mei_cl_device** %4, align 8
  %8 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %9 = icmp ne %struct.mei_cl_device* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %12 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %20

16:                                               ; preds = %10
  %17 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %18 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %17, i32 0, i32 0
  %19 = call i32 @schedule_work(i32* %18)
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %15
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
