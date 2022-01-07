; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_stop_fh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_stop_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32 }

@FH_TCSR_CHNL_NUM = common dso_local global i32 0, align 4
@FH_TSSR_TX_STATUS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Failing on timeout while stopping DMA channel %d [0x%08x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_pcie_tx_stop_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_tx_stop_fh(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %9 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %8)
  store %struct.iwl_trans_pcie* %9, %struct.iwl_trans_pcie** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %14 = call i32 @iwl_trans_grab_nic_access(%struct.iwl_trans* %13, i64* %4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %52

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @FH_TCSR_CHNL_NUM, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32 %24)
  %26 = call i32 @iwl_write32(%struct.iwl_trans* %23, i32 %25, i32 0)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @FH_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %36 = load i32, i32* @FH_TSSR_TX_STATUS_REG, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @iwl_poll_bit(%struct.iwl_trans* %35, i32 %36, i32 %37, i32 %38, i32 5000)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %46 = load i32, i32* @FH_TSSR_TX_STATUS_REG, align 4
  %47 = call i32 @iwl_read32(%struct.iwl_trans* %45, i32 %46)
  %48 = call i32 @IWL_ERR(%struct.iwl_trans* %43, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %34
  %50 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %51 = call i32 @iwl_trans_release_nic_access(%struct.iwl_trans* %50, i64* %4)
  br label %52

52:                                               ; preds = %49, %16
  %53 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %54 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iwl_trans_grab_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32) #1

declare dso_local i32 @FH_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(i32) #1

declare dso_local i32 @iwl_poll_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32, i32) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_trans_release_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
