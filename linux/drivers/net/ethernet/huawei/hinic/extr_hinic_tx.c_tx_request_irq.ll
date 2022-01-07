; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_tx_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_tx_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_txq = type { i32, %struct.hinic_sq*, i32 }
%struct.hinic_sq = type { i32, i32 }
%struct.hinic_dev = type { %struct.hinic_hwdev*, i32 }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@TX_IRQ_NO_PENDING = common dso_local global i32 0, align 4
@TX_IRQ_NO_COALESC = common dso_local global i32 0, align 4
@TX_IRQ_NO_LLI_TIMER = common dso_local global i32 0, align 4
@TX_IRQ_NO_CREDIT = common dso_local global i32 0, align 4
@TX_IRQ_NO_RESEND_TIMER = common dso_local global i32 0, align 4
@tx_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to request Tx irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_txq*)* @tx_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_request_irq(%struct.hinic_txq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_txq*, align 8
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca %struct.hinic_hwdev*, align 8
  %6 = alloca %struct.hinic_hwif*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.hinic_sq*, align 8
  %9 = alloca i32, align 4
  store %struct.hinic_txq* %0, %struct.hinic_txq** %3, align 8
  %10 = load %struct.hinic_txq*, %struct.hinic_txq** %3, align 8
  %11 = getelementptr inbounds %struct.hinic_txq, %struct.hinic_txq* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.hinic_dev* @netdev_priv(i32 %12)
  store %struct.hinic_dev* %13, %struct.hinic_dev** %4, align 8
  %14 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %14, i32 0, i32 0
  %16 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %15, align 8
  store %struct.hinic_hwdev* %16, %struct.hinic_hwdev** %5, align 8
  %17 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  %18 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %17, i32 0, i32 0
  %19 = load %struct.hinic_hwif*, %struct.hinic_hwif** %18, align 8
  store %struct.hinic_hwif* %19, %struct.hinic_hwif** %6, align 8
  %20 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %21 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %20, i32 0, i32 0
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %7, align 8
  %23 = load %struct.hinic_txq*, %struct.hinic_txq** %3, align 8
  %24 = getelementptr inbounds %struct.hinic_txq, %struct.hinic_txq* %23, i32 0, i32 1
  %25 = load %struct.hinic_sq*, %struct.hinic_sq** %24, align 8
  store %struct.hinic_sq* %25, %struct.hinic_sq** %8, align 8
  %26 = load %struct.hinic_txq*, %struct.hinic_txq** %3, align 8
  %27 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %28 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @tx_napi_add(%struct.hinic_txq* %26, i32 %29)
  %31 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %32 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %31, i32 0, i32 0
  %33 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %32, align 8
  %34 = load %struct.hinic_sq*, %struct.hinic_sq** %8, align 8
  %35 = getelementptr inbounds %struct.hinic_sq, %struct.hinic_sq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TX_IRQ_NO_PENDING, align 4
  %38 = load i32, i32* @TX_IRQ_NO_COALESC, align 4
  %39 = load i32, i32* @TX_IRQ_NO_LLI_TIMER, align 4
  %40 = load i32, i32* @TX_IRQ_NO_CREDIT, align 4
  %41 = load i32, i32* @TX_IRQ_NO_RESEND_TIMER, align 4
  %42 = call i32 @hinic_hwdev_msix_set(%struct.hinic_hwdev* %33, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.hinic_sq*, %struct.hinic_sq** %8, align 8
  %44 = getelementptr inbounds %struct.hinic_sq, %struct.hinic_sq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @tx_irq, align 4
  %47 = load %struct.hinic_txq*, %struct.hinic_txq** %3, align 8
  %48 = getelementptr inbounds %struct.hinic_txq, %struct.hinic_txq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hinic_txq*, %struct.hinic_txq** %3, align 8
  %51 = call i32 @request_irq(i32 %45, i32 %46, i32 0, i32 %49, %struct.hinic_txq* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %1
  %55 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.hinic_txq*, %struct.hinic_txq** %3, align 8
  %59 = call i32 @tx_napi_del(%struct.hinic_txq* %58)
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.hinic_dev* @netdev_priv(i32) #1

declare dso_local i32 @tx_napi_add(%struct.hinic_txq*, i32) #1

declare dso_local i32 @hinic_hwdev_msix_set(%struct.hinic_hwdev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.hinic_txq*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @tx_napi_del(%struct.hinic_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
