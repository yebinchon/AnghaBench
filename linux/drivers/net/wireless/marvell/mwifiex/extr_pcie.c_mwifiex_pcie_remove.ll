; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pcie_service_card = type { %struct.TYPE_2__, %struct.mwifiex_adapter*, i32 }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i32 }
%struct.mwifiex_adapter = type { i32, i32 }
%struct.mwifiex_private = type { i32 }

@FIRMWARE_READY_PCIE = common dso_local global i32 0, align 4
@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4
@MWIFIEX_FUNC_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mwifiex_pcie_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_pcie_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pcie_service_card*, align 8
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call %struct.pcie_service_card* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.pcie_service_card* %10, %struct.pcie_service_card** %3, align 8
  %11 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %12 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %11, i32 0, i32 2
  %13 = call i32 @wait_for_completion(i32* %12)
  %14 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %15 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %14, i32 0, i32 1
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  store %struct.mwifiex_adapter* %16, %struct.mwifiex_adapter** %4, align 8
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %18 = icmp ne %struct.mwifiex_adapter* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %1
  br label %62

25:                                               ; preds = %19
  %26 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %27 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %28, align 8
  store %struct.mwifiex_pcie_card_reg* %29, %struct.mwifiex_pcie_card_reg** %6, align 8
  %30 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %6, align 8
  %31 = icmp ne %struct.mwifiex_pcie_card_reg* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %34 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %6, align 8
  %35 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mwifiex_read_reg(%struct.mwifiex_adapter* %33, i32 %36, i32* %7)
  store i32 %37, i32* %8, align 4
  br label %39

38:                                               ; preds = %25
  store i32 -1, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FIRMWARE_READY_PCIE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %43
  %49 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %50 = call i32 @mwifiex_deauthenticate_all(%struct.mwifiex_adapter* %49)
  %51 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %52 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %53 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %51, i32 %52)
  store %struct.mwifiex_private* %53, %struct.mwifiex_private** %5, align 8
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %55 = call i32 @mwifiex_disable_auto_ds(%struct.mwifiex_private* %54)
  %56 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %57 = load i32, i32* @MWIFIEX_FUNC_SHUTDOWN, align 4
  %58 = call i32 @mwifiex_init_shutdown_fw(%struct.mwifiex_private* %56, i32 %57)
  br label %59

59:                                               ; preds = %48, %43, %39
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %61 = call i32 @mwifiex_remove_card(%struct.mwifiex_adapter* %60)
  br label %62

62:                                               ; preds = %59, %24
  ret void
}

declare dso_local %struct.pcie_service_card* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i32*) #1

declare dso_local i32 @mwifiex_deauthenticate_all(%struct.mwifiex_adapter*) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @mwifiex_disable_auto_ds(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_init_shutdown_fw(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @mwifiex_remove_card(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
