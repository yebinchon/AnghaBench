; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_cxllib.c_get_vma_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_cxllib.c_get_vma_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32, i32*, i32*, i64*)* @get_vma_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vma_info(%struct.mm_struct* %0, i32 %1, i32* %2, i32* %3, i64* %4) #0 {
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64* %4, i64** %10, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 0
  %15 = call i32 @down_read(i32* %14)
  %16 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %16, i32 %17)
  store %struct.vm_area_struct* %18, %struct.vm_area_struct** %11, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %20 = icmp ne %struct.vm_area_struct* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %12, align 4
  br label %36

24:                                               ; preds = %5
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %26 = call i64 @vma_kernel_pagesize(%struct.vm_area_struct* %25)
  %27 = load i64*, i64** %10, align 8
  store i64 %26, i64* %27, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %24, %21
  %37 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 0
  %39 = call i32 @up_read(i32* %38)
  %40 = load i32, i32* %12, align 4
  ret i32 %40
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i32) #1

declare dso_local i64 @vma_kernel_pagesize(%struct.vm_area_struct*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
