; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_bus_dev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_bus_dev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_cl_device*)* @mei_cl_bus_dev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_cl_bus_dev_destroy(%struct.mei_cl_device* %0) #0 {
  %2 = alloca %struct.mei_cl_device*, align 8
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %2, align 8
  %3 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %4 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %3, i32 0, i32 3
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @mutex_is_locked(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %13 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %19 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %18, i32 0, i32 0
  %20 = call i32 @device_del(i32* %19)
  %21 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %22 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %21, i32 0, i32 2
  %23 = call i32 @list_del_init(i32* %22)
  %24 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %25 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %27 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %26, i32 0, i32 0
  %28 = call i32 @put_device(i32* %27)
  br label %29

29:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
