; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_reset_phy_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_reset_phy_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

@ixgbe_phy_unknown = common dso_local global i64 0, align 8
@ixgbe_phy_none = common dso_local global i64 0, align 8
@IXGBE_ERR_OVERTEMP = common dso_local global i64 0, align 8
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@MDIO_CTRL1_RESET = common dso_local global i32 0, align 4
@ixgbe_phy_x550em_ext_t = common dso_local global i64 0, align 8
@IXGBE_MDIO_TX_VENDOR_ALARMS_3 = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@IXGBE_MDIO_TX_VENDOR_ALARMS_3_RST_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"PHY reset polling failed to complete.\0A\00", align 1
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_reset_phy_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ixgbe_phy_unknown, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = call i64 @ixgbe_identify_phy_generic(%struct.ixgbe_hw* %14)
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ixgbe_phy_none, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19, %16
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %2, align 8
  br label %134

28:                                               ; preds = %19
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load i64, i64* @IXGBE_ERR_OVERTEMP, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %39, align 8
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = bitcast %struct.ixgbe_hw* %41 to %struct.ixgbe_hw.0*
  %43 = call i64 %40(%struct.ixgbe_hw.0* %42)
  %44 = icmp eq i64 %35, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i64 0, i64* %2, align 8
  br label %134

46:                                               ; preds = %34, %28
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = call i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i64 0, i64* %2, align 8
  br label %134

51:                                               ; preds = %46
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32 (%struct.ixgbe_hw.2*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32)** %55, align 8
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %58 = bitcast %struct.ixgbe_hw* %57 to %struct.ixgbe_hw.2*
  %59 = load i32, i32* @MDIO_CTRL1, align 4
  %60 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %61 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %62 = call i32 %56(%struct.ixgbe_hw.2* %58, i32 %59, i32 %60, i32 %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %121, %51
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 30
  br i1 %65, label %66, label %124

66:                                               ; preds = %63
  %67 = call i32 @msleep(i32 100)
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %69 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ixgbe_phy_x550em_ext_t, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %66
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %76 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %78, align 8
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %81 = bitcast %struct.ixgbe_hw* %80 to %struct.ixgbe_hw.1*
  %82 = load i32, i32* @IXGBE_MDIO_TX_VENDOR_ALARMS_3, align 4
  %83 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %84 = call i64 %79(%struct.ixgbe_hw.1* %81, i32 %82, i32 %83, i32* %5)
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i64, i64* %6, align 8
  store i64 %88, i64* %2, align 8
  br label %134

89:                                               ; preds = %74
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @IXGBE_MDIO_TX_VENDOR_ALARMS_3_RST_MASK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = call i32 @udelay(i32 2)
  br label %124

96:                                               ; preds = %89
  br label %120

97:                                               ; preds = %66
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %99 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %101, align 8
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %104 = bitcast %struct.ixgbe_hw* %103 to %struct.ixgbe_hw.1*
  %105 = load i32, i32* @MDIO_CTRL1, align 4
  %106 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %107 = call i64 %102(%struct.ixgbe_hw.1* %104, i32 %105, i32 %106, i32* %5)
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %97
  %111 = load i64, i64* %6, align 8
  store i64 %111, i64* %2, align 8
  br label %134

112:                                              ; preds = %97
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = call i32 @udelay(i32 2)
  br label %124

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %96
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %63

124:                                              ; preds = %117, %94, %63
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %131 = call i32 @hw_dbg(%struct.ixgbe_hw* %130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %132 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %132, i64* %2, align 8
  br label %134

133:                                              ; preds = %124
  store i64 0, i64* %2, align 8
  br label %134

134:                                              ; preds = %133, %129, %110, %87, %50, %45, %26
  %135 = load i64, i64* %2, align 8
  ret i64 %135
}

declare dso_local i64 @ixgbe_identify_phy_generic(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
