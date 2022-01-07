; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_sysfs_read_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_sysfs_read_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.device = type { i32 }
%struct.netxen_adapter = type { i64 (%struct.netxen_adapter*, i32, i32*)* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @netxen_sysfs_read_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_sysfs_read_mem(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.netxen_adapter*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %18 = load %struct.kobject*, %struct.kobject** %9, align 8
  %19 = call %struct.device* @kobj_to_dev(%struct.kobject* %18)
  store %struct.device* %19, %struct.device** %14, align 8
  %20 = load %struct.device*, %struct.device** %14, align 8
  %21 = call %struct.netxen_adapter* @dev_get_drvdata(%struct.device* %20)
  store %struct.netxen_adapter* %21, %struct.netxen_adapter** %15, align 8
  %22 = load %struct.netxen_adapter*, %struct.netxen_adapter** %15, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @netxen_sysfs_validate_mem(%struct.netxen_adapter* %22, i32 %23, i64 %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %7, align 4
  br label %47

30:                                               ; preds = %6
  %31 = load %struct.netxen_adapter*, %struct.netxen_adapter** %15, align 8
  %32 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %31, i32 0, i32 0
  %33 = load i64 (%struct.netxen_adapter*, i32, i32*)*, i64 (%struct.netxen_adapter*, i32, i32*)** %32, align 8
  %34 = load %struct.netxen_adapter*, %struct.netxen_adapter** %15, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i64 %33(%struct.netxen_adapter* %34, i32 %35, i32* %16)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %47

41:                                               ; preds = %30
  %42 = load i8*, i8** %11, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @memcpy(i8* %42, i32* %16, i64 %43)
  %45 = load i64, i64* %13, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %41, %38, %28
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.netxen_adapter* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @netxen_sysfs_validate_mem(%struct.netxen_adapter*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
