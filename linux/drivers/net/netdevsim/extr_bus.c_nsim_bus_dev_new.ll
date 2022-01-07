; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bus.c_nsim_bus_dev_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bus.c_nsim_bus_dev_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsim_bus_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nsim_bus_dev_ids = common dso_local global i32 0, align 4
@nsim_bus = common dso_local global i32 0, align 4
@nsim_bus_dev_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nsim_bus_dev* (i32, i32)* @nsim_bus_dev_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nsim_bus_dev* @nsim_bus_dev_new(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.nsim_bus_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nsim_bus_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nsim_bus_dev* @kzalloc(i32 32, i32 %8)
  store %struct.nsim_bus_dev* %9, %struct.nsim_bus_dev** %6, align 8
  %10 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %6, align 8
  %11 = icmp ne %struct.nsim_bus_dev* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.nsim_bus_dev* @ERR_PTR(i32 %14)
  store %struct.nsim_bus_dev* %15, %struct.nsim_bus_dev** %3, align 8
  br label %57

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @ida_alloc_range(i32* @nsim_bus_dev_ids, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %52

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %6, align 8
  %27 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %6, align 8
  %30 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32* @nsim_bus, i32** %31, align 8
  %32 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %6, align 8
  %33 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32* @nsim_bus_dev_type, i32** %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %6, align 8
  %37 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %6, align 8
  %39 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %38, i32 0, i32 1
  %40 = call i32 @device_register(%struct.TYPE_2__* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  br label %46

44:                                               ; preds = %24
  %45 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %6, align 8
  store %struct.nsim_bus_dev* %45, %struct.nsim_bus_dev** %3, align 8
  br label %57

46:                                               ; preds = %43
  %47 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %6, align 8
  %48 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ida_free(i32* @nsim_bus_dev_ids, i32 %50)
  br label %52

52:                                               ; preds = %46, %23
  %53 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %6, align 8
  %54 = call i32 @kfree(%struct.nsim_bus_dev* %53)
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.nsim_bus_dev* @ERR_PTR(i32 %55)
  store %struct.nsim_bus_dev* %56, %struct.nsim_bus_dev** %3, align 8
  br label %57

57:                                               ; preds = %52, %44, %12
  %58 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %3, align 8
  ret %struct.nsim_bus_dev* %58
}

declare dso_local %struct.nsim_bus_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.nsim_bus_dev* @ERR_PTR(i32) #1

declare dso_local i32 @ida_alloc_range(i32*, i32, i32, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_2__*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

declare dso_local i32 @kfree(%struct.nsim_bus_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
