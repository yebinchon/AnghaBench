; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans-gen2.c_iwl_trans_pcie_gen2_start_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans-gen2.c_iwl_trans_pcie_gen2_start_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.fw_img = type { i32 }
%struct.iwl_trans_pcie = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"Exit HW not ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CSR_INT = common dso_local global i32 0, align 4
@ERFKILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Can't start_fw since the HW hasn't been started\0A\00", align 1
@CSR_UCODE_DRV_GP1_CLR = common dso_local global i32 0, align 4
@CSR_UCODE_SW_BIT_RFKILL = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Unable to init nic\0A\00", align 1
@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_trans_pcie_gen2_start_fw(%struct.iwl_trans* %0, %struct.fw_img* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.fw_img*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.fw_img* %1, %struct.fw_img** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %11 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %10)
  store %struct.iwl_trans_pcie* %11, %struct.iwl_trans_pcie** %7, align 8
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %13 = call i64 @iwl_pcie_prepare_card_hw(%struct.iwl_trans* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %17 = call i32 @IWL_WARN(%struct.iwl_trans* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %104

20:                                               ; preds = %3
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %22 = call i32 @iwl_enable_rfkill_int(%struct.iwl_trans* %21)
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %24 = load i32, i32* @CSR_INT, align 4
  %25 = call i32 @iwl_write32(%struct.iwl_trans* %23, i32 %24, i32 -1)
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %27 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %26)
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %29 = call i32 @iwl_pcie_synchronize_irqs(%struct.iwl_trans* %28)
  %30 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %31 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %34 = call i32 @iwl_pcie_check_hw_rf_kill(%struct.iwl_trans* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %20
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @ERFKILL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %104

43:                                               ; preds = %37, %20
  %44 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %45 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %50 = call i32 @IWL_WARN(%struct.iwl_trans* %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %104

53:                                               ; preds = %43
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %55 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %56 = load i32, i32* @CSR_UCODE_SW_BIT_RFKILL, align 4
  %57 = call i32 @iwl_write32(%struct.iwl_trans* %54, i32 %55, i32 %56)
  %58 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %59 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %60 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED, align 4
  %61 = call i32 @iwl_write32(%struct.iwl_trans* %58, i32 %59, i32 %60)
  %62 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %63 = load i32, i32* @CSR_INT, align 4
  %64 = call i32 @iwl_write32(%struct.iwl_trans* %62, i32 %63, i32 -1)
  %65 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %66 = call i32 @iwl_pcie_gen2_nic_init(%struct.iwl_trans* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %71 = call i32 @IWL_ERR(%struct.iwl_trans* %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %104

72:                                               ; preds = %53
  %73 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %74 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %82 = load %struct.fw_img*, %struct.fw_img** %5, align 8
  %83 = call i32 @iwl_pcie_ctxt_info_gen3_init(%struct.iwl_trans* %81, %struct.fw_img* %82)
  store i32 %83, i32* %9, align 4
  br label %88

84:                                               ; preds = %72
  %85 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %86 = load %struct.fw_img*, %struct.fw_img** %5, align 8
  %87 = call i32 @iwl_pcie_ctxt_info_init(%struct.iwl_trans* %85, %struct.fw_img* %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %104

92:                                               ; preds = %88
  %93 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %94 = call i32 @iwl_pcie_check_hw_rf_kill(%struct.iwl_trans* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @ERFKILL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %100, %97, %92
  br label %104

104:                                              ; preds = %103, %91, %69, %48, %40, %15
  %105 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %106 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %9, align 4
  ret i32 %108
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @iwl_pcie_prepare_card_hw(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_enable_rfkill_int(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_disable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_synchronize_irqs(%struct.iwl_trans*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_pcie_check_hw_rf_kill(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_gen2_nic_init(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_pcie_ctxt_info_gen3_init(%struct.iwl_trans*, %struct.fw_img*) #1

declare dso_local i32 @iwl_pcie_ctxt_info_init(%struct.iwl_trans*, %struct.fw_img*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
