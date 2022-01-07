; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_loopback_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_loopback_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_DEV_ID_DH89XXCC_SGMII = common dso_local global i64 0, align 8
@E1000_DEV_ID_DH89XXCC_SERDES = common dso_local global i64 0, align 8
@E1000_DEV_ID_DH89XXCC_BACKPLANE = common dso_local global i64 0, align 8
@E1000_DEV_ID_DH89XXCC_SFP = common dso_local global i64 0, align 8
@E1000_DEV_ID_I354_SGMII = common dso_local global i64 0, align 8
@E1000_MPHY_ADDR_CTL = common dso_local global i32 0, align 4
@E1000_MPHY_ADDR_CTL_OFFSET_MASK = common dso_local global i32 0, align 4
@E1000_MPHY_PCS_CLK_REG_OFFSET = common dso_local global i32 0, align 4
@E1000_MPHY_DATA = common dso_local global i32 0, align 4
@E1000_MPHY_PCS_CLK_REG_DIGINELBEN = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_TCVR = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_MAC = common dso_local global i32 0, align 4
@PHY_CONTROL = common dso_local global i32 0, align 4
@MII_CR_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_loopback_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_loopback_cleanup(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %7 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %7, i32 0, i32 0
  store %struct.e1000_hw* %8, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @E1000_DEV_ID_DH89XXCC_SGMII, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %38, label %14

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @E1000_DEV_ID_DH89XXCC_SERDES, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @E1000_DEV_ID_DH89XXCC_BACKPLANE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @E1000_DEV_ID_DH89XXCC_SFP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @E1000_DEV_ID_I354_SGMII, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %32, %26, %20, %14, %1
  %39 = load i32, i32* @E1000_MPHY_ADDR_CTL, align 4
  %40 = call i32 @rd32(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @E1000_MPHY_ADDR_CTL_OFFSET_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @E1000_MPHY_PCS_CLK_REG_OFFSET, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @E1000_MPHY_ADDR_CTL, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @wr32(i32 %46, i32 %47)
  %49 = load i32, i32* @E1000_MPHY_DATA, align 4
  %50 = call i32 @rd32(i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @E1000_MPHY_PCS_CLK_REG_DIGINELBEN, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @E1000_MPHY_DATA, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @wr32(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %38, %32
  %59 = load i32, i32* @E1000_RCTL, align 4
  %60 = call i32 @rd32(i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @E1000_RCTL_LBM_TCVR, align 4
  %62 = load i32, i32* @E1000_RCTL_LBM_MAC, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @E1000_RCTL, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @wr32(i32 %67, i32 %68)
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = load i32, i32* @PHY_CONTROL, align 4
  %75 = call i32 @igb_read_phy_reg(%struct.e1000_hw* %73, i32 %74, i32* %5)
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @MII_CR_LOOPBACK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %58
  %81 = load i32, i32* @MII_CR_LOOPBACK, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %86 = load i32, i32* @PHY_CONTROL, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %85, i32 %86, i32 %87)
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = call i32 @igb_phy_sw_reset(%struct.e1000_hw* %89)
  br label %91

91:                                               ; preds = %80, %58
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @igb_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @igb_phy_sw_reset(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
