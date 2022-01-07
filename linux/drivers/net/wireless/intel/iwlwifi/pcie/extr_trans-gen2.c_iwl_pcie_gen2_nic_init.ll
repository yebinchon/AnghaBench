; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans-gen2.c_iwl_pcie_gen2_nic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans-gen2.c_iwl_pcie_gen2_nic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32 }

@u32 = common dso_local global i32 0, align 4
@IWL_CMD_QUEUE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSR_MAC_SHADOW_REG_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Enabling shadow registers in device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_pcie_gen2_nic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_gen2_nic_init(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %4, align 8
  %8 = load i32, i32* @u32, align 4
  %9 = load i32, i32* @IWL_CMD_QUEUE_SIZE, align 4
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @max_t(i32 %8, i32 %9, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %20 = call i32 @iwl_pcie_gen2_apm_init(%struct.iwl_trans* %19)
  %21 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @iwl_op_mode_nic_config(i32 %26)
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %29 = call i64 @iwl_pcie_gen2_rx_init(%struct.iwl_trans* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %51

34:                                               ; preds = %1
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %36 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @iwl_pcie_gen2_tx_init(%struct.iwl_trans* %35, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %51

45:                                               ; preds = %34
  %46 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %47 = load i32, i32* @CSR_MAC_SHADOW_REG_CTRL, align 4
  %48 = call i32 @iwl_set_bit(%struct.iwl_trans* %46, i32 %47, i32 -2146435073)
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %50 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %42, %31
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iwl_pcie_gen2_apm_init(%struct.iwl_trans*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iwl_op_mode_nic_config(i32) #1

declare dso_local i64 @iwl_pcie_gen2_rx_init(%struct.iwl_trans*) #1

declare dso_local i64 @iwl_pcie_gen2_tx_init(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
