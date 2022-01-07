; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_bus_dev_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_bus_dev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { i32, i64, %struct.mei_cl*, i32, i32, %struct.TYPE_2__ }
%struct.mei_cl = type { i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32 }
%struct.mei_device = type { i32 }
%struct.mei_me_client = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mei_cl_bus_type = common dso_local global i32 0, align 4
@mei_cl_device_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mei_cl_device* (%struct.mei_device*, %struct.mei_me_client*)* @mei_cl_bus_dev_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mei_cl_device* @mei_cl_bus_dev_alloc(%struct.mei_device* %0, %struct.mei_me_client* %1) #0 {
  %3 = alloca %struct.mei_cl_device*, align 8
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.mei_me_client*, align 8
  %6 = alloca %struct.mei_cl_device*, align 8
  %7 = alloca %struct.mei_cl*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store %struct.mei_me_client* %1, %struct.mei_me_client** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mei_cl_device* @kzalloc(i32 56, i32 %8)
  store %struct.mei_cl_device* %9, %struct.mei_cl_device** %6, align 8
  %10 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %11 = icmp ne %struct.mei_cl_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.mei_cl_device* null, %struct.mei_cl_device** %3, align 8
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %15 = call %struct.mei_cl* @mei_cl_allocate(%struct.mei_device* %14)
  store %struct.mei_cl* %15, %struct.mei_cl** %7, align 8
  %16 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %17 = icmp ne %struct.mei_cl* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %20 = call i32 @kfree(%struct.mei_cl_device* %19)
  store %struct.mei_cl_device* null, %struct.mei_cl_device** %3, align 8
  br label %56

21:                                               ; preds = %13
  %22 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %23 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %22, i32 0, i32 5
  %24 = call i32 @device_initialize(%struct.TYPE_2__* %23)
  %25 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %26 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %29 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %32 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32* @mei_cl_bus_type, i32** %33, align 8
  %34 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %35 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32* @mei_cl_device_type, i32** %36, align 8
  %37 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %38 = call i32 @mei_dev_bus_get(%struct.mei_device* %37)
  %39 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %40 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mei_me_client*, %struct.mei_me_client** %5, align 8
  %42 = call i32 @mei_me_cl_get(%struct.mei_me_client* %41)
  %43 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %44 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %46 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %47 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %46, i32 0, i32 2
  store %struct.mei_cl* %45, %struct.mei_cl** %47, align 8
  %48 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %49 = call i32 @mei_cl_bus_set_name(%struct.mei_cl_device* %48)
  %50 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %51 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %53 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %52, i32 0, i32 0
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  store %struct.mei_cl_device* %55, %struct.mei_cl_device** %3, align 8
  br label %56

56:                                               ; preds = %21, %18, %12
  %57 = load %struct.mei_cl_device*, %struct.mei_cl_device** %3, align 8
  ret %struct.mei_cl_device* %57
}

declare dso_local %struct.mei_cl_device* @kzalloc(i32, i32) #1

declare dso_local %struct.mei_cl* @mei_cl_allocate(%struct.mei_device*) #1

declare dso_local i32 @kfree(%struct.mei_cl_device*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

declare dso_local i32 @mei_dev_bus_get(%struct.mei_device*) #1

declare dso_local i32 @mei_me_cl_get(%struct.mei_me_client*) #1

declare dso_local i32 @mei_cl_bus_set_name(%struct.mei_cl_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
