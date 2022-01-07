; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_begin_auto_negotiation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_begin_auto_negotiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i32, i32, i32, i64, i8*, i64, i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@link_down = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@CAS_BMCR_SPEED1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@link_up = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"PCS link down\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"link configuration changed\0A\00", align 1
@LINK_TRANSITION_LINK_DOWN = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@CAS_LINK_TIMEOUT = common dso_local global i64 0, align 8
@CAS_PHY_SERDES = common dso_local global i32 0, align 4
@REG_PCS_MII_CTRL = common dso_local global i64 0, align 8
@PCS_MII_RESTART_AUTONEG = common dso_local global i64 0, align 8
@PCS_MII_AUTONEG_EN = common dso_local global i64 0, align 8
@link_aneg = common dso_local global i8* null, align 8
@PCS_MII_CTRL_DUPLEX = common dso_local global i64 0, align 8
@link_force_ok = common dso_local global i8* null, align 8
@LINK_TRANSITION_LINK_CONFIG = common dso_local global i8* null, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*, %struct.ethtool_link_ksettings*)* @cas_begin_auto_negotiation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_begin_auto_negotiation(%struct.cas* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.cas*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.cas* %0, %struct.cas** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.cas*, %struct.cas** %3, align 8
  %13 = getelementptr inbounds %struct.cas, %struct.cas* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @link_down, align 4
  %17 = icmp eq i32 %15, %16
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %21 = icmp ne %struct.ethtool_link_ksettings* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %85

23:                                               ; preds = %2
  %24 = load %struct.cas*, %struct.cas** %3, align 8
  %25 = getelementptr inbounds %struct.cas, %struct.cas* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AUTONEG_ENABLE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32, i32* @BMCR_ANENABLE, align 4
  %35 = load %struct.cas*, %struct.cas** %3, align 8
  %36 = getelementptr inbounds %struct.cas, %struct.cas* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %78

37:                                               ; preds = %23
  %38 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = load %struct.cas*, %struct.cas** %3, align 8
  %43 = getelementptr inbounds %struct.cas, %struct.cas* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @SPEED_100, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load i32, i32* @BMCR_SPEED100, align 4
  %49 = load %struct.cas*, %struct.cas** %3, align 8
  %50 = getelementptr inbounds %struct.cas, %struct.cas* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %64

53:                                               ; preds = %37
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @SPEED_1000, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* @CAS_BMCR_SPEED1000, align 4
  %59 = load %struct.cas*, %struct.cas** %3, align 8
  %60 = getelementptr inbounds %struct.cas, %struct.cas* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %53
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DUPLEX_FULL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32, i32* @BMCR_FULLDPLX, align 4
  %73 = load %struct.cas*, %struct.cas** %3, align 8
  %74 = getelementptr inbounds %struct.cas, %struct.cas* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %64
  br label %78

78:                                               ; preds = %77, %33
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.cas*, %struct.cas** %3, align 8
  %81 = getelementptr inbounds %struct.cas, %struct.cas* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %79, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %78, %22
  %86 = load %struct.cas*, %struct.cas** %3, align 8
  %87 = getelementptr inbounds %struct.cas, %struct.cas* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @link_up, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.cas*, %struct.cas** %3, align 8
  %93 = getelementptr inbounds %struct.cas, %struct.cas* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @netdev_info(i32 %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %105

96:                                               ; preds = %85
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.cas*, %struct.cas** %3, align 8
  %101 = getelementptr inbounds %struct.cas, %struct.cas* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @netdev_info(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %96
  br label %105

105:                                              ; preds = %104, %91
  %106 = load i32, i32* @link_down, align 4
  %107 = load %struct.cas*, %struct.cas** %3, align 8
  %108 = getelementptr inbounds %struct.cas, %struct.cas* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i8*, i8** @LINK_TRANSITION_LINK_DOWN, align 8
  %110 = load %struct.cas*, %struct.cas** %3, align 8
  %111 = getelementptr inbounds %struct.cas, %struct.cas* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load %struct.cas*, %struct.cas** %3, align 8
  %113 = getelementptr inbounds %struct.cas, %struct.cas* %112, i32 0, i32 11
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %105
  br label %268

117:                                              ; preds = %105
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @link_up, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load %struct.cas*, %struct.cas** %3, align 8
  %123 = getelementptr inbounds %struct.cas, %struct.cas* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @netif_carrier_off(i32 %124)
  br label %126

126:                                              ; preds = %121, %117
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  %133 = load %struct.cas*, %struct.cas** %3, align 8
  %134 = getelementptr inbounds %struct.cas, %struct.cas* %133, i32 0, i32 9
  %135 = call i32 @atomic_inc(i32* %134)
  %136 = load %struct.cas*, %struct.cas** %3, align 8
  %137 = getelementptr inbounds %struct.cas, %struct.cas* %136, i32 0, i32 8
  %138 = call i32 @atomic_inc(i32* %137)
  %139 = load %struct.cas*, %struct.cas** %3, align 8
  %140 = getelementptr inbounds %struct.cas, %struct.cas* %139, i32 0, i32 7
  %141 = call i32 @schedule_work(i32* %140)
  %142 = load %struct.cas*, %struct.cas** %3, align 8
  %143 = getelementptr inbounds %struct.cas, %struct.cas* %142, i32 0, i32 4
  store i64 0, i64* %143, align 8
  %144 = load %struct.cas*, %struct.cas** %3, align 8
  %145 = getelementptr inbounds %struct.cas, %struct.cas* %144, i32 0, i32 3
  %146 = load i64, i64* @jiffies, align 8
  %147 = load i64, i64* @CAS_LINK_TIMEOUT, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @mod_timer(i32* %145, i64 %148)
  br label %268

150:                                              ; preds = %129, %126
  %151 = load %struct.cas*, %struct.cas** %3, align 8
  %152 = getelementptr inbounds %struct.cas, %struct.cas* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @CAS_PHY_SERDES, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %211

157:                                              ; preds = %150
  %158 = load %struct.cas*, %struct.cas** %3, align 8
  %159 = getelementptr inbounds %struct.cas, %struct.cas* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @REG_PCS_MII_CTRL, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i64 @readl(i64 %162)
  store i64 %163, i64* %11, align 8
  %164 = load %struct.cas*, %struct.cas** %3, align 8
  %165 = getelementptr inbounds %struct.cas, %struct.cas* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @BMCR_ANENABLE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %157
  %171 = load i64, i64* @PCS_MII_RESTART_AUTONEG, align 8
  %172 = load i64, i64* @PCS_MII_AUTONEG_EN, align 8
  %173 = or i64 %171, %172
  %174 = load i64, i64* %11, align 8
  %175 = or i64 %174, %173
  store i64 %175, i64* %11, align 8
  %176 = load i8*, i8** @link_aneg, align 8
  %177 = ptrtoint i8* %176 to i32
  %178 = load %struct.cas*, %struct.cas** %3, align 8
  %179 = getelementptr inbounds %struct.cas, %struct.cas* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  br label %200

180:                                              ; preds = %157
  %181 = load %struct.cas*, %struct.cas** %3, align 8
  %182 = getelementptr inbounds %struct.cas, %struct.cas* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @BMCR_FULLDPLX, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %180
  %188 = load i64, i64* @PCS_MII_CTRL_DUPLEX, align 8
  %189 = load i64, i64* %11, align 8
  %190 = or i64 %189, %188
  store i64 %190, i64* %11, align 8
  br label %191

191:                                              ; preds = %187, %180
  %192 = load i64, i64* @PCS_MII_AUTONEG_EN, align 8
  %193 = xor i64 %192, -1
  %194 = load i64, i64* %11, align 8
  %195 = and i64 %194, %193
  store i64 %195, i64* %11, align 8
  %196 = load i8*, i8** @link_force_ok, align 8
  %197 = ptrtoint i8* %196 to i32
  %198 = load %struct.cas*, %struct.cas** %3, align 8
  %199 = getelementptr inbounds %struct.cas, %struct.cas* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  br label %200

200:                                              ; preds = %191, %170
  %201 = load i8*, i8** @LINK_TRANSITION_LINK_CONFIG, align 8
  %202 = load %struct.cas*, %struct.cas** %3, align 8
  %203 = getelementptr inbounds %struct.cas, %struct.cas* %202, i32 0, i32 5
  store i8* %201, i8** %203, align 8
  %204 = load i64, i64* %11, align 8
  %205 = load %struct.cas*, %struct.cas** %3, align 8
  %206 = getelementptr inbounds %struct.cas, %struct.cas* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @REG_PCS_MII_CTRL, align 8
  %209 = add nsw i64 %207, %208
  %210 = call i32 @writel(i64 %204, i64 %209)
  br label %259

211:                                              ; preds = %150
  %212 = load %struct.cas*, %struct.cas** %3, align 8
  %213 = call i32 @cas_mif_poll(%struct.cas* %212, i32 0)
  %214 = load %struct.cas*, %struct.cas** %3, align 8
  %215 = load i32, i32* @MII_BMCR, align 4
  %216 = call i32 @cas_phy_read(%struct.cas* %214, i32 %215)
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* @BMCR_FULLDPLX, align 4
  %218 = load i32, i32* @BMCR_SPEED100, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @CAS_BMCR_SPEED1000, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @BMCR_ANENABLE, align 4
  %223 = or i32 %221, %222
  %224 = xor i32 %223, -1
  %225 = load i32, i32* %5, align 4
  %226 = and i32 %225, %224
  store i32 %226, i32* %5, align 4
  %227 = load %struct.cas*, %struct.cas** %3, align 8
  %228 = getelementptr inbounds %struct.cas, %struct.cas* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %5, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %5, align 4
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @BMCR_ANENABLE, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %211
  %237 = load i32, i32* @BMCR_ANRESTART, align 4
  %238 = load i32, i32* %5, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %5, align 4
  %240 = load i8*, i8** @link_aneg, align 8
  %241 = ptrtoint i8* %240 to i32
  %242 = load %struct.cas*, %struct.cas** %3, align 8
  %243 = getelementptr inbounds %struct.cas, %struct.cas* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  br label %249

244:                                              ; preds = %211
  %245 = load i8*, i8** @link_force_ok, align 8
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.cas*, %struct.cas** %3, align 8
  %248 = getelementptr inbounds %struct.cas, %struct.cas* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %244, %236
  %250 = load i8*, i8** @LINK_TRANSITION_LINK_CONFIG, align 8
  %251 = load %struct.cas*, %struct.cas** %3, align 8
  %252 = getelementptr inbounds %struct.cas, %struct.cas* %251, i32 0, i32 5
  store i8* %250, i8** %252, align 8
  %253 = load %struct.cas*, %struct.cas** %3, align 8
  %254 = load i32, i32* @MII_BMCR, align 4
  %255 = load i32, i32* %5, align 4
  %256 = call i32 @cas_phy_write(%struct.cas* %253, i32 %254, i32 %255)
  %257 = load %struct.cas*, %struct.cas** %3, align 8
  %258 = call i32 @cas_mif_poll(%struct.cas* %257, i32 1)
  br label %259

259:                                              ; preds = %249, %200
  %260 = load %struct.cas*, %struct.cas** %3, align 8
  %261 = getelementptr inbounds %struct.cas, %struct.cas* %260, i32 0, i32 4
  store i64 0, i64* %261, align 8
  %262 = load %struct.cas*, %struct.cas** %3, align 8
  %263 = getelementptr inbounds %struct.cas, %struct.cas* %262, i32 0, i32 3
  %264 = load i64, i64* @jiffies, align 8
  %265 = load i64, i64* @CAS_LINK_TIMEOUT, align 8
  %266 = add nsw i64 %264, %265
  %267 = call i32 @mod_timer(i32* %263, i64 %266)
  br label %268

268:                                              ; preds = %259, %132, %116
  ret void
}

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @cas_mif_poll(%struct.cas*, i32) #1

declare dso_local i32 @cas_phy_read(%struct.cas*, i32) #1

declare dso_local i32 @cas_phy_write(%struct.cas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
