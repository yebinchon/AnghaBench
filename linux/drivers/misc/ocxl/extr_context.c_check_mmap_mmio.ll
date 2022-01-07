; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_check_mmap_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_check_mmap_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocxl_context*, %struct.vm_area_struct*)* @check_mmap_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mmap_mmio(%struct.ocxl_context* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocxl_context*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  store %struct.ocxl_context* %0, %struct.ocxl_context** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %7 = call i32 @vma_pages(%struct.vm_area_struct* %6)
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %7, %10
  %12 = load %struct.ocxl_context*, %struct.ocxl_context** %4, align 8
  %13 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PAGE_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = icmp sgt i32 %11, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @vma_pages(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
