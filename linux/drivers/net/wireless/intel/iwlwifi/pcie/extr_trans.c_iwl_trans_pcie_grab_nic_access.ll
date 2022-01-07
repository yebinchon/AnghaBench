; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_grab_nic_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_grab_nic_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.iwl_trans = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.iwl_trans_pcie = type { i32, i64 }
%struct.iwl_trans_pcie_removal = type { i32, i32 }

@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Timeout waiting for hardware access (CSR_GP_CNTRL 0x%08x)\0A\00", align 1
@iwlwifi_mod_params = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@STATUS_TRANS_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Device gone - scheduling removal!\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Module is being unloaded - abort\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@iwl_trans_pcie_removal_wk = common dso_local global i32 0, align 4
@CSR_RESET = common dso_local global i32 0, align 4
@CSR_RESET_REG_FLAG_FORCE_NMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i64*)* @iwl_trans_pcie_grab_nic_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_grab_nic_access(%struct.iwl_trans* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_trans_pcie_removal*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %11 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %10)
  store %struct.iwl_trans_pcie* %11, %struct.iwl_trans_pcie** %7, align 8
  %12 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %13 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %12, i32 0, i32 0
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %13, i64 %15)
  %17 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %18 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %142

22:                                               ; preds = %2
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %24 = load i32, i32* @CSR_GP_CNTRL, align 4
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = call i32 @__iwl_trans_pcie_set_bit(%struct.iwl_trans* %23, i32 %24, i32 %32)
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %35 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IWL_DEVICE_FAMILY_8000, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = call i32 @udelay(i32 2)
  br label %43

43:                                               ; preds = %41, %22
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %45 = load i32, i32* @CSR_GP_CNTRL, align 4
  %46 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %47 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %55 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @BIT(i32 %60)
  %62 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @iwl_poll_bit(%struct.iwl_trans* %44, i32 %45, i32 %53, i32 %63, i32 15000)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %141

70:                                               ; preds = %43
  %71 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %72 = load i32, i32* @CSR_GP_CNTRL, align 4
  %73 = call i32 @iwl_read32(%struct.iwl_trans* %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %77 = call i32 @iwl_trans_pcie_dump_regs(%struct.iwl_trans* %76)
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %129

80:                                               ; preds = %70
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %129

83:                                               ; preds = %80
  %84 = load i32, i32* @STATUS_TRANS_DEAD, align 4
  %85 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %86 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %85, i32 0, i32 1
  %87 = call i64 @test_bit(i32 %84, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %135

90:                                               ; preds = %83
  %91 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %92 = call i32 @IWL_ERR(%struct.iwl_trans* %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @THIS_MODULE, align 4
  %94 = call i32 @try_module_get(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %98 = call i32 @IWL_ERR(%struct.iwl_trans* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %135

99:                                               ; preds = %90
  %100 = load i32, i32* @GFP_ATOMIC, align 4
  %101 = call %struct.iwl_trans_pcie_removal* @kzalloc(i32 8, i32 %100)
  store %struct.iwl_trans_pcie_removal* %101, %struct.iwl_trans_pcie_removal** %9, align 8
  %102 = load %struct.iwl_trans_pcie_removal*, %struct.iwl_trans_pcie_removal** %9, align 8
  %103 = icmp ne %struct.iwl_trans_pcie_removal* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @THIS_MODULE, align 4
  %106 = call i32 @module_put(i32 %105)
  br label %135

107:                                              ; preds = %99
  %108 = load i32, i32* @STATUS_TRANS_DEAD, align 4
  %109 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %110 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %109, i32 0, i32 1
  %111 = call i32 @set_bit(i32 %108, i32* %110)
  %112 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %113 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @to_pci_dev(i32 %114)
  %116 = load %struct.iwl_trans_pcie_removal*, %struct.iwl_trans_pcie_removal** %9, align 8
  %117 = getelementptr inbounds %struct.iwl_trans_pcie_removal, %struct.iwl_trans_pcie_removal* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.iwl_trans_pcie_removal*, %struct.iwl_trans_pcie_removal** %9, align 8
  %119 = getelementptr inbounds %struct.iwl_trans_pcie_removal, %struct.iwl_trans_pcie_removal* %118, i32 0, i32 0
  %120 = load i32, i32* @iwl_trans_pcie_removal_wk, align 4
  %121 = call i32 @INIT_WORK(i32* %119, i32 %120)
  %122 = load %struct.iwl_trans_pcie_removal*, %struct.iwl_trans_pcie_removal** %9, align 8
  %123 = getelementptr inbounds %struct.iwl_trans_pcie_removal, %struct.iwl_trans_pcie_removal* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @pci_dev_get(i32 %124)
  %126 = load %struct.iwl_trans_pcie_removal*, %struct.iwl_trans_pcie_removal** %9, align 8
  %127 = getelementptr inbounds %struct.iwl_trans_pcie_removal, %struct.iwl_trans_pcie_removal* %126, i32 0, i32 0
  %128 = call i32 @schedule_work(i32* %127)
  br label %134

129:                                              ; preds = %80, %70
  %130 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %131 = load i32, i32* @CSR_RESET, align 4
  %132 = load i32, i32* @CSR_RESET_REG_FLAG_FORCE_NMI, align 4
  %133 = call i32 @iwl_write32(%struct.iwl_trans* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %107
  br label %135

135:                                              ; preds = %134, %104, %96, %89
  %136 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %137 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %136, i32 0, i32 0
  %138 = load i64*, i64** %5, align 8
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @spin_unlock_irqrestore(i32* %137, i64 %139)
  store i32 0, i32* %3, align 4
  br label %146

141:                                              ; preds = %43
  br label %142

142:                                              ; preds = %141, %21
  %143 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %144 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %143, i32 0, i32 0
  %145 = call i32 @__release(i32* %144)
  store i32 1, i32* %3, align 4
  br label %146

146:                                              ; preds = %142, %135
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__iwl_trans_pcie_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iwl_poll_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @iwl_trans_pcie_dump_regs(%struct.iwl_trans*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.iwl_trans_pcie_removal* @kzalloc(i32, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @to_pci_dev(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @pci_dev_get(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
