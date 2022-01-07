; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83tc811.c_dp83811_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83tc811.c_dp83811_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.net_device* }
%struct.net_device = type { i64 }
%struct.ethtool_wolinfo = type { i32, i32* }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DP83811_DEVADDR = common dso_local global i32 0, align 4
@MII_DP83811_WOL_DA1 = common dso_local global i32 0, align 4
@MII_DP83811_WOL_DA2 = common dso_local global i32 0, align 4
@MII_DP83811_WOL_DA3 = common dso_local global i32 0, align 4
@MII_DP83811_WOL_CFG = common dso_local global i32 0, align 4
@DP83811_WOL_MAGIC_EN = common dso_local global i32 0, align 4
@MII_DP83811_RXSOP1 = common dso_local global i32 0, align 4
@MII_DP83811_RXSOP2 = common dso_local global i32 0, align 4
@MII_DP83811_RXSOP3 = common dso_local global i32 0, align 4
@DP83811_WOL_SECURE_ON = common dso_local global i32 0, align 4
@DP83811_WOL_EN = common dso_local global i32 0, align 4
@DP83811_WOL_INDICATION_SEL = common dso_local global i32 0, align 4
@DP83811_WOL_CLR_INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.ethtool_wolinfo*)* @dp83811_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp83811_set_wol(%struct.phy_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @WAKE_MAGIC, align 4
  %16 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %164

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @is_valid_ether_addr(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %171

31:                                               ; preds = %20
  %32 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %33 = load i32, i32* @DP83811_DEVADDR, align 4
  %34 = load i32, i32* @MII_DP83811_WOL_DA1, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %38, %41
  %43 = call i32 @phy_write_mmd(%struct.phy_device* %32, i32 %33, i32 %34, i32 %42)
  %44 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %45 = load i32, i32* @DP83811_DEVADDR, align 4
  %46 = load i32, i32* @MII_DP83811_WOL_DA2, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %50, %53
  %55 = call i32 @phy_write_mmd(%struct.phy_device* %44, i32 %45, i32 %46, i32 %54)
  %56 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %57 = load i32, i32* @DP83811_DEVADDR, align 4
  %58 = load i32, i32* @MII_DP83811_WOL_DA3, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 8
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %62, %65
  %67 = call i32 @phy_write_mmd(%struct.phy_device* %56, i32 %57, i32 %58, i32 %66)
  %68 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %69 = load i32, i32* @DP83811_DEVADDR, align 4
  %70 = load i32, i32* @MII_DP83811_WOL_CFG, align 4
  %71 = call i32 @phy_read_mmd(%struct.phy_device* %68, i32 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @WAKE_MAGIC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %31
  %79 = load i32, i32* @DP83811_WOL_MAGIC_EN, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %87

82:                                               ; preds = %31
  %83 = load i32, i32* @DP83811_WOL_MAGIC_EN, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %82, %78
  %88 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %146

94:                                               ; preds = %87
  %95 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %96 = load i32, i32* @DP83811_DEVADDR, align 4
  %97 = load i32, i32* @MII_DP83811_RXSOP1, align 4
  %98 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 8
  %104 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %103, %108
  %110 = call i32 @phy_write_mmd(%struct.phy_device* %95, i32 %96, i32 %97, i32 %109)
  %111 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %112 = load i32, i32* @DP83811_DEVADDR, align 4
  %113 = load i32, i32* @MII_DP83811_RXSOP2, align 4
  %114 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %115 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 8
  %120 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %119, %124
  %126 = call i32 @phy_write_mmd(%struct.phy_device* %111, i32 %112, i32 %113, i32 %125)
  %127 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %128 = load i32, i32* @DP83811_DEVADDR, align 4
  %129 = load i32, i32* @MII_DP83811_RXSOP3, align 4
  %130 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %131 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 5
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 8
  %136 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %137 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %135, %140
  %142 = call i32 @phy_write_mmd(%struct.phy_device* %127, i32 %128, i32 %129, i32 %141)
  %143 = load i32, i32* @DP83811_WOL_SECURE_ON, align 4
  %144 = load i32, i32* %8, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %8, align 4
  br label %151

146:                                              ; preds = %87
  %147 = load i32, i32* @DP83811_WOL_SECURE_ON, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %8, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %146, %94
  %152 = load i32, i32* @DP83811_WOL_EN, align 4
  %153 = load i32, i32* @DP83811_WOL_INDICATION_SEL, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @DP83811_WOL_CLR_INDICATION, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* %8, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %8, align 4
  %159 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %160 = load i32, i32* @DP83811_DEVADDR, align 4
  %161 = load i32, i32* @MII_DP83811_WOL_CFG, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @phy_write_mmd(%struct.phy_device* %159, i32 %160, i32 %161, i32 %162)
  br label %170

164:                                              ; preds = %2
  %165 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %166 = load i32, i32* @DP83811_DEVADDR, align 4
  %167 = load i32, i32* @MII_DP83811_WOL_CFG, align 4
  %168 = load i32, i32* @DP83811_WOL_EN, align 4
  %169 = call i32 @phy_clear_bits_mmd(%struct.phy_device* %165, i32 %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %164, %151
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %28
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_clear_bits_mmd(%struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
