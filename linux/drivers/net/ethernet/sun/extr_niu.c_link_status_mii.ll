; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_link_status_mii.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_link_status_mii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_link_config }
%struct.niu_link_config = type { i32, i32, i32, i32, i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@BMSR_ESTATEN = common dso_local global i32 0, align 4
@MII_ESTATUS = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@BMSR_ANEGCAPABLE = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@BMSR_10HALF = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@BMSR_10FULL = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@BMSR_100HALF = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@BMSR_100FULL = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@ESTATUS_1000_THALF = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@ESTATUS_1000_TFULL = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@LPA_1000FULL = common dso_local global i32 0, align 4
@LPA_1000HALF = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@LPA_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@LPA_10HALF = common dso_local global i32 0, align 4
@LPA_10FULL = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_INVALID = common dso_local global i32 0, align 4
@LPA_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@DUPLEX_INVALID = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32*)* @link_status_mii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_status_mii(%struct.niu* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.niu_link_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = load %struct.niu*, %struct.niu** %4, align 8
  %22 = getelementptr inbounds %struct.niu, %struct.niu* %21, i32 0, i32 1
  store %struct.niu_link_config* %22, %struct.niu_link_config** %6, align 8
  %23 = load %struct.niu*, %struct.niu** %4, align 8
  %24 = load %struct.niu*, %struct.niu** %4, align 8
  %25 = getelementptr inbounds %struct.niu, %struct.niu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MII_BMCR, align 4
  %28 = call i32 @mii_read(%struct.niu* %23, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %327

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.niu*, %struct.niu** %4, align 8
  %39 = load %struct.niu*, %struct.niu** %4, align 8
  %40 = getelementptr inbounds %struct.niu, %struct.niu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MII_BMSR, align 4
  %43 = call i32 @mii_read(%struct.niu* %38, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %327

51:                                               ; preds = %36
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.niu*, %struct.niu** %4, align 8
  %54 = load %struct.niu*, %struct.niu** %4, align 8
  %55 = getelementptr inbounds %struct.niu, %struct.niu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MII_ADVERTISE, align 4
  %58 = call i32 @mii_read(%struct.niu* %53, i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %327

66:                                               ; preds = %51
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %9, align 4
  %68 = load %struct.niu*, %struct.niu** %4, align 8
  %69 = load %struct.niu*, %struct.niu** %4, align 8
  %70 = getelementptr inbounds %struct.niu, %struct.niu* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MII_LPA, align 4
  %73 = call i32 @mii_read(%struct.niu* %68, i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %327

81:                                               ; preds = %66
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @BMSR_ESTATEN, align 4
  %85 = and i32 %83, %84
  %86 = call i64 @likely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %134

88:                                               ; preds = %81
  %89 = load %struct.niu*, %struct.niu** %4, align 8
  %90 = load %struct.niu*, %struct.niu** %4, align 8
  %91 = getelementptr inbounds %struct.niu, %struct.niu* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MII_ESTATUS, align 4
  %94 = call i32 @mii_read(%struct.niu* %89, i32 %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %327

102:                                              ; preds = %88
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %14, align 4
  %104 = load %struct.niu*, %struct.niu** %4, align 8
  %105 = load %struct.niu*, %struct.niu** %4, align 8
  %106 = getelementptr inbounds %struct.niu, %struct.niu* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MII_CTRL1000, align 4
  %109 = call i32 @mii_read(%struct.niu* %104, i32 %107, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %102
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %327

117:                                              ; preds = %102
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %10, align 4
  %119 = load %struct.niu*, %struct.niu** %4, align 8
  %120 = load %struct.niu*, %struct.niu** %4, align 8
  %121 = getelementptr inbounds %struct.niu, %struct.niu* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MII_STAT1000, align 4
  %124 = call i32 @mii_read(%struct.niu* %119, i32 %122, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %117
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %3, align 4
  br label %327

132:                                              ; preds = %117
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %11, align 4
  br label %135

134:                                              ; preds = %81
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %135

135:                                              ; preds = %134, %132
  store i32 0, i32* %15, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @BMSR_ANEGCAPABLE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %142 = load i32, i32* %15, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @BMSR_10HALF, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %151 = load i32, i32* %15, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %15, align 4
  br label %153

153:                                              ; preds = %149, %144
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @BMSR_10FULL, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %160 = load i32, i32* %15, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %15, align 4
  br label %162

162:                                              ; preds = %158, %153
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @BMSR_100HALF, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %169 = load i32, i32* %15, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %15, align 4
  br label %171

171:                                              ; preds = %167, %162
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @BMSR_100FULL, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %178 = load i32, i32* %15, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %15, align 4
  br label %180

180:                                              ; preds = %176, %171
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* @ESTATUS_1000_THALF, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %187 = load i32, i32* %15, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %185, %180
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* @ESTATUS_1000_TFULL, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %196 = load i32, i32* %15, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %15, align 4
  br label %198

198:                                              ; preds = %194, %189
  %199 = load i32, i32* %15, align 4
  %200 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %201 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @mii_adv_to_ethtool_adv_t(i32 %202)
  store i32 %203, i32* %16, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @mii_ctrl1000_to_ethtool_adv_t(i32 %204)
  %206 = load i32, i32* %16, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* @BMCR_ANENABLE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %275

212:                                              ; preds = %198
  %213 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %214 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %213, i32 0, i32 1
  store i32 1, i32* %214, align 4
  %215 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %216 = load i32, i32* %16, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %16, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %12, align 4
  %220 = and i32 %218, %219
  store i32 %220, i32* %19, align 4
  %221 = load i32, i32* %10, align 4
  %222 = shl i32 %221, 2
  %223 = load i32, i32* %11, align 4
  %224 = and i32 %222, %223
  store i32 %224, i32* %20, align 4
  %225 = load i32, i32* %20, align 4
  %226 = load i32, i32* @LPA_1000FULL, align 4
  %227 = load i32, i32* @LPA_1000HALF, align 4
  %228 = or i32 %226, %227
  %229 = and i32 %225, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %212
  %232 = load i32, i32* @SPEED_1000, align 4
  store i32 %232, i32* %17, align 4
  br label %253

233:                                              ; preds = %212
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* @LPA_100, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, i32* @SPEED_100, align 4
  store i32 %239, i32* %17, align 4
  br label %252

240:                                              ; preds = %233
  %241 = load i32, i32* %19, align 4
  %242 = load i32, i32* @LPA_10HALF, align 4
  %243 = load i32, i32* @LPA_10FULL, align 4
  %244 = or i32 %242, %243
  %245 = and i32 %241, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %240
  %248 = load i32, i32* @SPEED_10, align 4
  store i32 %248, i32* %17, align 4
  br label %251

249:                                              ; preds = %240
  %250 = load i32, i32* @SPEED_INVALID, align 4
  store i32 %250, i32* %17, align 4
  br label %251

251:                                              ; preds = %249, %247
  br label %252

252:                                              ; preds = %251, %238
  br label %253

253:                                              ; preds = %252, %231
  %254 = load i32, i32* %20, align 4
  %255 = load i32, i32* @LPA_1000FULL, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %253
  %259 = load i32, i32* %19, align 4
  %260 = load i32, i32* @LPA_DUPLEX, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %258, %253
  %264 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %264, i32* %18, align 4
  br label %274

265:                                              ; preds = %258
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* @SPEED_INVALID, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = load i32, i32* @DUPLEX_HALF, align 4
  store i32 %270, i32* %18, align 4
  br label %273

271:                                              ; preds = %265
  %272 = load i32, i32* @DUPLEX_INVALID, align 4
  store i32 %272, i32* %18, align 4
  br label %273

273:                                              ; preds = %271, %269
  br label %274

274:                                              ; preds = %273, %263
  br label %309

275:                                              ; preds = %198
  %276 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %277 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %276, i32 0, i32 1
  store i32 0, i32* %277, align 4
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* @BMCR_SPEED1000, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %275
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* @BMCR_SPEED100, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %282
  %288 = load i32, i32* @SPEED_1000, align 4
  store i32 %288, i32* %17, align 4
  br label %299

289:                                              ; preds = %282, %275
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* @BMCR_SPEED100, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %289
  %295 = load i32, i32* @SPEED_100, align 4
  store i32 %295, i32* %17, align 4
  br label %298

296:                                              ; preds = %289
  %297 = load i32, i32* @SPEED_10, align 4
  store i32 %297, i32* %17, align 4
  br label %298

298:                                              ; preds = %296, %294
  br label %299

299:                                              ; preds = %298, %287
  %300 = load i32, i32* %13, align 4
  %301 = load i32, i32* @BMCR_FULLDPLX, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %299
  %305 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %305, i32* %18, align 4
  br label %308

306:                                              ; preds = %299
  %307 = load i32, i32* @DUPLEX_HALF, align 4
  store i32 %307, i32* %18, align 4
  br label %308

308:                                              ; preds = %306, %304
  br label %309

309:                                              ; preds = %308, %274
  %310 = load i32, i32* %16, align 4
  %311 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %312 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %311, i32 0, i32 2
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* %17, align 4
  %314 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %315 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %314, i32 0, i32 3
  store i32 %313, i32* %315, align 4
  %316 = load i32, i32* %18, align 4
  %317 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %318 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %317, i32 0, i32 4
  store i32 %316, i32* %318, align 4
  %319 = load i32, i32* %8, align 4
  %320 = load i32, i32* @BMSR_LSTATUS, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  %323 = xor i1 %322, true
  %324 = xor i1 %323, true
  %325 = zext i1 %324 to i32
  %326 = load i32*, i32** %5, align 8
  store i32 %325, i32* %326, align 4
  store i32 0, i32* %3, align 4
  br label %327

327:                                              ; preds = %309, %130, %115, %100, %79, %64, %49, %34
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

declare dso_local i32 @mii_read(%struct.niu*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mii_adv_to_ethtool_adv_t(i32) #1

declare dso_local i32 @mii_ctrl1000_to_ethtool_adv_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
