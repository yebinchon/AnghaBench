; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_mdio.c_stmmac_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_mdio.c_stmmac_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.stmmac_priv = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@MII_BUSY = common dso_local global i32 0, align 4
@MII_GMAC4_READ = common dso_local global i32 0, align 4
@MII_ADDR_C45 = common dso_local global i32 0, align 4
@MII_GMAC4_C45E = common dso_local global i32 0, align 4
@MII_DEVADDR_C45_SHIFT = common dso_local global i32 0, align 4
@MII_REGADDR_C45_MASK = common dso_local global i32 0, align 4
@MII_GMAC4_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MII_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @stmmac_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
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
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %16 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %18)
  store %struct.stmmac_priv* %19, %struct.stmmac_priv** %9, align 8
  %20 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %21 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %27 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @MII_BUSY, align 4
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %35 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %33, %39
  %41 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %42 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %40, %46
  %48 = load i32, i32* %12, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %52 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %50, %56
  %58 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %59 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %57, %63
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %68 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %71 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %69, %75
  %77 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %78 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %76, %82
  %84 = load i32, i32* %12, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %12, align 4
  %86 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %87 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %140

92:                                               ; preds = %3
  %93 = load i32, i32* @MII_GMAC4_READ, align 4
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @MII_ADDR_C45, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %139

100:                                              ; preds = %92
  %101 = load i32, i32* @MII_GMAC4_C45E, align 4
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %12, align 4
  %104 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %105 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %104, i32 0, i32 2
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %12, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @MII_DEVADDR_C45_SHIFT, align 4
  %115 = ashr i32 %113, %114
  %116 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %117 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %115, %121
  %123 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %124 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %122, %128
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @MII_REGADDR_C45_MASK, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @MII_GMAC4_REG_ADDR_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* %13, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %100, %92
  br label %140

140:                                              ; preds = %139, %3
  %141 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %142 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = zext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* @MII_BUSY, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i64 @readl_poll_timeout(i64 %146, i32 %147, i32 %153, i32 100, i32 10000)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %140
  %157 = load i32, i32* @EBUSY, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %206

159:                                              ; preds = %140
  %160 = load i32, i32* %13, align 4
  %161 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %162 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = zext i32 %164 to i64
  %166 = add nsw i64 %163, %165
  %167 = call i32 @writel(i32 %160, i64 %166)
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %170 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = zext i32 %172 to i64
  %174 = add nsw i64 %171, %173
  %175 = call i32 @writel(i32 %168, i64 %174)
  %176 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %177 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = zext i32 %179 to i64
  %181 = add nsw i64 %178, %180
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* @MII_BUSY, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = call i64 @readl_poll_timeout(i64 %181, i32 %182, i32 %188, i32 100, i32 10000)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %159
  %192 = load i32, i32* @EBUSY, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %4, align 4
  br label %206

194:                                              ; preds = %159
  %195 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %196 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = zext i32 %198 to i64
  %200 = add nsw i64 %197, %199
  %201 = call i64 @readl(i64 %200)
  %202 = trunc i64 %201 to i32
  %203 = load i32, i32* @MII_DATA_MASK, align 4
  %204 = and i32 %202, %203
  store i32 %204, i32* %13, align 4
  %205 = load i32, i32* %13, align 4
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %194, %191, %156
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
