; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_check_invariants.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_check_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@REG_TX_FIFO_SIZE = common dso_local global i64 0, align 8
@RX_FIFO_SIZE = common dso_local global i32 0, align 4
@CAS_PHY_SERDES = common dso_local global i32 0, align 4
@CAS_FLAG_1000MB_CAP = common dso_local global i32 0, align 4
@REG_MIF_CFG = common dso_local global i64 0, align 8
@MIF_CFG_MDIO_1 = common dso_local global i32 0, align 4
@CAS_PHY_MII_MDIO1 = common dso_local global i32 0, align 4
@MIF_CFG_MDIO_0 = common dso_local global i32 0, align 4
@CAS_PHY_MII_MDIO0 = common dso_local global i32 0, align 4
@PCS_DATAPATH_MODE_MII = common dso_local global i32 0, align 4
@REG_PCS_DATAPATH_MODE = common dso_local global i64 0, align 8
@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MII phy did not respond [%08x]\0A\00", align 1
@REG_MIF_STATE_MACHINE = common dso_local global i64 0, align 8
@MII_BMSR = common dso_local global i32 0, align 4
@CAS_BMSR_1000_EXTEND = common dso_local global i32 0, align 4
@CAS_MII_1000_EXTEND = common dso_local global i32 0, align 4
@CAS_JUMBO_PAGE_SHIFT = common dso_local global i64 0, align 8
@CAS_MAX_MTU = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas*)* @cas_check_invariants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_check_invariants(%struct.cas* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cas*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %3, align 8
  %9 = load %struct.cas*, %struct.cas** %3, align 8
  %10 = getelementptr inbounds %struct.cas, %struct.cas* %9, i32 0, i32 10
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.cas*, %struct.cas** %3, align 8
  %13 = getelementptr inbounds %struct.cas, %struct.cas* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load %struct.cas*, %struct.cas** %3, align 8
  %16 = getelementptr inbounds %struct.cas, %struct.cas* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %14, %17
  %19 = load %struct.cas*, %struct.cas** %3, align 8
  %20 = getelementptr inbounds %struct.cas, %struct.cas* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.cas*, %struct.cas** %3, align 8
  %22 = getelementptr inbounds %struct.cas, %struct.cas* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_TX_FIFO_SIZE, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  %27 = mul nsw i32 %26, 64
  %28 = load %struct.cas*, %struct.cas** %3, align 8
  %29 = getelementptr inbounds %struct.cas, %struct.cas* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @RX_FIFO_SIZE, align 4
  %31 = load %struct.cas*, %struct.cas** %3, align 8
  %32 = getelementptr inbounds %struct.cas, %struct.cas* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cas*, %struct.cas** %3, align 8
  %34 = load %struct.cas*, %struct.cas** %3, align 8
  %35 = getelementptr inbounds %struct.cas, %struct.cas* %34, i32 0, i32 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PCI_SLOT(i32 %41)
  %43 = call i32 @cas_get_vpd_info(%struct.cas* %33, i32 %38, i32 %42)
  %44 = load %struct.cas*, %struct.cas** %3, align 8
  %45 = getelementptr inbounds %struct.cas, %struct.cas* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.cas*, %struct.cas** %3, align 8
  %47 = getelementptr inbounds %struct.cas, %struct.cas* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CAS_PHY_SERDES, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %1
  %53 = load i32, i32* @CAS_FLAG_1000MB_CAP, align 4
  %54 = load %struct.cas*, %struct.cas** %3, align 8
  %55 = getelementptr inbounds %struct.cas, %struct.cas* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  store i32 0, i32* %2, align 4
  br label %158

58:                                               ; preds = %1
  %59 = load %struct.cas*, %struct.cas** %3, align 8
  %60 = getelementptr inbounds %struct.cas, %struct.cas* %59, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @REG_MIF_CFG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @readl(i64 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @MIF_CFG_MDIO_1, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load i32, i32* @CAS_PHY_MII_MDIO1, align 4
  %71 = load %struct.cas*, %struct.cas** %3, align 8
  %72 = getelementptr inbounds %struct.cas, %struct.cas* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  br label %83

73:                                               ; preds = %58
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @MIF_CFG_MDIO_0, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @CAS_PHY_MII_MDIO0, align 4
  %80 = load %struct.cas*, %struct.cas** %3, align 8
  %81 = getelementptr inbounds %struct.cas, %struct.cas* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %73
  br label %83

83:                                               ; preds = %82, %69
  %84 = load %struct.cas*, %struct.cas** %3, align 8
  %85 = call i32 @cas_mif_poll(%struct.cas* %84, i32 0)
  %86 = load i32, i32* @PCS_DATAPATH_MODE_MII, align 4
  %87 = load %struct.cas*, %struct.cas** %3, align 8
  %88 = getelementptr inbounds %struct.cas, %struct.cas* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @REG_PCS_DATAPATH_MODE, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %127, %83
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 32
  br i1 %95, label %96, label %130

96:                                               ; preds = %93
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %123, %96
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 3
  br i1 %99, label %100, label %126

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.cas*, %struct.cas** %3, align 8
  %103 = getelementptr inbounds %struct.cas, %struct.cas* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.cas*, %struct.cas** %3, align 8
  %105 = load i32, i32* @MII_PHYSID1, align 4
  %106 = call i32 @cas_phy_read(%struct.cas* %104, i32 %105)
  %107 = shl i32 %106, 16
  store i32 %107, i32* %7, align 4
  %108 = load %struct.cas*, %struct.cas** %3, align 8
  %109 = load i32, i32* @MII_PHYSID2, align 4
  %110 = call i32 @cas_phy_read(%struct.cas* %108, i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %100
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.cas*, %struct.cas** %3, align 8
  %121 = getelementptr inbounds %struct.cas, %struct.cas* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  br label %138

122:                                              ; preds = %115, %100
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %97

126:                                              ; preds = %97
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %93

130:                                              ; preds = %93
  %131 = load %struct.cas*, %struct.cas** %3, align 8
  %132 = getelementptr inbounds %struct.cas, %struct.cas* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @REG_MIF_STATE_MACHINE, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @readl(i64 %135)
  %137 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %136)
  store i32 -1, i32* %2, align 4
  br label %158

138:                                              ; preds = %118
  %139 = load %struct.cas*, %struct.cas** %3, align 8
  %140 = load i32, i32* @MII_BMSR, align 4
  %141 = call i32 @cas_phy_read(%struct.cas* %139, i32 %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @CAS_BMSR_1000_EXTEND, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %138
  %147 = load %struct.cas*, %struct.cas** %3, align 8
  %148 = load i32, i32* @CAS_MII_1000_EXTEND, align 4
  %149 = call i32 @cas_phy_read(%struct.cas* %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i32, i32* @CAS_FLAG_1000MB_CAP, align 4
  %153 = load %struct.cas*, %struct.cas** %3, align 8
  %154 = getelementptr inbounds %struct.cas, %struct.cas* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %146, %138
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %130, %52
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cas_get_vpd_info(%struct.cas*, i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @cas_mif_poll(%struct.cas*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cas_phy_read(%struct.cas*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
