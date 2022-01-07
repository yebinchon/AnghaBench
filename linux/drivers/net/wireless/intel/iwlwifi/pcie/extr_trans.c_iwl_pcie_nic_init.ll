; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_nic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_nic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_trans_pcie = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CSR_MAC_SHADOW_REG_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Enabling shadow registers in device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_pcie_nic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_nic_init(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %4, align 8
  %8 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %12 = call i32 @iwl_pcie_apm_init(%struct.iwl_trans* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %22 = call i32 @iwl_pcie_set_pwr(%struct.iwl_trans* %21, i32 0)
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @iwl_op_mode_nic_config(i32 %25)
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %28 = call i32 @iwl_pcie_rx_init(%struct.iwl_trans* %27)
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %30 = call i64 @iwl_pcie_tx_init(%struct.iwl_trans* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %20
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %46 = load i32, i32* @CSR_MAC_SHADOW_REG_CTRL, align 4
  %47 = call i32 @iwl_set_bit(%struct.iwl_trans* %45, i32 %46, i32 -2146435073)
  %48 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %49 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %44, %35
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %32, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iwl_pcie_apm_init(%struct.iwl_trans*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iwl_pcie_set_pwr(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_op_mode_nic_config(i32) #1

declare dso_local i32 @iwl_pcie_rx_init(%struct.iwl_trans*) #1

declare dso_local i64 @iwl_pcie_tx_init(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
