; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_d3_complete_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_d3_complete_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@CSR_GP_CNTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_d3_complete_suspend(%struct.iwl_trans* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %8 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %7)
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %47

12:                                               ; preds = %3
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %14 = call i32 @iwl_pcie_disable_ict(%struct.iwl_trans* %13)
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %16 = call i32 @iwl_pcie_synchronize_irqs(%struct.iwl_trans* %15)
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %18 = load i32, i32* @CSR_GP_CNTRL, align 4
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = call i32 @iwl_clear_bit(%struct.iwl_trans* %17, i32 %18, i32 %26)
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %29 = load i32, i32* @CSR_GP_CNTRL, align 4
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = call i32 @iwl_clear_bit(%struct.iwl_trans* %28, i32 %29, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %12
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %43 = call i32 @iwl_trans_pcie_tx_reset(%struct.iwl_trans* %42)
  br label %44

44:                                               ; preds = %41, %12
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %46 = call i32 @iwl_pcie_set_pwr(%struct.iwl_trans* %45, i32 1)
  br label %47

47:                                               ; preds = %44, %11
  ret void
}

declare dso_local i32 @iwl_disable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_disable_ict(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_synchronize_irqs(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_trans_pcie_tx_reset(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_set_pwr(%struct.iwl_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
