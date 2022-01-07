; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_free_rbs_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_free_rbs_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@RX_POOL_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_free_rbs_pool(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %6 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %5)
  store %struct.iwl_trans_pcie* %6, %struct.iwl_trans_pcie** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %60, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @RX_POOL_SIZE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %63

11:                                               ; preds = %7
  %12 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %60

22:                                               ; preds = %11
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %24 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %27 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %34, %37
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %40 = call i32 @dma_unmap_page(i32 %25, i32 %33, i32 %38, i32 %39)
  %41 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %42 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %50 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @__free_pages(i32* %48, i32 %51)
  %53 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %54 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %22, %21
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %7

63:                                               ; preds = %7
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
