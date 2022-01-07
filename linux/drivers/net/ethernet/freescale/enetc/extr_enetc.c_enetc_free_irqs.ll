; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_ndev_priv = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ENETC_BDR_INT_BASE_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_ndev_priv*)* @enetc_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_free_irqs(%struct.enetc_ndev_priv* %0) #0 {
  %2 = alloca %struct.enetc_ndev_priv*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.enetc_ndev_priv* %0, %struct.enetc_ndev_priv** %2, align 8
  %6 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %7 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %14 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load i64, i64* @ENETC_BDR_INT_BASE_IDX, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = call i32 @pci_irq_vector(%struct.pci_dev* %18, i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @irq_set_affinity_hint(i32 %24, i32* null)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %28 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @free_irq(i32 %26, i32 %33)
  br label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %11

38:                                               ; preds = %11
  ret void
}

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i64) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
