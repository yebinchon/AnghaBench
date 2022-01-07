; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_ocxl_context_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_ocxl_context_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32*, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@ocxl_vmops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_context_mmap(%struct.ocxl_context* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocxl_context*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.ocxl_context* %0, %struct.ocxl_context** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %13 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = call i32 @check_mmap_mmio(%struct.ocxl_context* %19, %struct.vm_area_struct* %20)
  store i32 %21, i32* %6, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = call i32 @check_mmap_afu_irq(%struct.ocxl_context* %23, %struct.vm_area_struct* %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %26
  %32 = load i32, i32* @VM_IO, align 4
  %33 = load i32, i32* @VM_PFNMAP, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pgprot_noncached(i32 %41)
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 2
  store i32* @ocxl_vmops, i32** %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %31, %29
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @check_mmap_mmio(%struct.ocxl_context*, %struct.vm_area_struct*) #1

declare dso_local i32 @check_mmap_afu_irq(%struct.ocxl_context*, %struct.vm_area_struct*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
