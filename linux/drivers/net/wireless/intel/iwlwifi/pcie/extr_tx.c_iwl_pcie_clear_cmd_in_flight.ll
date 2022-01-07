; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_clear_cmd_in_flight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_clear_cmd_in_flight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32 }

@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_pcie_clear_cmd_in_flight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_clear_cmd_in_flight(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %4)
  store %struct.iwl_trans_pcie* %5, %struct.iwl_trans_pcie** %3, align 8
  %6 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %6, i32 0, i32 1
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %42

18:                                               ; preds = %1
  %19 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %42

28:                                               ; preds = %18
  %29 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %32 = load i32, i32* @CSR_GP_CNTRL, align 4
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %34 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = call i32 @__iwl_trans_pcie_clear_bit(%struct.iwl_trans* %31, i32 %32, i32 %40)
  br label %42

42:                                               ; preds = %28, %27, %17
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__iwl_trans_pcie_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
