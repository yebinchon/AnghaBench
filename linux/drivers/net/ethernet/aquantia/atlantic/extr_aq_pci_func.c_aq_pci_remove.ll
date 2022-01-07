; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_pci_func.c_aq_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_pci_func.c_aq_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.aq_nic_s = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@NETREG_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @aq_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aq_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.aq_nic_s*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.aq_nic_s* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.aq_nic_s* %5, %struct.aq_nic_s** %3, align 8
  %6 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %7 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %46

10:                                               ; preds = %1
  %11 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %12 = call i32 @aq_clear_rxnfc_all_rules(%struct.aq_nic_s* %11)
  %13 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %14 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NETREG_REGISTERED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %22 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @unregister_netdev(%struct.TYPE_4__* %23)
  br label %25

25:                                               ; preds = %20, %10
  %26 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %27 = call i32 @aq_nic_free_vectors(%struct.aq_nic_s* %26)
  %28 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %29 = call i32 @aq_pci_free_irq_vectors(%struct.aq_nic_s* %28)
  %30 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %31 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @iounmap(i32 %34)
  %36 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %37 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @kfree(%struct.TYPE_5__* %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = call i32 @pci_release_regions(%struct.pci_dev* %40)
  %42 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %43 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @free_netdev(%struct.TYPE_4__* %44)
  br label %46

46:                                               ; preds = %25, %1
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = call i32 @pci_disable_device(%struct.pci_dev* %47)
  ret void
}

declare dso_local %struct.aq_nic_s* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @aq_clear_rxnfc_all_rules(%struct.aq_nic_s*) #1

declare dso_local i32 @unregister_netdev(%struct.TYPE_4__*) #1

declare dso_local i32 @aq_nic_free_vectors(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_pci_free_irq_vectors(%struct.aq_nic_s*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
