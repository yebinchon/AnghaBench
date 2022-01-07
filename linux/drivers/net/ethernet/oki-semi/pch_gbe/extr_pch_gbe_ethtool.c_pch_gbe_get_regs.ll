; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.pch_gbe_adapter = type { %struct.pch_gbe_hw, %struct.pci_dev* }
%struct.pch_gbe_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32, i64 }

@PCH_GBE_MAC_REGS_LEN = common dso_local global i64 0, align 8
@PCH_GBE_PHY_REGS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @pch_gbe_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pch_gbe_adapter*, align 8
  %8 = alloca %struct.pch_gbe_hw*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.pch_gbe_adapter* %14, %struct.pch_gbe_adapter** %7, align 8
  %15 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %15, i32 0, i32 0
  store %struct.pch_gbe_hw* %16, %struct.pch_gbe_hw** %8, align 8
  %17 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %17, i32 0, i32 1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 16
  %27 = or i32 16777216, %26
  %28 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %27, %30
  %32 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i64 0, i64* %11, align 8
  br label %34

34:                                               ; preds = %48, %3
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @PCH_GBE_MAC_REGS_LEN, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %8, align 8
  %40 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = call i32 @ioread32(i32* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  br label %48

48:                                               ; preds = %38
  %49 = load i64, i64* %11, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %11, align 8
  br label %34

51:                                               ; preds = %34
  store i64 0, i64* %11, align 8
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @PCH_GBE_PHY_REGS_LEN, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %58 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %57, i32 0, i32 0
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw* %58, i64 %59, i64* %12)
  %61 = load i64, i64* %12, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  br label %65

65:                                               ; preds = %56
  %66 = load i64, i64* %11, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %52

68:                                               ; preds = %52
  ret void
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
