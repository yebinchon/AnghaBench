; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_phy_to_ps_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_phy_to_ps_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32, i32, %struct.atl1c_adapter* }
%struct.atl1c_adapter = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@LPA_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@LPA_10HALF = common dso_local global i32 0, align 4
@LPA_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@LPA_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"phy autoneg failed\0A\00", align 1
@AT_SUSPEND_LINK_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"get speed and duplex failed\0A\00", align 1
@SPEED_10 = common dso_local global i32 0, align 4
@HALF_DUPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1c_phy_to_ps_link(%struct.atl1c_hw* %0) #0 {
  %2 = alloca %struct.atl1c_hw*, align 8
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %2, align 8
  %13 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %14 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %13, i32 0, i32 2
  %15 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %14, align 8
  store %struct.atl1c_adapter* %15, %struct.atl1c_adapter** %3, align 8
  %16 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %16, i32 0, i32 2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %19 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @SPEED_0, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @FULL_DUPLEX, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %23 = load i32, i32* @MII_BMSR, align 4
  %24 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %22, i32 %23, i32* %8)
  %25 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %26 = load i32, i32* @MII_BMSR, align 4
  %27 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %25, i32 %26, i32* %8)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @BMSR_LSTATUS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %120

32:                                               ; preds = %1
  %33 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %34 = load i32, i32* @MII_LPA, align 4
  %35 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %33, i32 %34, i32* %9)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @LPA_10FULL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  store i32 %41, i32* %6, align 4
  br label %66

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @LPA_10HALF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  store i32 %48, i32* %6, align 4
  br label %65

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @LPA_100HALF, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  store i32 %55, i32* %6, align 4
  br label %64

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @LPA_100FULL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %56
  br label %64

64:                                               ; preds = %63, %54
  br label %65

65:                                               ; preds = %64, %47
  br label %66

66:                                               ; preds = %65, %40
  %67 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %68 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %7, align 4
  %70 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %71 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %74 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %76 = call i64 @atl1c_restart_autoneg(%struct.atl1c_hw* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = call i32 @dev_dbg(i32* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %66
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %85 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %119

88:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %115, %88
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @AT_SUSPEND_LINK_TIMEOUT, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %118

93:                                               ; preds = %89
  %94 = call i32 @mdelay(i32 100)
  %95 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %96 = load i32, i32* @MII_BMSR, align 4
  %97 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %95, i32 %96, i32* %8)
  %98 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %99 = load i32, i32* @MII_BMSR, align 4
  %100 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %98, i32 %99, i32* %8)
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @BMSR_LSTATUS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %93
  %106 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %107 = call i64 @atl1c_get_speed_and_duplex(%struct.atl1c_hw* %106, i32* %10, i32* %11)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 0
  %112 = call i32 @dev_dbg(i32* %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %109, %105
  br label %118

114:                                              ; preds = %93
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %89

118:                                              ; preds = %113, %89
  br label %119

119:                                              ; preds = %118, %82
  br label %123

120:                                              ; preds = %1
  %121 = load i32, i32* @SPEED_10, align 4
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* @HALF_DUPLEX, align 4
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %120, %119
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %126 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @atl1c_read_phy_reg(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i64 @atl1c_restart_autoneg(%struct.atl1c_hw*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @atl1c_get_speed_and_duplex(%struct.atl1c_hw*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
