; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_copper_link_setup_82580.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_copper_link_setup_82580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@e1000_phy_82580 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Error resetting the PHY.\0A\00", align 1
@I82580_CFG_REG = common dso_local global i32 0, align 4
@I82580_CFG_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@I82580_CFG_ENABLE_DOWNSHIFT = common dso_local global i32 0, align 4
@I82580_PHY_CTRL_2 = common dso_local global i32 0, align 4
@I82580_PHY_CTRL2_MDIX_CFG_MASK = common dso_local global i32 0, align 4
@I82580_PHY_CTRL2_MANUAL_MDIX = common dso_local global i32 0, align 4
@I82580_PHY_CTRL2_AUTO_MDI_MDIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_copper_link_setup_82580(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %3, align 8
  %8 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %106

13:                                               ; preds = %1
  %14 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_phy_82580, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %23, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.2*
  %27 = call i64 %24(%struct.e1000_hw.2* %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = call i32 @hw_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %106

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %13
  %34 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %36, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = bitcast %struct.e1000_hw* %38 to %struct.e1000_hw.1*
  %40 = load i32, i32* @I82580_CFG_REG, align 4
  %41 = call i64 %37(%struct.e1000_hw.1* %39, i32 %40, i32* %5)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %106

45:                                               ; preds = %33
  %46 = load i32, i32* @I82580_CFG_ASSERT_CRS_ON_TX, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @I82580_CFG_ENABLE_DOWNSHIFT, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %54, align 8
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = bitcast %struct.e1000_hw* %56 to %struct.e1000_hw.0*
  %58 = load i32, i32* @I82580_CFG_REG, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i64 %55(%struct.e1000_hw.0* %57, i32 %58, i32 %59)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  br label %106

64:                                               ; preds = %45
  %65 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %67, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = bitcast %struct.e1000_hw* %69 to %struct.e1000_hw.1*
  %71 = load i32, i32* @I82580_PHY_CTRL_2, align 4
  %72 = call i64 %68(%struct.e1000_hw.1* %70, i32 %71, i32* %5)
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* %4, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %106

76:                                               ; preds = %64
  %77 = load i32, i32* @I82580_PHY_CTRL2_MDIX_CFG_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %82 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %91 [
    i32 1, label %85
    i32 2, label %86
    i32 0, label %90
  ]

85:                                               ; preds = %76
  br label %95

86:                                               ; preds = %76
  %87 = load i32, i32* @I82580_PHY_CTRL2_MANUAL_MDIX, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %95

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %76, %90
  %92 = load i32, i32* @I82580_PHY_CTRL2_AUTO_MDI_MDIX, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %91, %86, %85
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %97 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %99, align 8
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %102 = bitcast %struct.e1000_hw* %101 to %struct.e1000_hw.0*
  %103 = load i32, i32* @I82580_PHY_CTRL_2, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i64 %100(%struct.e1000_hw.0* %102, i32 %103, i32 %104)
  store i64 %105, i64* %4, align 8
  br label %106

106:                                              ; preds = %95, %75, %63, %44, %30, %12
  %107 = load i64, i64* %4, align 8
  ret i64 %107
}

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
