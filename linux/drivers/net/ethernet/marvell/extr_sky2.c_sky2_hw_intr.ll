; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_hw_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_hw_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@B0_HWE_ISRC = common dso_local global i64 0, align 8
@B0_HWE_IMSK = common dso_local global i64 0, align 8
@Y2_IS_TIST_OV = common dso_local global i32 0, align 4
@GMAC_TI_ST_CTRL = common dso_local global i32 0, align 4
@GMT_ST_CLR_IRQ = common dso_local global i32 0, align 4
@Y2_IS_MST_ERR = common dso_local global i32 0, align 4
@Y2_IS_IRQ_STAT = common dso_local global i32 0, align 4
@B2_TST_CTRL1 = common dso_local global i32 0, align 4
@TST_CFG_WRITE_ON = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PCI hardware error (0x%x)\0A\00", align 1
@PCI_STATUS_ERROR_BITS = common dso_local global i32 0, align 4
@TST_CFG_WRITE_OFF = common dso_local global i32 0, align 4
@Y2_IS_PCI_EXP = common dso_local global i32 0, align 4
@Y2_CFG_AER = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_STATUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"PCI Express error (0x%x)\0A\00", align 1
@Y2_HWE_L1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*)* @sky2_hw_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_hw_intr(%struct.sky2_hw* %0) #0 {
  %2 = alloca %struct.sky2_hw*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %2, align 8
  %8 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %9 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %12 = load i64, i64* @B0_HWE_ISRC, align 8
  %13 = call i32 @sky2_read32(%struct.sky2_hw* %11, i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %15 = load i64, i64* @B0_HWE_IMSK, align 8
  %16 = call i32 @sky2_read32(%struct.sky2_hw* %14, i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @Y2_IS_TIST_OV, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %26 = load i32, i32* @GMAC_TI_ST_CTRL, align 4
  %27 = load i32, i32* @GMT_ST_CLR_IRQ, align 4
  %28 = call i32 @sky2_write8(%struct.sky2_hw* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @Y2_IS_MST_ERR, align 4
  %32 = load i32, i32* @Y2_IS_IRQ_STAT, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %29
  %37 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %38 = load i32, i32* @B2_TST_CTRL1, align 4
  %39 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %40 = call i32 @sky2_write8(%struct.sky2_hw* %37, i32 %38, i32 %39)
  %41 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %42 = load i32, i32* @PCI_STATUS, align 4
  %43 = call i32 @sky2_pci_read16(%struct.sky2_hw* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = call i64 (...) @net_ratelimit()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %36
  %52 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %53 = load i32, i32* @PCI_STATUS, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @PCI_STATUS_ERROR_BITS, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @sky2_pci_write16(%struct.sky2_hw* %52, i32 %53, i32 %56)
  %58 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %59 = load i32, i32* @B2_TST_CTRL1, align 4
  %60 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %61 = call i32 @sky2_write8(%struct.sky2_hw* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %51, %29
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @Y2_IS_PCI_EXP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %62
  %68 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %69 = load i32, i32* @B2_TST_CTRL1, align 4
  %70 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %71 = call i32 @sky2_write8(%struct.sky2_hw* %68, i32 %69, i32 %70)
  %72 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %73 = load i64, i64* @Y2_CFG_AER, align 8
  %74 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @sky2_read32(%struct.sky2_hw* %72, i64 %75)
  store i32 %76, i32* %7, align 4
  %77 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %78 = load i64, i64* @Y2_CFG_AER, align 8
  %79 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @sky2_write32(%struct.sky2_hw* %77, i64 %80, i32 -1)
  %82 = call i64 (...) @net_ratelimit()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %67
  %85 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %67
  %90 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %91 = load i64, i64* @Y2_CFG_AER, align 8
  %92 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @sky2_read32(%struct.sky2_hw* %90, i64 %93)
  %95 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %96 = load i32, i32* @B2_TST_CTRL1, align 4
  %97 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %98 = call i32 @sky2_write8(%struct.sky2_hw* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %62
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @Y2_HWE_L1_MASK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @sky2_hw_error(%struct.sky2_hw* %105, i32 0, i32 %106)
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32, i32* %4, align 4
  %110 = ashr i32 %109, 8
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @Y2_HWE_L1_MASK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @sky2_hw_error(%struct.sky2_hw* %116, i32 1, i32 %117)
  br label %119

119:                                              ; preds = %115, %108
  ret void
}

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i64) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_pci_read16(%struct.sky2_hw*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @sky2_pci_write16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i64, i32) #1

declare dso_local i32 @sky2_hw_error(%struct.sky2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
