; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bus.c_new_device_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bus.c_new_device_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }
%struct.nsim_bus_dev = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%u %u\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Value of \22id\22 is too big.\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"Format for adding new device is \22id port_count\22 (uint uint).\0A\00", align 1
@nsim_bus_dev_list_lock = common dso_local global i32 0, align 4
@nsim_bus_dev_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bus_type*, i8*, i64)* @new_device_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @new_device_store(%struct.bus_type* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bus_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nsim_bus_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bus_type* %0, %struct.bus_type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @sscanf(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %9)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  switch i32 %14, label %25 [
    i32 1, label %15
    i32 2, label %16
  ]

15:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %16

16:                                               ; preds = %3, %15
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @INT_MAX, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %46

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %3
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %4, align 8
  br label %46

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.nsim_bus_dev* @nsim_bus_dev_new(i32 %30, i32 %31)
  store %struct.nsim_bus_dev* %32, %struct.nsim_bus_dev** %8, align 8
  %33 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %8, align 8
  %34 = call i64 @IS_ERR(%struct.nsim_bus_dev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %8, align 8
  %38 = call i64 @PTR_ERR(%struct.nsim_bus_dev* %37)
  store i64 %38, i64* %4, align 8
  br label %46

39:                                               ; preds = %29
  %40 = call i32 @mutex_lock(i32* @nsim_bus_dev_list_lock)
  %41 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %8, align 8
  %42 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %41, i32 0, i32 0
  %43 = call i32 @list_add_tail(i32* %42, i32* @nsim_bus_dev_list)
  %44 = call i32 @mutex_unlock(i32* @nsim_bus_dev_list_lock)
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %39, %36, %25, %20
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.nsim_bus_dev* @nsim_bus_dev_new(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nsim_bus_dev*) #1

declare dso_local i64 @PTR_ERR(%struct.nsim_bus_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
