; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.c_i40e_alloc_adminq_asq_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.c_i40e_alloc_adminq_asq_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@i40e_mem_atq_ring = common dso_local global i32 0, align 4
@I40E_ADMINQ_DESC_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_hw*)* @i40e_alloc_adminq_asq_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_alloc_adminq_asq_ring(%struct.i40e_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  %5 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %6 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* @i40e_mem_atq_ring, align 4
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @I40E_ADMINQ_DESC_ALIGNMENT, align 4
  %19 = call i64 @i40e_allocate_dma_mem(%struct.i40e_hw* %5, i32* %9, i32 %10, i32 %17, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %2, align 8
  br label %50

24:                                               ; preds = %1
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %27 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %31 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i64 @i40e_allocate_virt_mem(%struct.i40e_hw* %25, i32* %29, i32 %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %24
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %43 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @i40e_free_dma_mem(%struct.i40e_hw* %41, i32* %45)
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %50

48:                                               ; preds = %24
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %2, align 8
  br label %50

50:                                               ; preds = %48, %40, %22
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

declare dso_local i64 @i40e_allocate_dma_mem(%struct.i40e_hw*, i32*, i32, i32, i32) #1

declare dso_local i64 @i40e_allocate_virt_mem(%struct.i40e_hw*, i32*, i32) #1

declare dso_local i32 @i40e_free_dma_mem(%struct.i40e_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
