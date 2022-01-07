; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_device_init_cdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_device_init_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.class = type { i32 }
%struct.file_operations = type { i32 }
%struct.cdev = type { i32 }
%struct.device = type { i32, %struct.class*, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@device_release_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.class*, i32, %struct.file_operations*, i8*, %struct.cdev*, %struct.device**)* @device_init_cdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_init_cdev(%struct.hl_device* %0, %struct.class* %1, i32 %2, %struct.file_operations* %3, i8* %4, %struct.cdev* %5, %struct.device** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hl_device*, align 8
  %10 = alloca %struct.class*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.file_operations*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.cdev*, align 8
  %15 = alloca %struct.device**, align 8
  store %struct.hl_device* %0, %struct.hl_device** %9, align 8
  store %struct.class* %1, %struct.class** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.file_operations* %3, %struct.file_operations** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.cdev* %5, %struct.cdev** %14, align 8
  store %struct.device** %6, %struct.device*** %15, align 8
  %16 = load %struct.cdev*, %struct.cdev** %14, align 8
  %17 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %18 = call i32 @cdev_init(%struct.cdev* %16, %struct.file_operations* %17)
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = load %struct.cdev*, %struct.cdev** %14, align 8
  %21 = getelementptr inbounds %struct.cdev, %struct.cdev* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.device* @kzalloc(i32 24, i32 %22)
  %24 = load %struct.device**, %struct.device*** %15, align 8
  store %struct.device* %23, %struct.device** %24, align 8
  %25 = load %struct.device**, %struct.device*** %15, align 8
  %26 = load %struct.device*, %struct.device** %25, align 8
  %27 = icmp ne %struct.device* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %7
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %59

31:                                               ; preds = %7
  %32 = load %struct.device**, %struct.device*** %15, align 8
  %33 = load %struct.device*, %struct.device** %32, align 8
  %34 = call i32 @device_initialize(%struct.device* %33)
  %35 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  %36 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @MKDEV(i32 %37, i32 %38)
  %40 = load %struct.device**, %struct.device*** %15, align 8
  %41 = load %struct.device*, %struct.device** %40, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.class*, %struct.class** %10, align 8
  %44 = load %struct.device**, %struct.device*** %15, align 8
  %45 = load %struct.device*, %struct.device** %44, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 1
  store %struct.class* %43, %struct.class** %46, align 8
  %47 = load i32, i32* @device_release_func, align 4
  %48 = load %struct.device**, %struct.device*** %15, align 8
  %49 = load %struct.device*, %struct.device** %48, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.device**, %struct.device*** %15, align 8
  %52 = load %struct.device*, %struct.device** %51, align 8
  %53 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  %54 = call i32 @dev_set_drvdata(%struct.device* %52, %struct.hl_device* %53)
  %55 = load %struct.device**, %struct.device*** %15, align 8
  %56 = load %struct.device*, %struct.device** %55, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @dev_set_name(%struct.device* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %57)
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %31, %28
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @cdev_init(%struct.cdev*, %struct.file_operations*) #1

declare dso_local %struct.device* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.hl_device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
