; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_d3_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_d3_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_trans_pcie = type { i32, i32 }

@IWL_DEVICE_FAMILY_AX210 = common dso_local global i64 0, align 8
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_PERSIST_MODE = common dso_local global i32 0, align 4
@UREG_DOORBELL_TO_ISR6 = common dso_local global i32 0, align 4
@UREG_DOORBELL_TO_ISR6_SUSPEND = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Timeout entering D3\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32, i32)* @iwl_trans_pcie_d3_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_d3_suspend(%struct.iwl_trans* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %11 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %10)
  store %struct.iwl_trans_pcie* %11, %struct.iwl_trans_pcie** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %3
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IWL_DEVICE_FAMILY_AX210, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %24 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %25 = load i32, i32* @CSR_HW_IF_CONFIG_REG_PERSIST_MODE, align 4
  %26 = call i32 @iwl_set_bit(%struct.iwl_trans* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %14, %3
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IWL_DEVICE_FAMILY_AX210, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %27
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %37 = load i32, i32* @UREG_DOORBELL_TO_ISR6, align 4
  %38 = load i32, i32* @UREG_DOORBELL_TO_ISR6_SUSPEND, align 4
  %39 = call i32 @iwl_write_umac_prph(%struct.iwl_trans* %36, i32 %37, i32 %38)
  %40 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %9, align 8
  %41 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %9, align 8
  %44 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 2, %46
  %48 = call i32 @wait_event_timeout(i32 %42, i32 %45, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %9, align 8
  %50 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %35
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %55 = call i32 @IWL_ERR(%struct.iwl_trans* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %64

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58, %27
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @iwl_pcie_d3_complete_suspend(%struct.iwl_trans* %60, i32 %61, i32 %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %53
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_write_umac_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_pcie_d3_complete_suspend(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
