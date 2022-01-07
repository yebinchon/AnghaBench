; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_mdio.c_stmmac_xgmac2_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_mdio.c_stmmac_xgmac2_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.stmmac_priv = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@MII_XGMAC_BUSY = common dso_local global i32 0, align 4
@MII_ADDR_C45 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MII_XGMAC_SADDR = common dso_local global i32 0, align 4
@MII_XGMAC_READ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @stmmac_xgmac2_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_xgmac2_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.stmmac_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %17 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %8, align 8
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.stmmac_priv* %20, %struct.stmmac_priv** %9, align 8
  %21 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %22 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %28 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @MII_XGMAC_BUSY, align 4
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MII_ADDR_C45, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %139

41:                                               ; preds = %3
  %42 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @stmmac_xgmac2_c22_format(%struct.stmmac_priv* %42, i32 %43, i32 %44, i32* %13)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %4, align 4
  br label %139

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %53 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %56 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %54, %60
  %62 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %63 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %61, %67
  %69 = load i32, i32* %14, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* @MII_XGMAC_SADDR, align 4
  %72 = load i32, i32* @MII_XGMAC_READ, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %14, align 4
  %76 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %77 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @MII_XGMAC_BUSY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i64 @readl_poll_timeout(i64 %81, i32 %82, i32 %88, i32 100, i32 10000)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %51
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %139

94:                                               ; preds = %51
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %97 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = call i32 @writel(i32 %95, i64 %101)
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %105 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = zext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = call i32 @writel(i32 %103, i64 %109)
  %111 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %112 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = zext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @MII_XGMAC_BUSY, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i64 @readl_poll_timeout(i64 %116, i32 %117, i32 %123, i32 100, i32 10000)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %94
  %127 = load i32, i32* @EBUSY, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %139

129:                                              ; preds = %94
  %130 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %131 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = zext i32 %133 to i64
  %135 = add nsw i64 %132, %134
  %136 = call i32 @readl(i64 %135)
  %137 = call i32 @GENMASK(i32 15, i32 0)
  %138 = and i32 %136, %137
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %129, %126, %91, %48, %38
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_xgmac2_c22_format(%struct.stmmac_priv*, i32, i32, i32*) #1

declare dso_local i64 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
