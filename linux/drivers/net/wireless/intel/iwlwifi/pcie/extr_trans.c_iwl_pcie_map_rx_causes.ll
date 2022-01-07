; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_map_rx_causes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_map_rx_causes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32 }

@IWL_SHARED_IRQ_FIRST_RSS = common dso_local global i32 0, align 4
@CSR_MSIX_FH_INT_MASK_AD = common dso_local global i32 0, align 4
@IWL_SHARED_IRQ_NON_RX = common dso_local global i32 0, align 4
@MSIX_NON_AUTO_CLEAR_CAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_pcie_map_rx_causes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_map_rx_causes(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %8 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %7)
  store %struct.iwl_trans_pcie* %8, %struct.iwl_trans_pcie** %3, align 8
  %9 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IWL_SHARED_IRQ_FIRST_RSS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  store i32 %16, i32* %4, align 4
  %17 = call i32 @MSIX_FH_INT_CAUSES_Q(i32 0)
  %18 = call i32 @BIT(i32 %17)
  store i32 %18, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %19

19:                                               ; preds = %39, %1
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %22 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @CSR_MSIX_RX_IVAR(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @MSIX_FH_INT_CAUSES_Q(i32 %31)
  %33 = call i32 @iwl_write8(%struct.iwl_trans* %26, i32 %28, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @MSIX_FH_INT_CAUSES_Q(i32 %34)
  %36 = call i32 @BIT(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %19

42:                                               ; preds = %19
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %44 = load i32, i32* @CSR_MSIX_FH_INT_MASK_AD, align 4
  %45 = load i32, i32* %5, align 4
  %46 = xor i32 %45, -1
  %47 = call i32 @iwl_write32(%struct.iwl_trans* %43, i32 %44, i32 %46)
  %48 = call i32 @MSIX_FH_INT_CAUSES_Q(i32 0)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %50 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IWL_SHARED_IRQ_NON_RX, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load i32, i32* @MSIX_NON_AUTO_CLEAR_CAUSE, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %42
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %61 = call i32 @CSR_MSIX_RX_IVAR(i32 0)
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @iwl_write8(%struct.iwl_trans* %60, i32 %61, i32 %62)
  %64 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %65 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IWL_SHARED_IRQ_FIRST_RSS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %72 = call i32 @CSR_MSIX_RX_IVAR(i32 1)
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @iwl_write8(%struct.iwl_trans* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %59
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @MSIX_FH_INT_CAUSES_Q(i32) #1

declare dso_local i32 @iwl_write8(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @CSR_MSIX_RX_IVAR(i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
