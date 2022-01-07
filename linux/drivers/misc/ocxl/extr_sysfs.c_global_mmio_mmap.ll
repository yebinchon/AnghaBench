; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_sysfs.c_global_mmio_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_sysfs.c_global_mmio_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.vm_area_struct = type { i32, i32, %struct.ocxl_afu*, i32*, i32 }
%struct.ocxl_afu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@global_mmio_vmops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* @global_mmio_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @global_mmio_mmap(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, %struct.vm_area_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca %struct.bin_attribute*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca %struct.ocxl_afu*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.kobject* %1, %struct.kobject** %7, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %8, align 8
  store %struct.vm_area_struct* %3, %struct.vm_area_struct** %9, align 8
  %11 = load %struct.kobject*, %struct.kobject** %7, align 8
  %12 = call i32 @kobj_to_dev(%struct.kobject* %11)
  %13 = call %struct.ocxl_afu* @to_afu(i32 %12)
  store %struct.ocxl_afu* %13, %struct.ocxl_afu** %10, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %15 = call i32 @vma_pages(%struct.vm_area_struct* %14)
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %15, %18
  %20 = load %struct.ocxl_afu*, %struct.ocxl_afu** %10, align 8
  %21 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = icmp sgt i32 %19, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %49

30:                                               ; preds = %4
  %31 = load i32, i32* @VM_IO, align 4
  %32 = load i32, i32* @VM_PFNMAP, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pgprot_noncached(i32 %40)
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 3
  store i32* @global_mmio_vmops, i32** %45, align 8
  %46 = load %struct.ocxl_afu*, %struct.ocxl_afu** %10, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 2
  store %struct.ocxl_afu* %46, %struct.ocxl_afu** %48, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %30, %27
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.ocxl_afu* @to_afu(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i32 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
