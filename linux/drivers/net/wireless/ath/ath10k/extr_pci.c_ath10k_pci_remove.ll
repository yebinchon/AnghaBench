; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i32 }

@ATH10K_DBG_PCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pci remove\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ath10k_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_pci*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.ath10k* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.ath10k* %6, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = load i32, i32* @ATH10K_DBG_PCI, align 4
  %9 = call i32 @ath10k_dbg(%struct.ath10k* %7, i32 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %11 = icmp ne %struct.ath10k* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %14)
  store %struct.ath10k_pci* %15, %struct.ath10k_pci** %4, align 8
  %16 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %17 = icmp ne %struct.ath10k_pci* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %34

19:                                               ; preds = %13
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = call i32 @ath10k_core_unregister(%struct.ath10k* %20)
  %22 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %23 = call i32 @ath10k_pci_free_irq(%struct.ath10k* %22)
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = call i32 @ath10k_pci_deinit_irq(%struct.ath10k* %24)
  %26 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %27 = call i32 @ath10k_pci_release_resource(%struct.ath10k* %26)
  %28 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %29 = call i32 @ath10k_pci_sleep_sync(%struct.ath10k* %28)
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = call i32 @ath10k_pci_release(%struct.ath10k* %30)
  %32 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %33 = call i32 @ath10k_core_destroy(%struct.ath10k* %32)
  br label %34

34:                                               ; preds = %19, %18, %12
  ret void
}

declare dso_local %struct.ath10k* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_core_unregister(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_free_irq(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_deinit_irq(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_release_resource(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_sleep_sync(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_release(%struct.ath10k*) #1

declare dso_local i32 @ath10k_core_destroy(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
