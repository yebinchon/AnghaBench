; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_set_hw_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_set_hw_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_NIC_READY = common dso_local global i32 0, align 4
@HW_READY_TIMEOUT = common dso_local global i32 0, align 4
@CSR_MBOX_SET_REG = common dso_local global i32 0, align 4
@CSR_MBOX_SET_REG_OS_ALIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"hardware%s ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_pcie_set_hw_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_set_hw_ready(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %6 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_NIC_READY, align 4
  %7 = call i32 @iwl_set_bit(%struct.iwl_trans* %4, i32 %5, i32 %6)
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %9 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %10 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_NIC_READY, align 4
  %11 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_NIC_READY, align 4
  %12 = load i32, i32* @HW_READY_TIMEOUT, align 4
  %13 = call i32 @iwl_poll_bit(%struct.iwl_trans* %8, i32 %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %18 = load i32, i32* @CSR_MBOX_SET_REG, align 4
  %19 = load i32, i32* @CSR_MBOX_SET_REG_OS_ALIVE, align 4
  %20 = call i32 @iwl_set_bit(%struct.iwl_trans* %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_poll_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
