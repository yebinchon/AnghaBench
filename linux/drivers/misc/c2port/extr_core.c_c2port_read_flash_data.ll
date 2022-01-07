; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_read_flash_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_read_flash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.c2port_device = type { i32, i32, i32, i32, i32 }

@EBUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"cannot read %s flash\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @c2port_read_flash_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c2port_read_flash_data(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.c2port_device*, align 8
  %15 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load %struct.kobject*, %struct.kobject** %9, align 8
  %17 = call i32 @kobj_to_dev(%struct.kobject* %16)
  %18 = call %struct.c2port_device* @dev_get_drvdata(i32 %17)
  store %struct.c2port_device* %18, %struct.c2port_device** %14, align 8
  %19 = load %struct.c2port_device*, %struct.c2port_device** %14, align 8
  %20 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %6
  %24 = load %struct.c2port_device*, %struct.c2port_device** %14, align 8
  %25 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %6
  %29 = load i64, i64* @EBUSY, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %7, align 8
  br label %55

31:                                               ; preds = %23
  %32 = load %struct.c2port_device*, %struct.c2port_device** %14, align 8
  %33 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.c2port_device*, %struct.c2port_device** %14, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i64, i64* %13, align 8
  %39 = call i64 @__c2port_read_flash_data(%struct.c2port_device* %35, i8* %36, i32 %37, i64 %38)
  store i64 %39, i64* %15, align 8
  %40 = load %struct.c2port_device*, %struct.c2port_device** %14, align 8
  %41 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %40, i32 0, i32 2
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i64, i64* %15, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %31
  %46 = load %struct.c2port_device*, %struct.c2port_device** %14, align 8
  %47 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.c2port_device*, %struct.c2port_device** %14, align 8
  %50 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %45, %31
  %54 = load i64, i64* %15, align 8
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %53, %28
  %56 = load i64, i64* %7, align 8
  ret i64 %56
}

declare dso_local %struct.c2port_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__c2port_read_flash_data(%struct.c2port_device*, i8*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
