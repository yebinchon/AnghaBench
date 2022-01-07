; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cldev_register_rx_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cldev_register_rx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { i32, i32, i64, %struct.mei_device* }
%struct.mei_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@mei_cl_bus_rx_work = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cldev_register_rx_cb(%struct.mei_cl_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_cl_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mei_device*, align 8
  %7 = alloca i32, align 4
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %9 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %8, i32 0, i32 3
  %10 = load %struct.mei_device*, %struct.mei_device** %9, align 8
  store %struct.mei_device* %10, %struct.mei_device** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %18 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EALREADY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %16
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %27 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %29 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %28, i32 0, i32 1
  %30 = load i32, i32* @mei_cl_bus_rx_work, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  %32 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %33 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %36 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %39 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mei_cl_mtu(i32 %40)
  %42 = call i32 @mei_cl_read_start(i32 %37, i32 %41, i32* null)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %44 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %24
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %48, %24
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %53, %21, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_cl_read_start(i32, i32, i32*) #1

declare dso_local i32 @mei_cl_mtu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
