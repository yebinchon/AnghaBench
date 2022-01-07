; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.iwl_trans_pcie = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_rx_init(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %4, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %9 = call i32 @_iwl_pcie_rx_init(%struct.iwl_trans* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %23 = call i32 @iwl_pcie_rx_mq_hw_init(%struct.iwl_trans* %22)
  br label %30

24:                                               ; preds = %14
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %26 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @iwl_pcie_rx_hw_init(%struct.iwl_trans* %25, %struct.TYPE_6__* %28)
  br label %30

30:                                               ; preds = %24, %21
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %32 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %33 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i32 @iwl_pcie_rxq_restock(%struct.iwl_trans* %31, %struct.TYPE_6__* %34)
  %36 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %42 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %43 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = call i32 @iwl_pcie_rxq_inc_wr_ptr(%struct.iwl_trans* %41, %struct.TYPE_6__* %44)
  %46 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %47 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %30, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @_iwl_pcie_rx_init(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_rx_mq_hw_init(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_rx_hw_init(%struct.iwl_trans*, %struct.TYPE_6__*) #1

declare dso_local i32 @iwl_pcie_rxq_restock(%struct.iwl_trans*, %struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iwl_pcie_rxq_inc_wr_ptr(%struct.iwl_trans*, %struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
