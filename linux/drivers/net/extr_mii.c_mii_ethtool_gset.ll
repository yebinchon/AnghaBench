; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_ethtool_gset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_ethtool_gset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_if_info = type { i32 (%struct.net_device*, i32, i32)*, i32, i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@PORT_MII = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@ETH_MDIO_SUPPORTS_C22 = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_MII = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mii_ethtool_gset(%struct.mii_if_info* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.mii_if_info*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_if_info* %0, %struct.mii_if_info** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %11 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %12 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %11, i32 0, i32 4
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %15 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SUPPORTED_TP, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SUPPORTED_MII, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %30 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %35 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %33, %2
  %42 = load i32, i32* @PORT_MII, align 4
  %43 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @XCVR_INTERNAL, align 4
  %46 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %49 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @ETH_MDIO_SUPPORTS_C22, align 4
  %54 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @ADVERTISED_TP, align 4
  %57 = load i32, i32* @ADVERTISED_MII, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %62 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %61, i32 0, i32 0
  %63 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %66 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MII_BMCR, align 4
  %69 = call i32 %63(%struct.net_device* %64, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %71 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %70, i32 0, i32 0
  %72 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %71, align 8
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %75 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MII_BMSR, align 4
  %78 = call i32 %72(%struct.net_device* %73, i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %80 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %41
  %84 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %85 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %84, i32 0, i32 0
  %86 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %85, align 8
  %87 = load %struct.net_device*, %struct.net_device** %5, align 8
  %88 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %89 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MII_CTRL1000, align 4
  %92 = call i32 %86(%struct.net_device* %87, i32 %90, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %94 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %93, i32 0, i32 0
  %95 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %94, align 8
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %98 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MII_STAT1000, align 4
  %101 = call i32 %95(%struct.net_device* %96, i32 %99, i32 %100)
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %83, %41
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @BMCR_ANENABLE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %216

107:                                              ; preds = %102
  %108 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %109 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %110 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* @AUTONEG_ENABLE, align 4
  %114 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %115 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %117 = load i32, i32* @MII_ADVERTISE, align 4
  %118 = call i32 @mii_get_an(%struct.mii_if_info* %116, i32 %117)
  %119 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %120 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %124 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %107
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @mii_ctrl1000_to_ethtool_adv_t(i32 %128)
  %130 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %131 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %127, %107
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %134
  %140 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %141 = load i32, i32* @MII_LPA, align 4
  %142 = call i32 @mii_get_an(%struct.mii_if_info* %140, i32 %141)
  %143 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %144 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @mii_stat1000_to_ethtool_lpa_t(i32 %145)
  %147 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %148 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %154

151:                                              ; preds = %134
  %152 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %153 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %152, i32 0, i32 2
  store i32 0, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %139
  %155 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %156 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %159 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %157, %160
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %164 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %162, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %154
  %169 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %170 = load i32, i32* @SPEED_1000, align 4
  %171 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %169, i32 %170)
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %180 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  br label %215

181:                                              ; preds = %154
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %184 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %185 = or i32 %183, %184
  %186 = and i32 %182, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %181
  %189 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %190 = load i32, i32* @SPEED_100, align 4
  %191 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %189, i32 %190)
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %200 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  br label %214

201:                                              ; preds = %181
  %202 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %203 = load i32, i32* @SPEED_10, align 4
  %204 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %202, i32 %203)
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  %212 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %213 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 4
  br label %214

214:                                              ; preds = %201, %188
  br label %215

215:                                              ; preds = %214, %168
  br label %258

216:                                              ; preds = %102
  %217 = load i32, i32* @AUTONEG_DISABLE, align 4
  %218 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %219 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %218, i32 0, i32 4
  store i32 %217, i32* %219, align 4
  %220 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @BMCR_SPEED1000, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %216
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @BMCR_SPEED100, align 4
  %228 = and i32 %226, %227
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i32, i32* @SPEED_1000, align 4
  br label %243

232:                                              ; preds = %225, %216
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* @BMCR_SPEED100, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %232
  %238 = load i32, i32* @SPEED_100, align 4
  br label %241

239:                                              ; preds = %232
  %240 = load i32, i32* @SPEED_10, align 4
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi i32 [ %238, %237 ], [ %240, %239 ]
  br label %243

243:                                              ; preds = %241, %230
  %244 = phi i32 [ %231, %230 ], [ %242, %241 ]
  %245 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %220, i32 %244)
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* @BMCR_FULLDPLX, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %243
  %251 = load i32, i32* @DUPLEX_FULL, align 4
  br label %254

252:                                              ; preds = %243
  %253 = load i32, i32* @DUPLEX_HALF, align 4
  br label %254

254:                                              ; preds = %252, %250
  %255 = phi i32 [ %251, %250 ], [ %253, %252 ]
  %256 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %257 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %254, %215
  %259 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %260 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %263 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 8
  ret i32 0
}

declare dso_local i32 @mii_get_an(%struct.mii_if_info*, i32) #1

declare dso_local i32 @mii_ctrl1000_to_ethtool_adv_t(i32) #1

declare dso_local i32 @mii_stat1000_to_ethtool_lpa_t(i32) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
