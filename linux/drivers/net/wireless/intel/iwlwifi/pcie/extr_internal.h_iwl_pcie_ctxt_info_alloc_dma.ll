; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_pcie_ctxt_info_alloc_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_pcie_ctxt_info_alloc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.fw_desc = type { i32, i32 }
%struct.iwl_dram_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.fw_desc*, %struct.iwl_dram_data*)* @iwl_pcie_ctxt_info_alloc_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_ctxt_info_alloc_dma(%struct.iwl_trans* %0, %struct.fw_desc* %1, %struct.iwl_dram_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca %struct.fw_desc*, align 8
  %7 = alloca %struct.iwl_dram_data*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store %struct.fw_desc* %1, %struct.fw_desc** %6, align 8
  store %struct.iwl_dram_data* %2, %struct.iwl_dram_data** %7, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fw_desc*, %struct.fw_desc** %6, align 8
  %12 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.iwl_dram_data*, %struct.iwl_dram_data** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_dram_data, %struct.iwl_dram_data* %14, i32 0, i32 2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @dma_alloc_coherent(i32 %10, i32 %13, i32* %15, i32 %16)
  %18 = load %struct.iwl_dram_data*, %struct.iwl_dram_data** %7, align 8
  %19 = getelementptr inbounds %struct.iwl_dram_data, %struct.iwl_dram_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.iwl_dram_data*, %struct.iwl_dram_data** %7, align 8
  %21 = getelementptr inbounds %struct.iwl_dram_data, %struct.iwl_dram_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %43

27:                                               ; preds = %3
  %28 = load %struct.fw_desc*, %struct.fw_desc** %6, align 8
  %29 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iwl_dram_data*, %struct.iwl_dram_data** %7, align 8
  %32 = getelementptr inbounds %struct.iwl_dram_data, %struct.iwl_dram_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.iwl_dram_data*, %struct.iwl_dram_data** %7, align 8
  %34 = getelementptr inbounds %struct.iwl_dram_data, %struct.iwl_dram_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fw_desc*, %struct.fw_desc** %6, align 8
  %37 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fw_desc*, %struct.fw_desc** %6, align 8
  %40 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32 %35, i32 %38, i32 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %27, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
