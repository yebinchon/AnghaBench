; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_trans_pcie_dyn_txq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_trans_pcie_dyn_txq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_txq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_tx_queue_cfg_cmd = type { i32, i8*, i8*, i32, i32, i32 }
%struct.iwl_host_cmd = type { i32, i32, i32, i32 }

@CMD_WANT_SKB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_trans_pcie_dyn_txq_alloc(%struct.iwl_trans* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_trans*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iwl_txq*, align 8
  %17 = alloca %struct.iwl_tx_queue_cfg_cmd, align 8
  %18 = alloca %struct.iwl_host_cmd, align 4
  %19 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.iwl_txq* null, %struct.iwl_txq** %16, align 8
  %20 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, %struct.iwl_tx_queue_cfg_cmd* %17, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, %struct.iwl_tx_queue_cfg_cmd* %17, i32 0, i32 1
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, %struct.iwl_tx_queue_cfg_cmd* %17, i32 0, i32 2
  store i8* null, i8** %22, align 8
  %23 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, %struct.iwl_tx_queue_cfg_cmd* %17, i32 0, i32 3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, %struct.iwl_tx_queue_cfg_cmd* %17, i32 0, i32 4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, %struct.iwl_tx_queue_cfg_cmd* %17, i32 0, i32 5
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %18, i32 0, i32 0
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %18, i32 0, i32 1
  %32 = load i32, i32* @CMD_WANT_SKB, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %18, i32 0, i32 2
  %34 = ptrtoint %struct.iwl_tx_queue_cfg_cmd* %17 to i32
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %18, i32 0, i32 3
  store i32 40, i32* %35, align 4
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @iwl_trans_pcie_dyn_txq_alloc_dma(%struct.iwl_trans* %36, %struct.iwl_txq** %16, i32 %37, i32 %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %7
  %43 = load i32, i32* %19, align 4
  store i32 %43, i32* %8, align 4
  br label %74

44:                                               ; preds = %7
  %45 = load %struct.iwl_txq*, %struct.iwl_txq** %16, align 8
  %46 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le64(i32 %47)
  %49 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, %struct.iwl_tx_queue_cfg_cmd* %17, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = load %struct.iwl_txq*, %struct.iwl_txq** %16, align 8
  %51 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @cpu_to_le64(i32 %53)
  %55 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, %struct.iwl_tx_queue_cfg_cmd* %17, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @TFD_QUEUE_CB_SIZE(i32 %56)
  %58 = call i32 @cpu_to_le32(i32 %57)
  %59 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, %struct.iwl_tx_queue_cfg_cmd* %17, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %61 = call i32 @iwl_trans_send_cmd(%struct.iwl_trans* %60, %struct.iwl_host_cmd* %18)
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %44
  br label %69

65:                                               ; preds = %44
  %66 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %67 = load %struct.iwl_txq*, %struct.iwl_txq** %16, align 8
  %68 = call i32 @iwl_trans_pcie_txq_alloc_response(%struct.iwl_trans* %66, %struct.iwl_txq* %67, %struct.iwl_host_cmd* %18)
  store i32 %68, i32* %8, align 4
  br label %74

69:                                               ; preds = %64
  %70 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %71 = load %struct.iwl_txq*, %struct.iwl_txq** %16, align 8
  %72 = call i32 @iwl_pcie_gen2_txq_free_memory(%struct.iwl_trans* %70, %struct.iwl_txq* %71)
  %73 = load i32, i32* %19, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %69, %65, %42
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i32 @iwl_trans_pcie_dyn_txq_alloc_dma(%struct.iwl_trans*, %struct.iwl_txq**, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @TFD_QUEUE_CB_SIZE(i32) #1

declare dso_local i32 @iwl_trans_send_cmd(%struct.iwl_trans*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @iwl_trans_pcie_txq_alloc_response(%struct.iwl_trans*, %struct.iwl_txq*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @iwl_pcie_gen2_txq_free_memory(%struct.iwl_trans*, %struct.iwl_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
