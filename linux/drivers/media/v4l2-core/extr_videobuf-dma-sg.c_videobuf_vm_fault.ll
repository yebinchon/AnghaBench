; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c_videobuf_vm_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c_videobuf_vm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.page*, i32, %struct.vm_area_struct* }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"fault: fault @ %08lx [vma %08lx-%08lx]\0A\00", align 1
@GFP_USER = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @videobuf_vm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @videobuf_vm_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %6 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %7 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %6, i32 0, i32 2
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %8, %struct.vm_area_struct** %4, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17)
  %19 = load i32, i32* @GFP_USER, align 4
  %20 = load i32, i32* @__GFP_DMA32, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.page* @alloc_page(i32 %21)
  store %struct.page* %22, %struct.page** %5, align 8
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = icmp ne %struct.page* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %30 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @clear_user_highpage(%struct.page* %28, i32 %31)
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %35 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %34, i32 0, i32 0
  store %struct.page* %33, %struct.page** %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %27, %25
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @clear_user_highpage(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
