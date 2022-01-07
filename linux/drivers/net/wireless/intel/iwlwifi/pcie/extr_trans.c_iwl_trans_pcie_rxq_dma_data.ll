; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_rxq_dma_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_rxq_dma_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_rxq_dma_data = type { i64, i32, i32, i32 }
%struct.iwl_trans_pcie = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32, %struct.iwl_trans_rxq_dma_data*)* @iwl_trans_pcie_rxq_dma_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_rxq_dma_data(%struct.iwl_trans* %0, i32 %1, %struct.iwl_trans_rxq_dma_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans_rxq_dma_data*, align 8
  %8 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.iwl_trans_rxq_dma_data* %2, %struct.iwl_trans_rxq_dma_data** %7, align 8
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %10 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %9)
  store %struct.iwl_trans_pcie* %10, %struct.iwl_trans_pcie** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %18 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %57

24:                                               ; preds = %16
  %25 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %26 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iwl_trans_rxq_dma_data*, %struct.iwl_trans_rxq_dma_data** %7, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_rxq_dma_data, %struct.iwl_trans_rxq_dma_data* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %36 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iwl_trans_rxq_dma_data*, %struct.iwl_trans_rxq_dma_data** %7, align 8
  %44 = getelementptr inbounds %struct.iwl_trans_rxq_dma_data, %struct.iwl_trans_rxq_dma_data* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %46 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iwl_trans_rxq_dma_data*, %struct.iwl_trans_rxq_dma_data** %7, align 8
  %54 = getelementptr inbounds %struct.iwl_trans_rxq_dma_data, %struct.iwl_trans_rxq_dma_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.iwl_trans_rxq_dma_data*, %struct.iwl_trans_rxq_dma_data** %7, align 8
  %56 = getelementptr inbounds %struct.iwl_trans_rxq_dma_data, %struct.iwl_trans_rxq_dma_data* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %24, %21
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
