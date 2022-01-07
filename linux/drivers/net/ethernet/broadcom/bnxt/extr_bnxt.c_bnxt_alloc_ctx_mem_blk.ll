; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_ctx_mem_blk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_ctx_mem_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_ctx_pg_info = type { i32, i32, %struct.bnxt_ring_mem_info }
%struct.bnxt_ring_mem_info = type { i32, i32, i32, i32, i32 }

@BNXT_PAGE_SIZE = common dso_local global i32 0, align 4
@BNXT_RMEM_VALID_PTE_FLAG = common dso_local global i32 0, align 4
@BNXT_RMEM_USE_FULL_PAGE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_ctx_pg_info*)* @bnxt_alloc_ctx_mem_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_alloc_ctx_mem_blk(%struct.bnxt* %0, %struct.bnxt_ctx_pg_info* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_ctx_pg_info*, align 8
  %5 = alloca %struct.bnxt_ring_mem_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.bnxt_ctx_pg_info* %1, %struct.bnxt_ctx_pg_info** %4, align 8
  %6 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %4, align 8
  %7 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %6, i32 0, i32 2
  store %struct.bnxt_ring_mem_info* %7, %struct.bnxt_ring_mem_info** %5, align 8
  %8 = load i32, i32* @BNXT_PAGE_SIZE, align 4
  %9 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %10 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %4, align 8
  %12 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %15 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %4, align 8
  %17 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %20 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @BNXT_RMEM_VALID_PTE_FLAG, align 4
  %22 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %23 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %25 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* @BNXT_RMEM_USE_FULL_PAGE_FLAG, align 4
  %30 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %31 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %2
  %35 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %36 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %37 = call i32 @bnxt_alloc_ring(%struct.bnxt* %35, %struct.bnxt_ring_mem_info* %36)
  ret i32 %37
}

declare dso_local i32 @bnxt_alloc_ring(%struct.bnxt*, %struct.bnxt_ring_mem_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
