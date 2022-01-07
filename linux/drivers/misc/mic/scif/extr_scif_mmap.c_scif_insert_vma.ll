; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_mmap.c_scif_insert_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_mmap.c_scif_insert_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.scif_vma_info = type { i32, %struct.vm_area_struct* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scif_endpt*, %struct.vm_area_struct*)* @scif_insert_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scif_insert_vma(%struct.scif_endpt* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.scif_endpt*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.scif_vma_info*, align 8
  %6 = alloca i32, align 4
  store %struct.scif_endpt* %0, %struct.scif_endpt** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.scif_vma_info* @kzalloc(i32 16, i32 %7)
  store %struct.scif_vma_info* %8, %struct.scif_vma_info** %5, align 8
  %9 = load %struct.scif_vma_info*, %struct.scif_vma_info** %5, align 8
  %10 = icmp ne %struct.scif_vma_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = load %struct.scif_vma_info*, %struct.scif_vma_info** %5, align 8
  %17 = getelementptr inbounds %struct.scif_vma_info, %struct.scif_vma_info* %16, i32 0, i32 1
  store %struct.vm_area_struct* %15, %struct.vm_area_struct** %17, align 8
  %18 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %19 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.scif_vma_info*, %struct.scif_vma_info** %5, align 8
  %22 = getelementptr inbounds %struct.scif_vma_info, %struct.scif_vma_info* %21, i32 0, i32 0
  %23 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %24 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @list_add_tail(i32* %22, i32* %25)
  %27 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %28 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  br label %30

30:                                               ; preds = %14, %11
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.scif_vma_info* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
