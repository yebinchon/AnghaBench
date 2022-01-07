; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_device_cdev_sysfs_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_device_cdev_sysfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"failed to add a char device to the system\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"failed to add a control char device to the system\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to initialize sysfs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*)* @device_cdev_sysfs_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_cdev_sysfs_add(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %5 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %6 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %5, i32 0, i32 2
  %7 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %8 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @cdev_device_add(i32* %6, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %15 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %21 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %20, i32 0, i32 4
  %22 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %23 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cdev_device_add(i32* %21, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %30 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %53

33:                                               ; preds = %19
  %34 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %35 = call i32 @hl_sysfs_init(%struct.hl_device* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %40 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %46

43:                                               ; preds = %33
  %44 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %45 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %61

46:                                               ; preds = %38
  %47 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %48 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %47, i32 0, i32 4
  %49 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %50 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cdev_device_del(i32* %48, i32 %51)
  br label %53

53:                                               ; preds = %46, %28
  %54 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %55 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %54, i32 0, i32 2
  %56 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %57 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cdev_device_del(i32* %55, i32 %58)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %53, %43, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @cdev_device_add(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hl_sysfs_init(%struct.hl_device*) #1

declare dso_local i32 @cdev_device_del(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
