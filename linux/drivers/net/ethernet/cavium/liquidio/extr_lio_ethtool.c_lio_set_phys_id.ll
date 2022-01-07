; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lio = type { i32, i32, %struct.oct_link_info, %struct.octeon_device* }
%struct.oct_link_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.octeon_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@OCTEON_CN66XX = common dso_local global i32 0, align 4
@VITESSE_PHY_GPIO_CFG = common dso_local global i32 0, align 4
@VITESSE_PHY_GPIO_DRIVEON = common dso_local global i32 0, align 4
@OCTEON_CN68XX = common dso_local global i32 0, align 4
@LIO68XX_LED_BEACON_ADDR = common dso_local global i32 0, align 4
@LIO68XX_LED_CTRL_ADDR = common dso_local global i32 0, align 4
@LIO68XX_LED_BEACON_CFGON = common dso_local global i32 0, align 4
@LIO68XX_LED_CTRL_CFGON = common dso_local global i32 0, align 4
@OCTEON_CN23XX_PF_VID = common dso_local global i32 0, align 4
@LED_IDENTIFICATION_ON = common dso_local global i32 0, align 4
@LIO_PHY_PORT_TP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VITESSE_PHY_GPIO_HIGH = common dso_local global i32 0, align 4
@LED_IDENTIFICATION_OFF = common dso_local global i32 0, align 4
@VITESSE_PHY_GPIO_LOW = common dso_local global i32 0, align 4
@VITESSE_PHY_GPIO_DRIVEOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @lio_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lio*, align 8
  %7 = alloca %struct.octeon_device*, align 8
  %8 = alloca %struct.oct_link_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.lio* @GET_LIO(%struct.net_device* %12)
  store %struct.lio* %13, %struct.lio** %6, align 8
  %14 = load %struct.lio*, %struct.lio** %6, align 8
  %15 = getelementptr inbounds %struct.lio, %struct.lio* %14, i32 0, i32 3
  %16 = load %struct.octeon_device*, %struct.octeon_device** %15, align 8
  store %struct.octeon_device* %16, %struct.octeon_device** %7, align 8
  %17 = load %struct.lio*, %struct.lio** %6, align 8
  %18 = getelementptr inbounds %struct.lio, %struct.lio* %17, i32 0, i32 2
  store %struct.oct_link_info* %18, %struct.oct_link_info** %8, align 8
  %19 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %25 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @OCT_FW_VER(i32 %23, i32 %28, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %249 [
    i32 131, label %36
    i32 128, label %120
    i32 129, label %158
    i32 130, label %196
  ]

36:                                               ; preds = %2
  %37 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %38 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @OCTEON_CN66XX, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load i32, i32* @VITESSE_PHY_GPIO_CFG, align 4
  %45 = load i32, i32* @VITESSE_PHY_GPIO_DRIVEON, align 4
  %46 = call i32 @octnet_gpio_access(%struct.net_device* %43, i32 %44, i32 %45)
  store i32 2, i32* %3, align 4
  br label %253

47:                                               ; preds = %36
  %48 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %49 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @OCTEON_CN68XX, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %47
  %54 = load %struct.lio*, %struct.lio** %6, align 8
  %55 = load i32, i32* @LIO68XX_LED_BEACON_ADDR, align 4
  %56 = load %struct.lio*, %struct.lio** %6, align 8
  %57 = getelementptr inbounds %struct.lio, %struct.lio* %56, i32 0, i32 0
  %58 = call i32 @octnet_mdio45_access(%struct.lio* %54, i32 0, i32 %55, i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %253

63:                                               ; preds = %53
  %64 = load %struct.lio*, %struct.lio** %6, align 8
  %65 = load i32, i32* @LIO68XX_LED_CTRL_ADDR, align 4
  %66 = load %struct.lio*, %struct.lio** %6, align 8
  %67 = getelementptr inbounds %struct.lio, %struct.lio* %66, i32 0, i32 1
  %68 = call i32 @octnet_mdio45_access(%struct.lio* %64, i32 0, i32 %65, i32* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %253

73:                                               ; preds = %63
  %74 = load i32, i32* @LIO68XX_LED_BEACON_CFGON, align 4
  store i32 %74, i32* %9, align 4
  %75 = load %struct.lio*, %struct.lio** %6, align 8
  %76 = load i32, i32* @LIO68XX_LED_BEACON_ADDR, align 4
  %77 = call i32 @octnet_mdio45_access(%struct.lio* %75, i32 1, i32 %76, i32* %9)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %3, align 4
  br label %253

82:                                               ; preds = %73
  %83 = load i32, i32* @LIO68XX_LED_CTRL_CFGON, align 4
  store i32 %83, i32* %9, align 4
  %84 = load %struct.lio*, %struct.lio** %6, align 8
  %85 = load i32, i32* @LIO68XX_LED_CTRL_ADDR, align 4
  %86 = call i32 @octnet_mdio45_access(%struct.lio* %84, i32 1, i32 %85, i32* %9)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %3, align 4
  br label %253

91:                                               ; preds = %82
  br label %118

92:                                               ; preds = %47
  %93 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %94 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @OCTEON_CN23XX_PF_VID, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = load i32, i32* @LED_IDENTIFICATION_ON, align 4
  %101 = call i32 @octnet_id_active(%struct.net_device* %99, i32 %100)
  %102 = load %struct.oct_link_info*, %struct.oct_link_info** %8, align 8
  %103 = getelementptr inbounds %struct.oct_link_info, %struct.oct_link_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @LIO_PHY_PORT_TP, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %98
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @OCT_FW_VER(i32 1, i32 7, i32 2)
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 2, i32* %3, align 4
  br label %253

114:                                              ; preds = %109, %98
  store i32 0, i32* %3, align 4
  br label %253

115:                                              ; preds = %92
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %253

118:                                              ; preds = %91
  br label %119

119:                                              ; preds = %118
  br label %252

120:                                              ; preds = %2
  %121 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %122 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @OCTEON_CN23XX_PF_VID, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %120
  %127 = load %struct.oct_link_info*, %struct.oct_link_info** %8, align 8
  %128 = getelementptr inbounds %struct.oct_link_info, %struct.oct_link_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @LIO_PHY_PORT_TP, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %126
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @OCT_FW_VER(i32 1, i32 7, i32 2)
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load %struct.net_device*, %struct.net_device** %4, align 8
  %140 = load i32, i32* @LED_IDENTIFICATION_ON, align 4
  %141 = call i32 @octnet_id_active(%struct.net_device* %139, i32 %140)
  br label %157

142:                                              ; preds = %134, %126, %120
  %143 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %144 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @OCTEON_CN66XX, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load %struct.net_device*, %struct.net_device** %4, align 8
  %150 = load i32, i32* @VITESSE_PHY_GPIO_CFG, align 4
  %151 = load i32, i32* @VITESSE_PHY_GPIO_HIGH, align 4
  %152 = call i32 @octnet_gpio_access(%struct.net_device* %149, i32 %150, i32 %151)
  br label %156

153:                                              ; preds = %142
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %253

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %138
  br label %252

158:                                              ; preds = %2
  %159 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %160 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @OCTEON_CN23XX_PF_VID, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %158
  %165 = load %struct.oct_link_info*, %struct.oct_link_info** %8, align 8
  %166 = getelementptr inbounds %struct.oct_link_info, %struct.oct_link_info* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @LIO_PHY_PORT_TP, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %164
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @OCT_FW_VER(i32 1, i32 7, i32 2)
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load %struct.net_device*, %struct.net_device** %4, align 8
  %178 = load i32, i32* @LED_IDENTIFICATION_OFF, align 4
  %179 = call i32 @octnet_id_active(%struct.net_device* %177, i32 %178)
  br label %195

180:                                              ; preds = %172, %164, %158
  %181 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %182 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @OCTEON_CN66XX, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load %struct.net_device*, %struct.net_device** %4, align 8
  %188 = load i32, i32* @VITESSE_PHY_GPIO_CFG, align 4
  %189 = load i32, i32* @VITESSE_PHY_GPIO_LOW, align 4
  %190 = call i32 @octnet_gpio_access(%struct.net_device* %187, i32 %188, i32 %189)
  br label %194

191:                                              ; preds = %180
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %253

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %194, %176
  br label %252

196:                                              ; preds = %2
  %197 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %198 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @OCTEON_CN66XX, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = load %struct.net_device*, %struct.net_device** %4, align 8
  %204 = load i32, i32* @VITESSE_PHY_GPIO_CFG, align 4
  %205 = load i32, i32* @VITESSE_PHY_GPIO_DRIVEOFF, align 4
  %206 = call i32 @octnet_gpio_access(%struct.net_device* %203, i32 %204, i32 %205)
  br label %248

207:                                              ; preds = %196
  %208 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %209 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @OCTEON_CN68XX, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %234

213:                                              ; preds = %207
  %214 = load %struct.lio*, %struct.lio** %6, align 8
  %215 = load i32, i32* @LIO68XX_LED_CTRL_ADDR, align 4
  %216 = load %struct.lio*, %struct.lio** %6, align 8
  %217 = getelementptr inbounds %struct.lio, %struct.lio* %216, i32 0, i32 1
  %218 = call i32 @octnet_mdio45_access(%struct.lio* %214, i32 1, i32 %215, i32* %217)
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %213
  %222 = load i32, i32* %10, align 4
  store i32 %222, i32* %3, align 4
  br label %253

223:                                              ; preds = %213
  %224 = load %struct.lio*, %struct.lio** %6, align 8
  %225 = load i32, i32* @LIO68XX_LED_BEACON_ADDR, align 4
  %226 = load %struct.lio*, %struct.lio** %6, align 8
  %227 = getelementptr inbounds %struct.lio, %struct.lio* %226, i32 0, i32 0
  %228 = call i32 @octnet_mdio45_access(%struct.lio* %224, i32 1, i32 %225, i32* %227)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %223
  %232 = load i32, i32* %10, align 4
  store i32 %232, i32* %3, align 4
  br label %253

233:                                              ; preds = %223
  br label %247

234:                                              ; preds = %207
  %235 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %236 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @OCTEON_CN23XX_PF_VID, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %234
  %241 = load %struct.net_device*, %struct.net_device** %4, align 8
  %242 = load i32, i32* @LED_IDENTIFICATION_OFF, align 4
  %243 = call i32 @octnet_id_active(%struct.net_device* %241, i32 %242)
  store i32 0, i32* %3, align 4
  br label %253

244:                                              ; preds = %234
  %245 = load i32, i32* @EINVAL, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %3, align 4
  br label %253

247:                                              ; preds = %233
  br label %248

248:                                              ; preds = %247, %202
  br label %252

249:                                              ; preds = %2
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %3, align 4
  br label %253

252:                                              ; preds = %248, %195, %157, %119
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %252, %249, %244, %240, %231, %221, %191, %153, %115, %114, %113, %89, %80, %71, %61, %42
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @OCT_FW_VER(i32, i32, i32) #1

declare dso_local i32 @octnet_gpio_access(%struct.net_device*, i32, i32) #1

declare dso_local i32 @octnet_mdio45_access(%struct.lio*, i32, i32, i32*) #1

declare dso_local i32 @octnet_id_active(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
