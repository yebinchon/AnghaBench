; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83tc811.c_dp83811_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83tc811.c_dp83811_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32* }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@DP83811_DEVADDR = common dso_local global i32 0, align 4
@MII_DP83811_WOL_CFG = common dso_local global i32 0, align 4
@DP83811_WOL_MAGIC_EN = common dso_local global i32 0, align 4
@DP83811_WOL_SECURE_ON = common dso_local global i32 0, align 4
@MII_DP83811_RXSOP1 = common dso_local global i32 0, align 4
@MII_DP83811_RXSOP2 = common dso_local global i32 0, align 4
@MII_DP83811_RXSOP3 = common dso_local global i32 0, align 4
@DP83811_WOL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*, %struct.ethtool_wolinfo*)* @dp83811_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dp83811_get_wol(%struct.phy_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %7 = load i32, i32* @WAKE_MAGIC, align 4
  %8 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = load i32, i32* @DP83811_DEVADDR, align 4
  %16 = load i32, i32* @MII_DP83811_WOL_CFG, align 4
  %17 = call i32 @phy_read_mmd(%struct.phy_device* %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DP83811_WOL_MAGIC_EN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @WAKE_MAGIC, align 4
  %24 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DP83811_WOL_SECURE_ON, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %87

33:                                               ; preds = %28
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = load i32, i32* @DP83811_DEVADDR, align 4
  %36 = load i32, i32* @MII_DP83811_RXSOP1, align 4
  %37 = call i32 @phy_read_mmd(%struct.phy_device* %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 8
  %46 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = load i32, i32* @DP83811_DEVADDR, align 4
  %52 = load i32, i32* @MII_DP83811_RXSOP2, align 4
  %53 = call i32 @phy_read_mmd(%struct.phy_device* %50, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 255
  %56 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 8
  %62 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %63 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %61, i32* %65, align 4
  %66 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %67 = load i32, i32* @DP83811_DEVADDR, align 4
  %68 = load i32, i32* @MII_DP83811_RXSOP3, align 4
  %69 = call i32 @phy_read_mmd(%struct.phy_device* %66, i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 255
  %72 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %5, align 4
  %77 = ashr i32 %76, 8
  %78 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %79 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %83 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %84 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %33, %28
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @DP83811_WOL_EN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %94 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %87
  ret void
}

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
