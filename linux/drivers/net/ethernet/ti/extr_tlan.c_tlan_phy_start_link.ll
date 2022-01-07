; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_start_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_start_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.tlan_priv = type { i32*, i64, i64, i64, i32, i64 }

@TLAN_DEBUG_GNRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: Trying to activate link.\0A\00", align 1
@MII_GEN_STS = common dso_local global i32 0, align 4
@MII_GS_AUTONEG = common dso_local global i32 0, align 4
@TLAN_SPEED_10 = common dso_local global i64 0, align 8
@TLAN_DUPLEX_HALF = common dso_local global i64 0, align 8
@MII_GEN_CTL = common dso_local global i32 0, align 4
@TLAN_DUPLEX_FULL = common dso_local global i64 0, align 8
@TLAN_SPEED_100 = common dso_local global i64 0, align 8
@MII_AN_ADV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Starting autonegotiation\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@TLAN_TIMER_PHY_FINISH_AN = common dso_local global i32 0, align 4
@TLAN_NET_CFG_1FRAG = common dso_local global i32 0, align 4
@TLAN_NET_CFG_1CHAN = common dso_local global i32 0, align 4
@TLAN_NET_CFG_PHY_EN = common dso_local global i32 0, align 4
@TLAN_NET_CONFIG = common dso_local global i32 0, align 4
@TLAN_TIMER_PHY_PDOWN = common dso_local global i32 0, align 4
@TLAN_TLPHY_CTL = common dso_local global i32 0, align 4
@TLAN_TC_AUISEL = common dso_local global i32 0, align 4
@MII_GC_DUPLEX = common dso_local global i32 0, align 4
@MII_GC_SPEEDSEL = common dso_local global i32 0, align 4
@TLAN_TIMER_FINISH_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tlan_phy_start_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_phy_start_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tlan_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.tlan_priv* %11, %struct.tlan_priv** %3, align 8
  %12 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %13 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %16 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @TLAN_DEBUG_GNRL, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @TLAN_DBG(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MII_GEN_STS, align 4
  %28 = call i32 @tlan_mii_read_reg(%struct.net_device* %25, i32 %26, i32 %27, i32* %8)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MII_GEN_STS, align 4
  %32 = call i32 @tlan_mii_read_reg(%struct.net_device* %29, i32 %30, i32 %31, i32* %4)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MII_GS_AUTONEG, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %143

37:                                               ; preds = %1
  %38 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %39 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %143, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %43, 11
  store i32 %44, i32* %4, align 4
  %45 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %46 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TLAN_SPEED_10, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %52 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TLAN_DUPLEX_HALF, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @MII_GEN_CTL, align 4
  %60 = call i32 @tlan_mii_write_reg(%struct.net_device* %57, i32 %58, i32 %59, i32 0)
  br label %142

61:                                               ; preds = %50, %42
  %62 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %63 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TLAN_SPEED_10, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %69 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TLAN_DUPLEX_FULL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %75 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %74, i32 0, i32 4
  store i32 1, i32* %75, align 8
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @MII_GEN_CTL, align 4
  %79 = call i32 @tlan_mii_write_reg(%struct.net_device* %76, i32 %77, i32 %78, i32 256)
  br label %141

80:                                               ; preds = %67, %61
  %81 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %82 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TLAN_SPEED_100, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %88 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TLAN_DUPLEX_HALF, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @MII_GEN_CTL, align 4
  %96 = call i32 @tlan_mii_write_reg(%struct.net_device* %93, i32 %94, i32 %95, i32 8192)
  br label %140

97:                                               ; preds = %86, %80
  %98 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %99 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TLAN_SPEED_100, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %97
  %104 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %105 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TLAN_DUPLEX_FULL, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %111 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %110, i32 0, i32 4
  store i32 1, i32* %111, align 8
  %112 = load %struct.net_device*, %struct.net_device** %2, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @MII_GEN_CTL, align 4
  %115 = call i32 @tlan_mii_write_reg(%struct.net_device* %112, i32 %113, i32 %114, i32 8448)
  br label %139

116:                                              ; preds = %103, %97
  %117 = load %struct.net_device*, %struct.net_device** %2, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @MII_AN_ADV, align 4
  %120 = load i32, i32* %4, align 4
  %121 = shl i32 %120, 5
  %122 = or i32 %121, 1
  %123 = call i32 @tlan_mii_write_reg(%struct.net_device* %117, i32 %118, i32 %119, i32 %122)
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @MII_GEN_CTL, align 4
  %127 = call i32 @tlan_mii_write_reg(%struct.net_device* %124, i32 %125, i32 %126, i32 4096)
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @MII_GEN_CTL, align 4
  %131 = call i32 @tlan_mii_write_reg(%struct.net_device* %128, i32 %129, i32 %130, i32 4608)
  %132 = load %struct.net_device*, %struct.net_device** %2, align 8
  %133 = call i32 @netdev_info(%struct.net_device* %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %134 = load %struct.net_device*, %struct.net_device** %2, align 8
  %135 = load i32, i32* @HZ, align 4
  %136 = mul nsw i32 2, %135
  %137 = load i32, i32* @TLAN_TIMER_PHY_FINISH_AN, align 4
  %138 = call i32 @tlan_set_timer(%struct.net_device* %134, i32 %136, i32 %137)
  br label %234

139:                                              ; preds = %109
  br label %140

140:                                              ; preds = %139, %92
  br label %141

141:                                              ; preds = %140, %73
  br label %142

142:                                              ; preds = %141, %56
  br label %143

143:                                              ; preds = %142, %37, %1
  %144 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %145 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %171

148:                                              ; preds = %143
  %149 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %150 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %171

153:                                              ; preds = %148
  %154 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %155 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %154, i32 0, i32 1
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* @TLAN_NET_CFG_1FRAG, align 4
  %157 = load i32, i32* @TLAN_NET_CFG_1CHAN, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @TLAN_NET_CFG_PHY_EN, align 4
  %160 = or i32 %158, %159
  store i32 %160, i32* %6, align 4
  %161 = load %struct.net_device*, %struct.net_device** %2, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @TLAN_NET_CONFIG, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @tlan_dio_write16(i32 %163, i32 %164, i32 %165)
  %167 = load %struct.net_device*, %struct.net_device** %2, align 8
  %168 = call i32 @msecs_to_jiffies(i32 40)
  %169 = load i32, i32* @TLAN_TIMER_PHY_PDOWN, align 4
  %170 = call i32 @tlan_set_timer(%struct.net_device* %167, i32 %168, i32 %169)
  br label %234

171:                                              ; preds = %148, %143
  %172 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %173 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %227

176:                                              ; preds = %171
  store i32 0, i32* %5, align 4
  %177 = load %struct.net_device*, %struct.net_device** %2, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %180 = call i32 @tlan_mii_read_reg(%struct.net_device* %177, i32 %178, i32 %179, i32* %9)
  %181 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %182 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %176
  %186 = load i32, i32* @TLAN_TC_AUISEL, align 4
  %187 = load i32, i32* %9, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %9, align 4
  br label %216

189:                                              ; preds = %176
  %190 = load i32, i32* @TLAN_TC_AUISEL, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %9, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %9, align 4
  %194 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %195 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @TLAN_DUPLEX_FULL, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %189
  %200 = load i32, i32* @MII_GC_DUPLEX, align 4
  %201 = load i32, i32* %5, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %5, align 4
  %203 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %204 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %203, i32 0, i32 4
  store i32 1, i32* %204, align 8
  br label %205

205:                                              ; preds = %199, %189
  %206 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %207 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @TLAN_SPEED_100, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load i32, i32* @MII_GC_SPEEDSEL, align 4
  %213 = load i32, i32* %5, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %211, %205
  br label %216

216:                                              ; preds = %215, %185
  %217 = load %struct.net_device*, %struct.net_device** %2, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* @MII_GEN_CTL, align 4
  %220 = load i32, i32* %5, align 4
  %221 = call i32 @tlan_mii_write_reg(%struct.net_device* %217, i32 %218, i32 %219, i32 %220)
  %222 = load %struct.net_device*, %struct.net_device** %2, align 8
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @tlan_mii_write_reg(%struct.net_device* %222, i32 %223, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %216, %171
  br label %228

228:                                              ; preds = %227
  %229 = load %struct.net_device*, %struct.net_device** %2, align 8
  %230 = load i32, i32* @HZ, align 4
  %231 = mul nsw i32 4, %230
  %232 = load i32, i32* @TLAN_TIMER_FINISH_RESET, align 4
  %233 = call i32 @tlan_set_timer(%struct.net_device* %229, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %228, %153, %116
  ret void
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @TLAN_DBG(i32, i8*, i32) #1

declare dso_local i32 @tlan_mii_read_reg(%struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @tlan_mii_write_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @tlan_set_timer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @tlan_dio_write16(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
