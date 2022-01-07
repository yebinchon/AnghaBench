; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_mdio.c_stmmac_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_mdio.c_stmmac_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.stmmac_priv = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@MII_BUSY = common dso_local global i32 0, align 4
@MII_GMAC4_WRITE = common dso_local global i32 0, align 4
@MII_ADDR_C45 = common dso_local global i32 0, align 4
@MII_GMAC4_C45E = common dso_local global i32 0, align 4
@MII_DEVADDR_C45_SHIFT = common dso_local global i32 0, align 4
@MII_REGADDR_C45_MASK = common dso_local global i32 0, align 4
@MII_GMAC4_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@MII_WRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @stmmac_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.stmmac_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %18 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %10, align 8
  %20 = load %struct.net_device*, %struct.net_device** %10, align 8
  %21 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %20)
  store %struct.stmmac_priv* %21, %struct.stmmac_priv** %11, align 8
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %23 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %29 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* @MII_BUSY, align 4
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %38 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %36, %42
  %44 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %45 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %43, %49
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %55 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %53, %59
  %61 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %62 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %60, %66
  %68 = load i32, i32* %14, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %14, align 4
  %70 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %71 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %74 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %72, %78
  %80 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %81 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %79, %85
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %90 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %89, i32 0, i32 3
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %143

95:                                               ; preds = %4
  %96 = load i32, i32* @MII_GMAC4_WRITE, align 4
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @MII_ADDR_C45, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %142

103:                                              ; preds = %95
  %104 = load i32, i32* @MII_GMAC4_C45E, align 4
  %105 = load i32, i32* %14, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %14, align 4
  %107 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %108 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %14, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @MII_DEVADDR_C45_SHIFT, align 4
  %118 = ashr i32 %116, %117
  %119 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %120 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %119, i32 0, i32 2
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %118, %124
  %126 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %127 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %126, i32 0, i32 2
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %125, %131
  %133 = load i32, i32* %14, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @MII_REGADDR_C45_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* @MII_GMAC4_REG_ADDR_SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = load i32, i32* %15, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %15, align 4
  br label %142

142:                                              ; preds = %103, %95
  br label %147

143:                                              ; preds = %4
  %144 = load i32, i32* @MII_WRITE, align 4
  %145 = load i32, i32* %14, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %14, align 4
  br label %147

147:                                              ; preds = %143, %142
  %148 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %149 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = zext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* @MII_BUSY, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i32 @readl_poll_timeout(i64 %153, i32 %154, i32 %160, i32 100, i32 10000)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %147
  %164 = load i32, i32* @EBUSY, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %5, align 4
  br label %197

166:                                              ; preds = %147
  %167 = load i32, i32* %15, align 4
  %168 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %169 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = zext i32 %171 to i64
  %173 = add nsw i64 %170, %172
  %174 = call i32 @writel(i32 %167, i64 %173)
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %177 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = zext i32 %179 to i64
  %181 = add nsw i64 %178, %180
  %182 = call i32 @writel(i32 %175, i64 %181)
  %183 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %184 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %12, align 4
  %187 = zext i32 %186 to i64
  %188 = add nsw i64 %185, %187
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* @MII_BUSY, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = call i32 @readl_poll_timeout(i64 %188, i32 %189, i32 %195, i32 100, i32 10000)
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %166, %163
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
