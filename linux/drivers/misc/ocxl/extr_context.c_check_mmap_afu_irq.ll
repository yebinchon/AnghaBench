; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_check_mmap_afu_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_check_mmap_afu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_context = type { i32 }
%struct.vm_area_struct = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocxl_context*, %struct.vm_area_struct*)* @check_mmap_afu_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mmap_afu_irq(%struct.ocxl_context* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocxl_context*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.ocxl_context* %0, %struct.ocxl_context** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PAGE_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = call i32 @ocxl_irq_offset_to_id(%struct.ocxl_context* %7, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = call i32 @vma_pages(%struct.vm_area_struct* %14)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ocxl_afu_irq_get_addr(%struct.ocxl_context* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %61

28:                                               ; preds = %20
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VM_READ, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %28
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @VM_EXEC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VM_WRITE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42, %35, %28
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %61

52:                                               ; preds = %42
  %53 = load i32, i32* @VM_MAYREAD, align 4
  %54 = load i32, i32* @VM_MAYEXEC, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %52, %49, %25, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @ocxl_irq_offset_to_id(%struct.ocxl_context*, i32) #1

declare dso_local i32 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @ocxl_afu_irq_get_addr(%struct.ocxl_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
