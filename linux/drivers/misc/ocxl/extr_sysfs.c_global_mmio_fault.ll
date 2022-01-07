; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_sysfs.c_global_mmio_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_sysfs.c_global_mmio_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { %struct.ocxl_afu* }
%struct.ocxl_afu = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @global_mmio_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @global_mmio_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.ocxl_afu*, align 8
  %6 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %7 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %8 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %7, i32 0, i32 2
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  store %struct.vm_area_struct* %9, %struct.vm_area_struct** %4, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load %struct.ocxl_afu*, %struct.ocxl_afu** %11, align 8
  store %struct.ocxl_afu* %12, %struct.ocxl_afu** %5, align 8
  %13 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ocxl_afu*, %struct.ocxl_afu** %5, align 8
  %17 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = lshr i64 %19, %20
  %22 = icmp uge i64 %15, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %24, i32* %2, align 4
  br label %42

25:                                               ; preds = %1
  %26 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %27 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load %struct.ocxl_afu*, %struct.ocxl_afu** %5, align 8
  %30 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %37 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %38 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @vmf_insert_pfn(%struct.vm_area_struct* %36, i32 %39, i64 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %25, %23
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @vmf_insert_pfn(%struct.vm_area_struct*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
