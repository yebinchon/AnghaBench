; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_dma.c_scif_rma_completion_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_dma.c_scif_rma_completion_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dma_comp_cb = type { i32, i64, i32, i32, i32, i64, i64, i64, i32 }

@SCIF_KMEM_UNALIGNED_BUF_SIZE = common dso_local global i32 0, align 4
@unaligned_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @scif_rma_completion_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_rma_completion_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.scif_dma_comp_cb*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.scif_dma_comp_cb*
  store %struct.scif_dma_comp_cb* %5, %struct.scif_dma_comp_cb** %3, align 8
  %6 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %3, align 8
  %7 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %3, align 8
  %12 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %3, align 8
  %15 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %3, align 8
  %18 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %3, align 8
  %21 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %3, align 8
  %25 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @scif_rma_local_cpu_copy(i32 %13, i64 %16, i64 %23, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %10, %1
  %29 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %3, align 8
  %30 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %3, align 8
  %33 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SCIF_KMEM_UNALIGNED_BUF_SIZE, align 4
  %36 = call i32 @scif_unmap_single(i32 %31, i32 %34, i32 %35)
  %37 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %3, align 8
  %38 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load i32, i32* @unaligned_cache, align 4
  %43 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %3, align 8
  %44 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @kmem_cache_free(i32 %42, i32 %45)
  br label %52

47:                                               ; preds = %28
  %48 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %3, align 8
  %49 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @kfree(i32 %50)
  br label %52

52:                                               ; preds = %47, %41
  ret void
}

declare dso_local i32 @scif_rma_local_cpu_copy(i32, i64, i64, i32, i32) #1

declare dso_local i32 @scif_unmap_single(i32, i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
