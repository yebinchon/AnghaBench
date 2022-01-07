; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_alloc_dma_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_alloc_dma_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_dma_ptr = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_alloc_dma_ptr(%struct.iwl_trans* %0, %struct.iwl_dma_ptr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca %struct.iwl_dma_ptr*, align 8
  %7 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store %struct.iwl_dma_ptr* %1, %struct.iwl_dma_ptr** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.iwl_dma_ptr*, %struct.iwl_dma_ptr** %6, align 8
  %9 = getelementptr inbounds %struct.iwl_dma_ptr, %struct.iwl_dma_ptr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %38

16:                                               ; preds = %3
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.iwl_dma_ptr*, %struct.iwl_dma_ptr** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_dma_ptr, %struct.iwl_dma_ptr* %21, i32 0, i32 2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @dma_alloc_coherent(i32 %19, i64 %20, i32* %22, i32 %23)
  %25 = load %struct.iwl_dma_ptr*, %struct.iwl_dma_ptr** %6, align 8
  %26 = getelementptr inbounds %struct.iwl_dma_ptr, %struct.iwl_dma_ptr* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.iwl_dma_ptr*, %struct.iwl_dma_ptr** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_dma_ptr, %struct.iwl_dma_ptr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %16
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %16
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.iwl_dma_ptr*, %struct.iwl_dma_ptr** %6, align 8
  %37 = getelementptr inbounds %struct.iwl_dma_ptr, %struct.iwl_dma_ptr* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %31, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
