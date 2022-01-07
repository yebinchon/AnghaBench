; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_mii_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_mii_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.niu_link_config }
%struct.niu_link_config = type { i64, i64, i64, i32, i64, i64, i64 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_ESTATEN = common dso_local global i32 0, align 4
@MII_ESTATUS = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@LOOPBACK_MAC = common dso_local global i64 0, align 8
@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@LOOPBACK_PHY = common dso_local global i64 0, align 8
@BCM5464R_AUX_CTL_EXT_LB = common dso_local global i32 0, align 4
@BCM5464R_AUX_CTL_WRITE_1 = common dso_local global i32 0, align 4
@BCM5464R_AUX_CTL = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@BMSR_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@BMSR_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@BMSR_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@BMSR_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ESTATUS_1000_THALF = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@ESTATUS_1000_TFULL = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @mii_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mii_init_common(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.niu_link_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %13 = load %struct.niu*, %struct.niu** %3, align 8
  %14 = getelementptr inbounds %struct.niu, %struct.niu* %13, i32 0, i32 2
  store %struct.niu_link_config* %14, %struct.niu_link_config** %4, align 8
  %15 = load %struct.niu*, %struct.niu** %3, align 8
  %16 = call i32 @mii_reset(%struct.niu* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %2, align 4
  br label %380

21:                                               ; preds = %1
  %22 = load %struct.niu*, %struct.niu** %3, align 8
  %23 = load %struct.niu*, %struct.niu** %3, align 8
  %24 = getelementptr inbounds %struct.niu, %struct.niu* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MII_BMSR, align 4
  %27 = call i32 @mii_read(%struct.niu* %22, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %2, align 4
  br label %380

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @BMSR_ESTATEN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.niu*, %struct.niu** %3, align 8
  %40 = load %struct.niu*, %struct.niu** %3, align 8
  %41 = getelementptr inbounds %struct.niu, %struct.niu* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MII_ESTATUS, align 4
  %44 = call i32 @mii_read(%struct.niu* %39, i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %2, align 4
  br label %380

49:                                               ; preds = %38
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %32
  store i32 0, i32* %5, align 4
  %52 = load %struct.niu*, %struct.niu** %3, align 8
  %53 = load %struct.niu*, %struct.niu** %3, align 8
  %54 = getelementptr inbounds %struct.niu, %struct.niu* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MII_BMCR, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @mii_write(%struct.niu* %52, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %2, align 4
  br label %380

63:                                               ; preds = %51
  %64 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %65 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LOOPBACK_MAC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %63
  %70 = load i32, i32* @BMCR_LOOPBACK, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %74 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SPEED_1000, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load i32, i32* @BMCR_SPEED1000, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %69
  %83 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %84 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DUPLEX_FULL, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* @BMCR_FULLDPLX, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %82
  br label %93

93:                                               ; preds = %92, %63
  %94 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %95 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LOOPBACK_PHY, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %93
  %100 = load i32, i32* @BCM5464R_AUX_CTL_EXT_LB, align 4
  %101 = load i32, i32* @BCM5464R_AUX_CTL_WRITE_1, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %10, align 4
  %103 = load %struct.niu*, %struct.niu** %3, align 8
  %104 = load %struct.niu*, %struct.niu** %3, align 8
  %105 = getelementptr inbounds %struct.niu, %struct.niu* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @BCM5464R_AUX_CTL, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @mii_write(%struct.niu* %103, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %2, align 4
  br label %380

114:                                              ; preds = %99
  br label %115

115:                                              ; preds = %114, %93
  %116 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %117 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %256

120:                                              ; preds = %115
  %121 = load i32, i32* @ADVERTISE_CSMA, align 4
  %122 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %123 = or i32 %121, %122
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @BMSR_10HALF, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %120
  %129 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %130 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load i32, i32* @ADVERTISE_10HALF, align 4
  %137 = load i32, i32* %7, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %135, %128, %120
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @BMSR_10FULL, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %139
  %145 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %146 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32, i32* @ADVERTISE_10FULL, align 4
  %153 = load i32, i32* %7, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %151, %144, %139
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @BMSR_100HALF, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %155
  %161 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %162 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load i32, i32* @ADVERTISE_100HALF, align 4
  %169 = load i32, i32* %7, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %167, %160, %155
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @BMSR_100FULL, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %171
  %177 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %178 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %176
  %184 = load i32, i32* @ADVERTISE_100FULL, align 4
  %185 = load i32, i32* %7, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %183, %176, %171
  %188 = load %struct.niu*, %struct.niu** %3, align 8
  %189 = load %struct.niu*, %struct.niu** %3, align 8
  %190 = getelementptr inbounds %struct.niu, %struct.niu* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @MII_ADVERTISE, align 4
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @mii_write(%struct.niu* %188, i32 %191, i32 %192, i32 %193)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %187
  %198 = load i32, i32* %9, align 4
  store i32 %198, i32* %2, align 4
  br label %380

199:                                              ; preds = %187
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @BMSR_ESTATEN, align 4
  %202 = and i32 %200, %201
  %203 = call i64 @likely(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %250

205:                                              ; preds = %199
  store i32 0, i32* %11, align 4
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @ESTATUS_1000_THALF, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %205
  %211 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %212 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %210
  %218 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %219 = load i32, i32* %11, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %11, align 4
  br label %221

221:                                              ; preds = %217, %210, %205
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @ESTATUS_1000_TFULL, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %221
  %227 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %228 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %226
  %234 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %235 = load i32, i32* %11, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %11, align 4
  br label %237

237:                                              ; preds = %233, %226, %221
  %238 = load %struct.niu*, %struct.niu** %3, align 8
  %239 = load %struct.niu*, %struct.niu** %3, align 8
  %240 = getelementptr inbounds %struct.niu, %struct.niu* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @MII_CTRL1000, align 4
  %243 = load i32, i32* %11, align 4
  %244 = call i32 @mii_write(%struct.niu* %238, i32 %241, i32 %242, i32 %243)
  store i32 %244, i32* %9, align 4
  %245 = load i32, i32* %9, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %237
  %248 = load i32, i32* %9, align 4
  store i32 %248, i32* %2, align 4
  br label %380

249:                                              ; preds = %237
  br label %250

250:                                              ; preds = %249, %199
  %251 = load i32, i32* @BMCR_ANENABLE, align 4
  %252 = load i32, i32* @BMCR_ANRESTART, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* %5, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %5, align 4
  br label %367

256:                                              ; preds = %115
  %257 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %258 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @DUPLEX_FULL, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %256
  %263 = load i32, i32* @BMCR_FULLDPLX, align 4
  %264 = load i32, i32* %5, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %277

266:                                              ; preds = %256
  %267 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %268 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @DUPLEX_HALF, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  store i32 0, i32* %12, align 4
  br label %276

273:                                              ; preds = %266
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %2, align 4
  br label %380

276:                                              ; preds = %272
  br label %277

277:                                              ; preds = %276, %262
  %278 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %279 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %278, i32 0, i32 5
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @SPEED_1000, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %306

283:                                              ; preds = %277
  %284 = load i32, i32* %12, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %283
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* @ESTATUS_1000_TFULL, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %286, %283
  %292 = load i32, i32* %12, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %302, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %8, align 4
  %296 = load i32, i32* @ESTATUS_1000_THALF, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %302, label %299

299:                                              ; preds = %294, %286
  %300 = load i32, i32* @EINVAL, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %2, align 4
  br label %380

302:                                              ; preds = %294, %291
  %303 = load i32, i32* @BMCR_SPEED1000, align 4
  %304 = load i32, i32* %5, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %5, align 4
  br label %366

306:                                              ; preds = %277
  %307 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %308 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @SPEED_100, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %335

312:                                              ; preds = %306
  %313 = load i32, i32* %12, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %312
  %316 = load i32, i32* %6, align 4
  %317 = load i32, i32* @BMSR_100FULL, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %315, %312
  %321 = load i32, i32* %12, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %331, label %323

323:                                              ; preds = %320
  %324 = load i32, i32* %6, align 4
  %325 = load i32, i32* @BMSR_100HALF, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %323, %315
  %329 = load i32, i32* @EINVAL, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %2, align 4
  br label %380

331:                                              ; preds = %323, %320
  %332 = load i32, i32* @BMCR_SPEED100, align 4
  %333 = load i32, i32* %5, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %5, align 4
  br label %365

335:                                              ; preds = %306
  %336 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %337 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %336, i32 0, i32 5
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @SPEED_10, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %361

341:                                              ; preds = %335
  %342 = load i32, i32* %12, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %341
  %345 = load i32, i32* %6, align 4
  %346 = load i32, i32* @BMSR_10FULL, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %344, %341
  %350 = load i32, i32* %12, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %360, label %352

352:                                              ; preds = %349
  %353 = load i32, i32* %6, align 4
  %354 = load i32, i32* @BMSR_10HALF, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %352, %344
  %358 = load i32, i32* @EINVAL, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %2, align 4
  br label %380

360:                                              ; preds = %352, %349
  br label %364

361:                                              ; preds = %335
  %362 = load i32, i32* @EINVAL, align 4
  %363 = sub nsw i32 0, %362
  store i32 %363, i32* %2, align 4
  br label %380

364:                                              ; preds = %360
  br label %365

365:                                              ; preds = %364, %331
  br label %366

366:                                              ; preds = %365, %302
  br label %367

367:                                              ; preds = %366, %250
  %368 = load %struct.niu*, %struct.niu** %3, align 8
  %369 = load %struct.niu*, %struct.niu** %3, align 8
  %370 = getelementptr inbounds %struct.niu, %struct.niu* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @MII_BMCR, align 4
  %373 = load i32, i32* %5, align 4
  %374 = call i32 @mii_write(%struct.niu* %368, i32 %371, i32 %372, i32 %373)
  store i32 %374, i32* %9, align 4
  %375 = load i32, i32* %9, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %367
  %378 = load i32, i32* %9, align 4
  store i32 %378, i32* %2, align 4
  br label %380

379:                                              ; preds = %367
  store i32 0, i32* %2, align 4
  br label %380

380:                                              ; preds = %379, %377, %361, %357, %328, %299, %273, %247, %197, %112, %61, %47, %30, %19
  %381 = load i32, i32* %2, align 4
  ret i32 %381
}

declare dso_local i32 @mii_reset(%struct.niu*) #1

declare dso_local i32 @mii_read(%struct.niu*, i32, i32) #1

declare dso_local i32 @mii_write(%struct.niu*, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
