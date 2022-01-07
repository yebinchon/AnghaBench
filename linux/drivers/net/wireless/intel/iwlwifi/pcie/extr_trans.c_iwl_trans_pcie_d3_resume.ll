; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_d3_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_d3_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, i32 }

@IWL_D3_STATUS_ALIVE = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to resume the device (RX reset)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"WFPM value upon resume = 0x%08X\0A\00", align 1
@WFPM_GP2 = common dso_local global i32 0, align 4
@CSR_RESET = common dso_local global i32 0, align 4
@CSR_RESET_REG_FLAG_NEVO_RESET = common dso_local global i32 0, align 4
@IWL_D3_STATUS_RESET = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_AX210 = common dso_local global i64 0, align 8
@UREG_DOORBELL_TO_ISR6 = common dso_local global i32 0, align 4
@UREG_DOORBELL_TO_ISR6_RESUME = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Timeout exiting D3\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32*, i32, i32)* @iwl_trans_pcie_d3_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_d3_resume(%struct.iwl_trans* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_trans_pcie*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %14 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %13)
  store %struct.iwl_trans_pcie* %14, %struct.iwl_trans_pcie** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %19 = call i32 @iwl_enable_interrupts(%struct.iwl_trans* %18)
  %20 = load i32, i32* @IWL_D3_STATUS_ALIVE, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  br label %104

22:                                               ; preds = %4
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %24 = load i32, i32* @CSR_GP_CNTRL, align 4
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %26 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = call i32 @iwl_set_bit(%struct.iwl_trans* %23, i32 %24, i32 %32)
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @iwl_finish_nic_init(%struct.iwl_trans* %34, %struct.TYPE_4__* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %144

43:                                               ; preds = %22
  %44 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %45 = call i32 @iwl_pcie_conf_msix_hw(%struct.iwl_trans_pcie* %44)
  %46 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %47 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %52 = call i32 @iwl_pcie_reset_ict(%struct.iwl_trans* %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %55 = call i32 @iwl_enable_interrupts(%struct.iwl_trans* %54)
  %56 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %57 = call i32 @iwl_pcie_set_pwr(%struct.iwl_trans* %56, i32 0)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %53
  %61 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %62 = load i32, i32* @CSR_GP_CNTRL, align 4
  %63 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %64 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @BIT(i32 %69)
  %71 = call i32 @iwl_clear_bit(%struct.iwl_trans* %61, i32 %62, i32 %70)
  br label %84

72:                                               ; preds = %53
  %73 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %74 = call i32 @iwl_trans_pcie_tx_reset(%struct.iwl_trans* %73)
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %76 = call i32 @iwl_pcie_rx_init(%struct.iwl_trans* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %81 = call i32 @IWL_ERR(%struct.iwl_trans* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %5, align 4
  br label %144

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %60
  %85 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %86 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %87 = load i32, i32* @WFPM_GP2, align 4
  %88 = call i32 @iwl_read_umac_prph(%struct.iwl_trans* %86, i32 %87)
  %89 = call i32 @IWL_DEBUG_POWER(%struct.iwl_trans* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %91 = load i32, i32* @CSR_RESET, align 4
  %92 = call i32 @iwl_read32(%struct.iwl_trans* %90, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @CSR_RESET_REG_FLAG_NEVO_RESET, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = load i32, i32* @IWL_D3_STATUS_RESET, align 4
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  br label %103

100:                                              ; preds = %84
  %101 = load i32, i32* @IWL_D3_STATUS_ALIVE, align 4
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %17
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IWL_D3_STATUS_ALIVE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %143

109:                                              ; preds = %104
  %110 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %111 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IWL_DEVICE_FAMILY_AX210, align 8
  %116 = icmp sge i64 %114, %115
  br i1 %116, label %117, label %143

117:                                              ; preds = %109
  %118 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %119 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %118, i32 0, i32 0
  store i32 0, i32* %119, align 4
  %120 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %121 = load i32, i32* @UREG_DOORBELL_TO_ISR6, align 4
  %122 = load i32, i32* @UREG_DOORBELL_TO_ISR6_RESUME, align 4
  %123 = call i32 @iwl_write_umac_prph(%struct.iwl_trans* %120, i32 %121, i32 %122)
  %124 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %125 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %128 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @HZ, align 4
  %131 = mul nsw i32 2, %130
  %132 = call i32 @wait_event_timeout(i32 %126, i32 %129, i32 %131)
  store i32 %132, i32* %12, align 4
  %133 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %134 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %133, i32 0, i32 0
  store i32 0, i32* %134, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %117
  %138 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %139 = call i32 @IWL_ERR(%struct.iwl_trans* %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %140 = load i32, i32* @ETIMEDOUT, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %5, align 4
  br label %144

142:                                              ; preds = %117
  br label %143

143:                                              ; preds = %142, %109, %104
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %143, %137, %79, %41
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_enable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_finish_nic_init(%struct.iwl_trans*, %struct.TYPE_4__*) #1

declare dso_local i32 @iwl_pcie_conf_msix_hw(%struct.iwl_trans_pcie*) #1

declare dso_local i32 @iwl_pcie_reset_ict(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_set_pwr(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_trans_pcie_tx_reset(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_rx_init(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @IWL_DEBUG_POWER(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_read_umac_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_write_umac_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
