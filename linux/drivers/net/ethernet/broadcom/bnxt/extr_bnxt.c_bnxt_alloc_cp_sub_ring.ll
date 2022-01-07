; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_cp_sub_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_cp_sub_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_cp_ring_info = type { i32, i64, %struct.bnxt_ring_struct }
%struct.bnxt_ring_struct = type { %struct.bnxt_ring_mem_info }
%struct.bnxt_ring_mem_info = type { i8**, i32, i32, i32, i32 }
%struct.bnxt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HW_CMPD_RING_SIZE = common dso_local global i32 0, align 4
@BNXT_RMEM_RING_PTE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bnxt_cp_ring_info* (%struct.bnxt*)* @bnxt_alloc_cp_sub_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bnxt_cp_ring_info* @bnxt_alloc_cp_sub_ring(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt_cp_ring_info*, align 8
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_ring_mem_info*, align 8
  %5 = alloca %struct.bnxt_ring_struct*, align 8
  %6 = alloca %struct.bnxt_cp_ring_info*, align 8
  %7 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bnxt_cp_ring_info* @kzalloc(i32 40, i32 %8)
  store %struct.bnxt_cp_ring_info* %9, %struct.bnxt_cp_ring_info** %6, align 8
  %10 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %11 = icmp ne %struct.bnxt_cp_ring_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.bnxt_cp_ring_info* null, %struct.bnxt_cp_ring_info** %2, align 8
  br label %53

13:                                               ; preds = %1
  %14 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %15 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %14, i32 0, i32 2
  store %struct.bnxt_ring_struct* %15, %struct.bnxt_ring_struct** %5, align 8
  %16 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %5, align 8
  %17 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %16, i32 0, i32 0
  store %struct.bnxt_ring_mem_info* %17, %struct.bnxt_ring_mem_info** %4, align 8
  %18 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %22 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @HW_CMPD_RING_SIZE, align 4
  %24 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %25 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %27 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8**
  %30 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %31 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %30, i32 0, i32 0
  store i8** %29, i8*** %31, align 8
  %32 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %33 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %36 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @BNXT_RMEM_RING_PTE_FLAG, align 4
  %38 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %39 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %41 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %42 = call i32 @bnxt_alloc_ring(%struct.bnxt* %40, %struct.bnxt_ring_mem_info* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %13
  %46 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %47 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %48 = call i32 @bnxt_free_ring(%struct.bnxt* %46, %struct.bnxt_ring_mem_info* %47)
  %49 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %50 = call i32 @kfree(%struct.bnxt_cp_ring_info* %49)
  store %struct.bnxt_cp_ring_info* null, %struct.bnxt_cp_ring_info** %6, align 8
  br label %51

51:                                               ; preds = %45, %13
  %52 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  store %struct.bnxt_cp_ring_info* %52, %struct.bnxt_cp_ring_info** %2, align 8
  br label %53

53:                                               ; preds = %51, %12
  %54 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %2, align 8
  ret %struct.bnxt_cp_ring_info* %54
}

declare dso_local %struct.bnxt_cp_ring_info* @kzalloc(i32, i32) #1

declare dso_local i32 @bnxt_alloc_ring(%struct.bnxt*, %struct.bnxt_ring_mem_info*) #1

declare dso_local i32 @bnxt_free_ring(%struct.bnxt*, %struct.bnxt_ring_mem_info*) #1

declare dso_local i32 @kfree(%struct.bnxt_cp_ring_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
