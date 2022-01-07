; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_sysfs.c_global_mmio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_sysfs.c_global_mmio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.ocxl_afu = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @global_mmio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @global_mmio_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ocxl_afu*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.kobject*, %struct.kobject** %9, align 8
  %16 = call i32 @kobj_to_dev(%struct.kobject* %15)
  %17 = call %struct.ocxl_afu* @to_afu(i32 %16)
  store %struct.ocxl_afu* %17, %struct.ocxl_afu** %14, align 8
  %18 = load i64, i64* %13, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %6
  %21 = load i64, i64* %12, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %12, align 8
  %25 = load %struct.ocxl_afu*, %struct.ocxl_afu** %14, align 8
  %26 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %20, %6
  store i64 0, i64* %7, align 8
  br label %41

31:                                               ; preds = %23
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.ocxl_afu*, %struct.ocxl_afu** %14, align 8
  %34 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %12, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @memcpy_fromio(i8* %32, i64 %37, i64 %38)
  %40 = load i64, i64* %13, align 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %31, %30
  %42 = load i64, i64* %7, align 8
  ret i64 %42
}

declare dso_local %struct.ocxl_afu* @to_afu(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i32 @memcpy_fromio(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
