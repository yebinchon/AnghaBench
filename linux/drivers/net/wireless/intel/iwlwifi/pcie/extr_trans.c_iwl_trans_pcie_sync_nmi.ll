; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_sync_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_sync_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@IWL_TRANS_NMI_TIMEOUT = common dso_local global i64 0, align 8
@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@CSR_MSIX_HW_INT_CAUSES_AD = common dso_local global i32 0, align 4
@MSIX_HW_INT_CAUSES_REG_SW_ERR = common dso_local global i32 0, align 4
@CSR_INT = common dso_local global i32 0, align 4
@CSR_INT_BIT_SW_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_trans_pcie_sync_nmi(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %10 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %9)
  store %struct.iwl_trans_pcie* %10, %struct.iwl_trans_pcie** %3, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* @IWL_TRANS_NMI_TIMEOUT, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %15, i32 0, i32 0
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @CSR_MSIX_HW_INT_CAUSES_AD, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @MSIX_HW_INT_CAUSES_REG_SW_ERR, align 4
  store i32 %24, i32* %7, align 4
  br label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @CSR_INT, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @CSR_INT_BIT_SW_ERR, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %33 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %36 = call i32 @iwl_force_nmi(%struct.iwl_trans* %35)
  br label %37

37:                                               ; preds = %57, %34
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @jiffies, align 8
  %40 = call i64 @time_after(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @iwl_read32(%struct.iwl_trans* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %53, %54
  %56 = call i32 @iwl_write32(%struct.iwl_trans* %51, i32 %52, i32 %55)
  br label %59

57:                                               ; preds = %42
  %58 = call i32 @mdelay(i32 1)
  br label %37

59:                                               ; preds = %50, %37
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %64 = call i32 @iwl_enable_interrupts(%struct.iwl_trans* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %67 = call i32 @iwl_trans_fw_error(%struct.iwl_trans* %66)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_disable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_force_nmi(%struct.iwl_trans*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @iwl_enable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_trans_fw_error(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
