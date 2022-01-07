; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_sysfs.c_ramdisk_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_sysfs.c_ramdisk_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cosm_device = type { i8*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ramdisk_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ramdisk_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cosm_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.cosm_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.cosm_device* %12, %struct.cosm_device** %10, align 8
  %13 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %14 = icmp ne %struct.cosm_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %5, align 8
  br label %74

18:                                               ; preds = %4
  %19 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %20 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %23 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @kfree(i8* %24)
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %26, 1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kmalloc(i64 %27, i32 %28)
  %30 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %31 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %33 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %18
  %37 = load i64, i64* @ENOMEM, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %9, align 8
  br label %69

39:                                               ; preds = %18
  %40 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %41 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @strncpy(i8* %42, i8* %43, i64 %44)
  %46 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %47 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %62

55:                                               ; preds = %39
  %56 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %57 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = sub i64 %59, 1
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  br label %68

62:                                               ; preds = %39
  %63 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %64 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %62, %55
  br label %69

69:                                               ; preds = %68, %36
  %70 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %71 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %69, %15
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local %struct.cosm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
