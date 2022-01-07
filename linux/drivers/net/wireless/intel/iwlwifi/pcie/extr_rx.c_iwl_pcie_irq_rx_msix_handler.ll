; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_irq_rx_msix_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_irq_rx_msix_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msix_entry = type { i32 }
%struct.iwl_trans_pcie = type { %struct.iwl_trans* }
%struct.iwl_trans = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_irq_rx_msix_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.msix_entry*, align 8
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca %struct.iwl_trans*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.msix_entry*
  store %struct.msix_entry* %10, %struct.msix_entry** %6, align 8
  %11 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %12 = call %struct.iwl_trans_pcie* @iwl_pcie_get_trans_pcie(%struct.msix_entry* %11)
  store %struct.iwl_trans_pcie* %12, %struct.iwl_trans_pcie** %7, align 8
  %13 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %14 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %13, i32 0, i32 0
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %14, align 8
  store %struct.iwl_trans* %15, %struct.iwl_trans** %8, align 8
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %17 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %20 = call i32 @trace_iwlwifi_dev_irq_msix(i32 %18, %struct.msix_entry* %19, i32 0, i32 0, i32 0)
  %21 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %22 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %51

33:                                               ; preds = %2
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %35 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %34, i32 0, i32 0
  %36 = call i32 @lock_map_acquire(i32* %35)
  %37 = call i32 (...) @local_bh_disable()
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %39 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %40 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @iwl_pcie_rx_handle(%struct.iwl_trans* %38, i32 %41)
  %43 = call i32 (...) @local_bh_enable()
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %45 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %46 = call i32 @iwl_pcie_clear_irq(%struct.iwl_trans* %44, %struct.msix_entry* %45)
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %48 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %47, i32 0, i32 0
  %49 = call i32 @lock_map_release(i32* %48)
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %33, %31
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.iwl_trans_pcie* @iwl_pcie_get_trans_pcie(%struct.msix_entry*) #1

declare dso_local i32 @trace_iwlwifi_dev_irq_msix(i32, %struct.msix_entry*, i32, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @lock_map_acquire(i32*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @iwl_pcie_rx_handle(%struct.iwl_trans*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @iwl_pcie_clear_irq(%struct.iwl_trans*, %struct.msix_entry*) #1

declare dso_local i32 @lock_map_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
