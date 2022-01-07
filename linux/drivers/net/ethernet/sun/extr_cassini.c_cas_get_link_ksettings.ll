; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32 }
%struct.cas = type { i32, i32, i32, i32, i64, i64, i32, i32 }

@link_up = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@CAS_FLAG_1000MB_CAP = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@PORT_MII = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_MII = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@REG_PCS_MII_CTRL = common dso_local global i64 0, align 8
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i8* null, align 8
@SPEED_1000 = common dso_local global i8* null, align 8
@SPEED_100 = common dso_local global i8* null, align 8
@DUPLEX_FULL = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@CAS_BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @cas_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.cas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.cas* @netdev_priv(%struct.net_device* %14)
  store %struct.cas* %15, %struct.cas** %5, align 8
  %16 = load i32, i32* @link_up, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* @SUPPORTED_Autoneg, align 4
  store i32 %17, i32* %12, align 4
  %18 = load %struct.cas*, %struct.cas** %5, align 8
  %19 = getelementptr inbounds %struct.cas, %struct.cas* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CAS_FLAG_1000MB_CAP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %26 = load i32, i32* %12, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %29 = load i32, i32* %13, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %24, %2
  %32 = load %struct.cas*, %struct.cas** %5, align 8
  %33 = getelementptr inbounds %struct.cas, %struct.cas* %32, i32 0, i32 3
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  store i32 0, i32* %6, align 4
  %36 = load %struct.cas*, %struct.cas** %5, align 8
  %37 = getelementptr inbounds %struct.cas, %struct.cas* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.cas*, %struct.cas** %5, align 8
  %40 = getelementptr inbounds %struct.cas, %struct.cas* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @CAS_PHY_MII(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %96

44:                                               ; preds = %31
  %45 = load i32, i32* @PORT_MII, align 4
  %46 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 8
  %49 = load %struct.cas*, %struct.cas** %5, align 8
  %50 = getelementptr inbounds %struct.cas, %struct.cas* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @ADVERTISED_TP, align 4
  %56 = load i32, i32* @ADVERTISED_MII, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %13, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %69 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @SUPPORTED_TP, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SUPPORTED_MII, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load %struct.cas*, %struct.cas** %5, align 8
  %82 = getelementptr inbounds %struct.cas, %struct.cas* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %44
  %86 = load %struct.cas*, %struct.cas** %5, align 8
  %87 = call i32 @cas_mif_poll(%struct.cas* %86, i32 0)
  %88 = load %struct.cas*, %struct.cas** %5, align 8
  %89 = load i32, i32* @MII_BMCR, align 4
  %90 = call i32 @cas_phy_read(%struct.cas* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load %struct.cas*, %struct.cas** %5, align 8
  %92 = call i32 @cas_read_mii_link_mode(%struct.cas* %91, i32* %7, i32* %8, i32* %9)
  %93 = load %struct.cas*, %struct.cas** %5, align 8
  %94 = call i32 @cas_mif_poll(%struct.cas* %93, i32 1)
  br label %95

95:                                               ; preds = %85, %44
  br label %124

96:                                               ; preds = %31
  %97 = load i32, i32* @PORT_FIBRE, align 4
  %98 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  store i32 %97, i32* %100, align 8
  %101 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %102 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %108 = load i32, i32* %13, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %13, align 4
  %110 = load %struct.cas*, %struct.cas** %5, align 8
  %111 = getelementptr inbounds %struct.cas, %struct.cas* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %96
  %115 = load %struct.cas*, %struct.cas** %5, align 8
  %116 = getelementptr inbounds %struct.cas, %struct.cas* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @REG_PCS_MII_CTRL, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @readl(i64 %119)
  store i32 %120, i32* %6, align 4
  %121 = load %struct.cas*, %struct.cas** %5, align 8
  %122 = call i32 @cas_read_pcs_link_mode(%struct.cas* %121, i32* %7, i32* %8, i32* %9)
  br label %123

123:                                              ; preds = %114, %96
  br label %124

124:                                              ; preds = %123, %95
  %125 = load %struct.cas*, %struct.cas** %5, align 8
  %126 = getelementptr inbounds %struct.cas, %struct.cas* %125, i32 0, i32 3
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @BMCR_ANENABLE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %171

133:                                              ; preds = %124
  %134 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %135 = load i32, i32* %13, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* @AUTONEG_ENABLE, align 4
  %138 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %139 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  store i32 %137, i32* %140, align 8
  %141 = load i32, i32* %8, align 4
  %142 = icmp eq i32 %141, 10
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i8*, i8** @SPEED_10, align 8
  br label %154

145:                                              ; preds = %133
  %146 = load i32, i32* %8, align 4
  %147 = icmp eq i32 %146, 1000
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i8*, i8** @SPEED_1000, align 8
  br label %152

150:                                              ; preds = %145
  %151 = load i8*, i8** @SPEED_100, align 8
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i8* [ %149, %148 ], [ %151, %150 ]
  br label %154

154:                                              ; preds = %152, %143
  %155 = phi i8* [ %144, %143 ], [ %153, %152 ]
  %156 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %157 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  store i8* %155, i8** %158, align 8
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %165

163:                                              ; preds = %154
  %164 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i8* [ %162, %161 ], [ %164, %163 ]
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %169 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 8
  br label %212

171:                                              ; preds = %124
  %172 = load i32, i32* @AUTONEG_DISABLE, align 4
  %173 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %174 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  store i32 %172, i32* %175, align 8
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @CAS_BMCR_SPEED1000, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %171
  %181 = load i8*, i8** @SPEED_1000, align 8
  br label %193

182:                                              ; preds = %171
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @BMCR_SPEED100, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i8*, i8** @SPEED_100, align 8
  br label %191

189:                                              ; preds = %182
  %190 = load i8*, i8** @SPEED_10, align 8
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i8* [ %188, %187 ], [ %190, %189 ]
  br label %193

193:                                              ; preds = %191, %180
  %194 = phi i8* [ %181, %180 ], [ %192, %191 ]
  %195 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %196 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  store i8* %194, i8** %197, align 8
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @BMCR_FULLDPLX, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %193
  %203 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %206

204:                                              ; preds = %193
  %205 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i8* [ %203, %202 ], [ %205, %204 ]
  %208 = ptrtoint i8* %207 to i32
  %209 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %210 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 8
  br label %212

212:                                              ; preds = %206, %165
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* @link_up, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %277

216:                                              ; preds = %212
  %217 = load %struct.cas*, %struct.cas** %5, align 8
  %218 = getelementptr inbounds %struct.cas, %struct.cas* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @BMCR_ANENABLE, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %216
  %224 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %225 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 1
  store i8* null, i8** %226, align 8
  %227 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %228 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  store i32 255, i32* %229, align 8
  br label %276

230:                                              ; preds = %216
  %231 = load i8*, i8** @SPEED_10, align 8
  %232 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %233 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 1
  store i8* %231, i8** %234, align 8
  %235 = load %struct.cas*, %struct.cas** %5, align 8
  %236 = getelementptr inbounds %struct.cas, %struct.cas* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @BMCR_SPEED100, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %230
  %242 = load i8*, i8** @SPEED_100, align 8
  %243 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %244 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 1
  store i8* %242, i8** %245, align 8
  br label %259

246:                                              ; preds = %230
  %247 = load %struct.cas*, %struct.cas** %5, align 8
  %248 = getelementptr inbounds %struct.cas, %struct.cas* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @CAS_BMCR_SPEED1000, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %246
  %254 = load i8*, i8** @SPEED_1000, align 8
  %255 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %256 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 1
  store i8* %254, i8** %257, align 8
  br label %258

258:                                              ; preds = %253, %246
  br label %259

259:                                              ; preds = %258, %241
  %260 = load %struct.cas*, %struct.cas** %5, align 8
  %261 = getelementptr inbounds %struct.cas, %struct.cas* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @BMCR_FULLDPLX, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %259
  %267 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %270

268:                                              ; preds = %259
  %269 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i8* [ %267, %266 ], [ %269, %268 ]
  %272 = ptrtoint i8* %271 to i32
  %273 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %274 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 0
  store i32 %272, i32* %275, align 8
  br label %276

276:                                              ; preds = %270, %223
  br label %277

277:                                              ; preds = %276, %212
  %278 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %279 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %12, align 4
  %283 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %281, i32 %282)
  %284 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %285 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %13, align 4
  %289 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %287, i32 %288)
  ret i32 0
}

declare dso_local %struct.cas* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @CAS_PHY_MII(i32) #1

declare dso_local i32 @cas_mif_poll(%struct.cas*, i32) #1

declare dso_local i32 @cas_phy_read(%struct.cas*, i32) #1

declare dso_local i32 @cas_read_mii_link_mode(%struct.cas*, i32*, i32*, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cas_read_pcs_link_mode(%struct.cas*, i32*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
