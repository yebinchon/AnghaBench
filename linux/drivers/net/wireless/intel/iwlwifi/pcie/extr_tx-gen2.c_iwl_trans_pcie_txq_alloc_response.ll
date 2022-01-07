; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_trans_pcie_txq_alloc_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_trans_pcie_txq_alloc_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_txq = type { i32, i32, i32 }
%struct.iwl_host_cmd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.iwl_trans_pcie = type { %struct.iwl_txq**, i32 }
%struct.iwl_tx_queue_cfg_rsp = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"queue index %d unsupported\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"queue %d already used\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Activate queue %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_trans_pcie_txq_alloc_response(%struct.iwl_trans* %0, %struct.iwl_txq* %1, %struct.iwl_host_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca %struct.iwl_txq*, align 8
  %7 = alloca %struct.iwl_host_cmd*, align 8
  %8 = alloca %struct.iwl_trans_pcie*, align 8
  %9 = alloca %struct.iwl_tx_queue_cfg_rsp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %6, align 8
  store %struct.iwl_host_cmd* %2, %struct.iwl_host_cmd** %7, align 8
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %14 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %13)
  store %struct.iwl_trans_pcie* %14, %struct.iwl_trans_pcie** %8, align 8
  %15 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i32 @iwl_rx_packet_payload_len(%struct.TYPE_6__* %17)
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 8
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  br label %99

27:                                               ; preds = %3
  %28 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.iwl_tx_queue_cfg_rsp*
  store %struct.iwl_tx_queue_cfg_rsp* %34, %struct.iwl_tx_queue_cfg_rsp** %9, align 8
  %35 = load %struct.iwl_tx_queue_cfg_rsp*, %struct.iwl_tx_queue_cfg_rsp** %9, align 8
  %36 = getelementptr inbounds %struct.iwl_tx_queue_cfg_rsp, %struct.iwl_tx_queue_cfg_rsp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.iwl_tx_queue_cfg_rsp*, %struct.iwl_tx_queue_cfg_rsp** %9, align 8
  %40 = getelementptr inbounds %struct.iwl_tx_queue_cfg_rsp, %struct.iwl_tx_queue_cfg_rsp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %45 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %44, i32 0, i32 0
  %46 = load %struct.iwl_txq**, %struct.iwl_txq*** %45, align 8
  %47 = call i32 @ARRAY_SIZE(%struct.iwl_txq** %46)
  %48 = icmp sge i32 %43, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %27
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %99

54:                                               ; preds = %27
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %57 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @test_and_set_bit(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %99

66:                                               ; preds = %54
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %69 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %71 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %72 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %71, i32 0, i32 0
  %73 = load %struct.iwl_txq**, %struct.iwl_txq*** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %73, i64 %75
  store %struct.iwl_txq* %70, %struct.iwl_txq** %76, align 8
  %77 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %78 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* %12, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %89 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %92 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %7, align 8
  %97 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %96)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  br label %106

99:                                               ; preds = %61, %49, %24
  %100 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %7, align 8
  %101 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %100)
  %102 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %103 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %104 = call i32 @iwl_pcie_gen2_txq_free_memory(%struct.iwl_trans* %102, %struct.iwl_txq* %103)
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %99, %66
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.TYPE_6__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.iwl_txq**) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #1

declare dso_local i32 @iwl_pcie_gen2_txq_free_memory(%struct.iwl_trans*, %struct.iwl_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
