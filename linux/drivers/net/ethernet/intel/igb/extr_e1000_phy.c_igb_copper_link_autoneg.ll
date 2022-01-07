; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_copper_link_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_copper_link_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_phy_info }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_phy_info = type { i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [45 x i8] c"Reconfiguring auto-neg advertisement params\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error Setting up Auto-Negotiation\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Restarting Auto-Neg\0A\00", align 1
@PHY_CONTROL = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@MII_CR_RESTART_AUTO_NEG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Error while waiting for autoneg to complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_copper_link_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_copper_link_autoneg(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %3, align 8
  %8 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %1
  %26 = call i32 @hw_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = call i64 @igb_phy_setup_autoneg(%struct.e1000_hw* %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @hw_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %81

33:                                               ; preds = %25
  %34 = call i32 @hw_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %37, align 8
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %40 = bitcast %struct.e1000_hw* %39 to %struct.e1000_hw.1*
  %41 = load i32, i32* @PHY_CONTROL, align 4
  %42 = call i64 %38(%struct.e1000_hw.1* %40, i32 %41, i32* %5)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %81

46:                                               ; preds = %33
  %47 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %48 = load i32, i32* @MII_CR_RESTART_AUTO_NEG, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %54, align 8
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = bitcast %struct.e1000_hw* %56 to %struct.e1000_hw.0*
  %58 = load i32, i32* @PHY_CONTROL, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i64 %55(%struct.e1000_hw.0* %57, i32 %58, i32 %59)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  br label %81

64:                                               ; preds = %46
  %65 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %71 = call i64 @igb_wait_autoneg(%struct.e1000_hw* %70)
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 @hw_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %81

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %64
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %79 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %74, %63, %45, %31
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i64 @igb_phy_setup_autoneg(%struct.e1000_hw*) #1

declare dso_local i64 @igb_wait_autoneg(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
