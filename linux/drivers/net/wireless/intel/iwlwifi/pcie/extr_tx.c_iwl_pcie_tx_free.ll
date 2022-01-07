; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, i32*, i32**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_tx_free(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %6 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %5)
  store %struct.iwl_trans_pcie* %6, %struct.iwl_trans_pcie** %4, align 8
  %7 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %8 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @memset(i32 %9, i32 0, i32 4)
  %11 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %36, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %19 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %17, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %16
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @iwl_pcie_txq_free(%struct.iwl_trans* %27, i32 %28)
  %30 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %30, i32 0, i32 3
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %16

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %48 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %48, i32 0, i32 1
  %50 = call i32 @iwl_pcie_free_dma_ptr(%struct.iwl_trans* %47, i32* %49)
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %52 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %53 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %52, i32 0, i32 0
  %54 = call i32 @iwl_pcie_free_dma_ptr(%struct.iwl_trans* %51, i32* %53)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @iwl_pcie_txq_free(%struct.iwl_trans*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @iwl_pcie_free_dma_ptr(%struct.iwl_trans*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
