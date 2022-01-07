; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_copper_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_copper_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i64, i64 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@TG3_PHYFLG_IS_LOW_POWER = common dso_local global i32 0, align 4
@TG3_PHYFLG_KEEP_LINK_ON_PWRDN = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@WOL_SPEED_100MB = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@TG3_PHYFLG_1G_ON_VAUX_OK = common dso_local global i32 0, align 4
@TG3_PHYFLG_DISABLE_1G_HD_ADV = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@TG3_PHYFLG_10_100_ONLY = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@ASIC_REV_5714 = common dso_local global i64 0, align 8
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_phy_copper_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_phy_copper_begin(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %9 = load %struct.tg3*, %struct.tg3** %2, align 8
  %10 = getelementptr inbounds %struct.tg3, %struct.tg3* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AUTONEG_ENABLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.tg3*, %struct.tg3** %2, align 8
  %17 = getelementptr inbounds %struct.tg3, %struct.tg3* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TG3_PHYFLG_IS_LOW_POWER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %125

22:                                               ; preds = %15, %1
  %23 = load %struct.tg3*, %struct.tg3** %2, align 8
  %24 = getelementptr inbounds %struct.tg3, %struct.tg3* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TG3_PHYFLG_IS_LOW_POWER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %22
  %30 = load %struct.tg3*, %struct.tg3** %2, align 8
  %31 = getelementptr inbounds %struct.tg3, %struct.tg3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TG3_PHYFLG_KEEP_LINK_ON_PWRDN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %76, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %38 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %3, align 4
  %40 = load %struct.tg3*, %struct.tg3** %2, align 8
  %41 = load i32, i32* @WOL_SPEED_100MB, align 4
  %42 = call i64 @tg3_flag(%struct.tg3* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %46 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %36
  %51 = load %struct.tg3*, %struct.tg3** %2, align 8
  %52 = getelementptr inbounds %struct.tg3, %struct.tg3* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TG3_PHYFLG_1G_ON_VAUX_OK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  %58 = load %struct.tg3*, %struct.tg3** %2, align 8
  %59 = getelementptr inbounds %struct.tg3, %struct.tg3* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @TG3_PHYFLG_DISABLE_1G_HD_ADV, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %50
  %73 = load i32, i32* @FLOW_CTRL_TX, align 4
  %74 = load i32, i32* @FLOW_CTRL_RX, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %4, align 4
  br label %99

76:                                               ; preds = %29, %22
  %77 = load %struct.tg3*, %struct.tg3** %2, align 8
  %78 = getelementptr inbounds %struct.tg3, %struct.tg3* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %3, align 4
  %81 = load %struct.tg3*, %struct.tg3** %2, align 8
  %82 = getelementptr inbounds %struct.tg3, %struct.tg3* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @TG3_PHYFLG_10_100_ONLY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %76
  %88 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %89 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %3, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %87, %76
  %95 = load %struct.tg3*, %struct.tg3** %2, align 8
  %96 = getelementptr inbounds %struct.tg3, %struct.tg3* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %94, %72
  %100 = load %struct.tg3*, %struct.tg3** %2, align 8
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @tg3_phy_autoneg_cfg(%struct.tg3* %100, i32 %101, i32 %102)
  %104 = load %struct.tg3*, %struct.tg3** %2, align 8
  %105 = getelementptr inbounds %struct.tg3, %struct.tg3* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @TG3_PHYFLG_IS_LOW_POWER, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %99
  %111 = load %struct.tg3*, %struct.tg3** %2, align 8
  %112 = getelementptr inbounds %struct.tg3, %struct.tg3* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TG3_PHYFLG_KEEP_LINK_ON_PWRDN, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %222

118:                                              ; preds = %110, %99
  %119 = load %struct.tg3*, %struct.tg3** %2, align 8
  %120 = load i32, i32* @MII_BMCR, align 4
  %121 = load i32, i32* @BMCR_ANENABLE, align 4
  %122 = load i32, i32* @BMCR_ANRESTART, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @tg3_writephy(%struct.tg3* %119, i32 %120, i32 %123)
  br label %222

125:                                              ; preds = %15
  %126 = load %struct.tg3*, %struct.tg3** %2, align 8
  %127 = getelementptr inbounds %struct.tg3, %struct.tg3* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.tg3*, %struct.tg3** %2, align 8
  %131 = getelementptr inbounds %struct.tg3, %struct.tg3* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 3
  store i32 %129, i32* %132, align 8
  %133 = load %struct.tg3*, %struct.tg3** %2, align 8
  %134 = getelementptr inbounds %struct.tg3, %struct.tg3* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.tg3*, %struct.tg3** %2, align 8
  %138 = getelementptr inbounds %struct.tg3, %struct.tg3* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 5
  store i64 %136, i64* %139, align 8
  %140 = load %struct.tg3*, %struct.tg3** %2, align 8
  %141 = call i64 @tg3_asic_rev(%struct.tg3* %140)
  %142 = load i64, i64* @ASIC_REV_5714, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %125
  %145 = load %struct.tg3*, %struct.tg3** %2, align 8
  %146 = load i32, i32* @MII_ADVERTISE, align 4
  %147 = load i32, i32* @ADVERTISE_ALL, align 4
  %148 = call i32 @tg3_writephy(%struct.tg3* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %125
  store i32 0, i32* %6, align 4
  %150 = load %struct.tg3*, %struct.tg3** %2, align 8
  %151 = getelementptr inbounds %struct.tg3, %struct.tg3* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %154 [
    i32 130, label %155
    i32 129, label %156
    i32 128, label %160
  ]

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %149, %154
  br label %164

156:                                              ; preds = %149
  %157 = load i32, i32* @BMCR_SPEED100, align 4
  %158 = load i32, i32* %6, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %6, align 4
  br label %164

160:                                              ; preds = %149
  %161 = load i32, i32* @BMCR_SPEED1000, align 4
  %162 = load i32, i32* %6, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %160, %156, %155
  %165 = load %struct.tg3*, %struct.tg3** %2, align 8
  %166 = getelementptr inbounds %struct.tg3, %struct.tg3* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @DUPLEX_FULL, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load i32, i32* @BMCR_FULLDPLX, align 4
  %173 = load i32, i32* %6, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %171, %164
  %176 = load %struct.tg3*, %struct.tg3** %2, align 8
  %177 = load i32, i32* @MII_BMCR, align 4
  %178 = call i64 @tg3_readphy(%struct.tg3* %176, i32 %177, i32* %7)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %221, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %221

184:                                              ; preds = %180
  %185 = load %struct.tg3*, %struct.tg3** %2, align 8
  %186 = load i32, i32* @MII_BMCR, align 4
  %187 = load i32, i32* @BMCR_LOOPBACK, align 4
  %188 = call i32 @tg3_writephy(%struct.tg3* %185, i32 %186, i32 %187)
  store i32 0, i32* %5, align 4
  br label %189

189:                                              ; preds = %212, %184
  %190 = load i32, i32* %5, align 4
  %191 = icmp slt i32 %190, 1500
  br i1 %191, label %192, label %215

192:                                              ; preds = %189
  %193 = call i32 @udelay(i32 10)
  %194 = load %struct.tg3*, %struct.tg3** %2, align 8
  %195 = load i32, i32* @MII_BMSR, align 4
  %196 = call i64 @tg3_readphy(%struct.tg3* %194, i32 %195, i32* %8)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %192
  %199 = load %struct.tg3*, %struct.tg3** %2, align 8
  %200 = load i32, i32* @MII_BMSR, align 4
  %201 = call i64 @tg3_readphy(%struct.tg3* %199, i32 %200, i32* %8)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198, %192
  br label %212

204:                                              ; preds = %198
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @BMSR_LSTATUS, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %204
  %210 = call i32 @udelay(i32 40)
  br label %215

211:                                              ; preds = %204
  br label %212

212:                                              ; preds = %211, %203
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %5, align 4
  br label %189

215:                                              ; preds = %209, %189
  %216 = load %struct.tg3*, %struct.tg3** %2, align 8
  %217 = load i32, i32* @MII_BMCR, align 4
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @tg3_writephy(%struct.tg3* %216, i32 %217, i32 %218)
  %220 = call i32 @udelay(i32 40)
  br label %221

221:                                              ; preds = %215, %180, %175
  br label %222

222:                                              ; preds = %117, %221, %118
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_phy_autoneg_cfg(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_writephy(%struct.tg3*, i32, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i64 @tg3_readphy(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
