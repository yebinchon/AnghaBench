; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans-gen2.c_iwl_pcie_gen2_apm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans-gen2.c_iwl_pcie_gen2_apm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"Init card's basic functions\0A\00", align 1
@CSR_GIO_CHICKEN_BITS = common dso_local global i32 0, align 4
@CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX = common dso_local global i32 0, align 4
@CSR_DBG_HPET_MEM_REG = common dso_local global i32 0, align 4
@CSR_DBG_HPET_MEM_REG_VAL = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_22000 = common dso_local global i64 0, align 8
@STATUS_DEVICE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_gen2_apm_init(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %6 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %8 = load i32, i32* @CSR_GIO_CHICKEN_BITS, align 4
  %9 = load i32, i32* @CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX, align 4
  %10 = call i32 @iwl_set_bit(%struct.iwl_trans* %7, i32 %8, i32 %9)
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %12 = load i32, i32* @CSR_DBG_HPET_MEM_REG, align 4
  %13 = load i32, i32* @CSR_DBG_HPET_MEM_REG_VAL, align 4
  %14 = call i32 @iwl_set_bit(%struct.iwl_trans* %11, i32 %12, i32 %13)
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %16 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %17 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A, align 4
  %18 = call i32 @iwl_set_bit(%struct.iwl_trans* %15, i32 %16, i32 %17)
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %20 = call i32 @iwl_pcie_apm_config(%struct.iwl_trans* %19)
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %22 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IWL_DEVICE_FAMILY_22000, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %1
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %37 = call i32 @iwl_pcie_gen2_force_power_gating(%struct.iwl_trans* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %58

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %28, %1
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @iwl_finish_nic_init(%struct.iwl_trans* %44, %struct.TYPE_4__* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %43
  %54 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %55 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %56 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %55, i32 0, i32 0
  %57 = call i32 @set_bit(i32 %54, i32* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %51, %40
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_pcie_apm_config(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_gen2_force_power_gating(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_finish_nic_init(%struct.iwl_trans*, %struct.TYPE_4__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
