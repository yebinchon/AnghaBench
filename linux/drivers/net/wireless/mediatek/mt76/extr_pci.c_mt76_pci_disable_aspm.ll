; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_pci.c_mt76_pci_disable_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_pci.c_mt76_pci_disable_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_ASPMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"disabling ASPM %s %s\0A\00", align 1
@PCI_EXP_LNKCTL_ASPM_L0S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"L0s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PCI_EXP_LNKCTL_ASPM_L1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"L1\00", align 1
@CONFIG_PCIEASPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_pci_disable_aspm(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %14 = call i32 @pcie_capability_read_word(%struct.pci_dev* %12, i32 %13, i32* %4)
  %15 = load i32, i32* @PCI_EXP_LNKCTL_ASPMC, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = icmp ne %struct.pci_dev* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %23 = call i32 @pcie_capability_read_word(%struct.pci_dev* %21, i32 %22, i32* %5)
  %24 = load i32, i32* @PCI_EXP_LNKCTL_ASPMC, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = icmp ne %struct.pci_dev* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %30
  br label %76

37:                                               ; preds = %33, %27
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L0S, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L1, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %52 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %51)
  %53 = load i32, i32* @CONFIG_PCIEASPM, align 4
  %54 = call i64 @IS_ENABLED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %37
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @pci_disable_link_state(%struct.pci_dev* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %76

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %37
  %65 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %66 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @pcie_capability_clear_word(%struct.pci_dev* %65, i32 %66, i32 %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = icmp ne %struct.pci_dev* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %73 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @pcie_capability_clear_word(%struct.pci_dev* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %36, %62, %71, %64
  ret void
}

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pci_disable_link_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcie_capability_clear_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
