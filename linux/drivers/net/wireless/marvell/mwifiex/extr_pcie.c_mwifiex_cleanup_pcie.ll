; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_cleanup_pcie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_cleanup_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i32, i32, i32, %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i32, i32 }
%struct.pci_dev = type { i32 }

@FIRMWARE_READY_PCIE = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Clearing driver ready signature\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to write driver not-ready signature\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_cleanup_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_cleanup_pcie(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.pcie_service_card*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = load %struct.pcie_service_card*, %struct.pcie_service_card** %9, align 8
  store %struct.pcie_service_card* %10, %struct.pcie_service_card** %3, align 8
  %11 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %12 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %11, i32 0, i32 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %15 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %16, align 8
  store %struct.mwifiex_pcie_card_reg* %17, %struct.mwifiex_pcie_card_reg** %5, align 8
  %18 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %19 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %18, i32 0, i32 2
  %20 = call i32 @cancel_work_sync(i32* %19)
  %21 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %22 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %23 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mwifiex_read_reg(%struct.mwifiex_adapter* %21, i32 %24, i64* %7)
  store i32 %25, i32* %6, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @FIRMWARE_READY_PCIE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %1
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %31 = load i32, i32* @INFO, align 4
  %32 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %30, i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %34 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %35 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %33, i32 %36, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %41 = load i32, i32* @ERROR, align 4
  %42 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %40, i32 %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %29
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = call i32 @pci_disable_device(%struct.pci_dev* %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %49 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pci_iounmap(%struct.pci_dev* %47, i32 %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %54 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pci_iounmap(%struct.pci_dev* %52, i32 %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i32 @pci_release_region(%struct.pci_dev* %57, i32 2)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = call i32 @pci_release_region(%struct.pci_dev* %59, i32 0)
  %61 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %62 = call i32 @mwifiex_pcie_free_buffers(%struct.mwifiex_adapter* %61)
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i64*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i64 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @mwifiex_pcie_free_buffers(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
