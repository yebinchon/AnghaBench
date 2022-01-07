; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_mii_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_mii_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.phy_device*, %struct.ifreq*)* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_mii_ioctl(%struct.phy_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %8, align 8
  %15 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %16 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %240 [
    i32 131, label %19
    i32 130, label %26
    i32 128, label %66
    i32 129, label %218
  ]

19:                                               ; preds = %3
  %20 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %25 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %3, %19
  %27 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %28 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mdio_phy_id_is_c45(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %34 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mdio_phy_id_prtad(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %38 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mdio_phy_id_devad(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* @MII_ADDR_C45, align 4
  %42 = load i32, i32* %12, align 4
  %43 = shl i32 %42, 16
  %44 = or i32 %41, %43
  %45 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %46 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  store i32 %48, i32* %12, align 4
  br label %56

49:                                               ; preds = %26
  %50 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %51 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %54 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %49, %32
  %57 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %58 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @mdiobus_read(i32 %60, i32 %61, i32 %62)
  %64 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %65 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %4, align 4
  br label %243

66:                                               ; preds = %3
  %67 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %68 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @mdio_phy_id_is_c45(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %74 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mdio_phy_id_prtad(i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %78 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mdio_phy_id_devad(i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* @MII_ADDR_C45, align 4
  %82 = load i32, i32* %12, align 4
  %83 = shl i32 %82, 16
  %84 = or i32 %81, %83
  %85 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %86 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %84, %87
  store i32 %88, i32* %12, align 4
  br label %96

89:                                               ; preds = %66
  %90 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %91 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %11, align 4
  %93 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %94 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %89, %72
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %99 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %97, %101
  br i1 %102, label %103, label %185

103:                                              ; preds = %96
  %104 = load i32, i32* %12, align 4
  switch i32 %104, label %183 [
    i32 133, label %105
    i32 134, label %171
    i32 132, label %177
  ]

105:                                              ; preds = %103
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @BMCR_RESET, align 4
  %108 = load i32, i32* @BMCR_ANENABLE, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %159

112:                                              ; preds = %105
  %113 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %114 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @AUTONEG_ENABLE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 1, i32* %10, align 4
  br label %119

119:                                              ; preds = %118, %112
  %120 = load i32, i32* @AUTONEG_DISABLE, align 4
  %121 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %122 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @BMCR_FULLDPLX, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load i32, i32* @DUPLEX_FULL, align 4
  %129 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %130 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  br label %135

131:                                              ; preds = %119
  %132 = load i32, i32* @DUPLEX_HALF, align 4
  %133 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %134 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @BMCR_SPEED1000, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @SPEED_1000, align 4
  %142 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %143 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  br label %158

144:                                              ; preds = %135
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @BMCR_SPEED100, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @SPEED_100, align 4
  %151 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %152 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  br label %157

153:                                              ; preds = %144
  %154 = load i32, i32* @SPEED_10, align 4
  %155 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %156 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %153, %149
  br label %158

158:                                              ; preds = %157, %140
  br label %170

159:                                              ; preds = %105
  %160 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %161 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @AUTONEG_DISABLE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  store i32 1, i32* %10, align 4
  br label %166

166:                                              ; preds = %165, %159
  %167 = load i32, i32* @AUTONEG_ENABLE, align 4
  %168 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %169 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %166, %158
  br label %184

171:                                              ; preds = %103
  %172 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %173 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @mii_adv_mod_linkmode_adv_t(i32 %174, i32 %175)
  store i32 1, i32* %10, align 4
  br label %184

177:                                              ; preds = %103
  %178 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %179 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @mii_ctrl1000_mod_linkmode_adv_t(i32 %180, i32 %181)
  store i32 1, i32* %10, align 4
  br label %184

183:                                              ; preds = %103
  br label %184

184:                                              ; preds = %183, %177, %171, %170
  br label %185

185:                                              ; preds = %184, %96
  %186 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %187 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @mdiobus_write(i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %196 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %194, %198
  br i1 %199, label %200, label %211

200:                                              ; preds = %185
  %201 = load i32, i32* %12, align 4
  %202 = icmp eq i32 %201, 133
  br i1 %202, label %203, label %211

203:                                              ; preds = %200
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* @BMCR_RESET, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %210 = call i32 @phy_init_hw(%struct.phy_device* %209)
  store i32 %210, i32* %4, align 4
  br label %243

211:                                              ; preds = %203, %200, %185
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %216 = call i32 @phy_start_aneg(%struct.phy_device* %215)
  store i32 %216, i32* %4, align 4
  br label %243

217:                                              ; preds = %211
  store i32 0, i32* %4, align 4
  br label %243

218:                                              ; preds = %3
  %219 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %220 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %219, i32 0, i32 0
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = icmp ne %struct.TYPE_4__* %221, null
  br i1 %222, label %223, label %239

223:                                              ; preds = %218
  %224 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %225 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %224, i32 0, i32 0
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32 (%struct.phy_device*, %struct.ifreq*)*, i32 (%struct.phy_device*, %struct.ifreq*)** %227, align 8
  %229 = icmp ne i32 (%struct.phy_device*, %struct.ifreq*)* %228, null
  br i1 %229, label %230, label %239

230:                                              ; preds = %223
  %231 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %232 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %231, i32 0, i32 0
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32 (%struct.phy_device*, %struct.ifreq*)*, i32 (%struct.phy_device*, %struct.ifreq*)** %234, align 8
  %236 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %237 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %238 = call i32 %235(%struct.phy_device* %236, %struct.ifreq* %237)
  store i32 %238, i32* %4, align 4
  br label %243

239:                                              ; preds = %223, %218
  br label %240

240:                                              ; preds = %3, %239
  %241 = load i32, i32* @EOPNOTSUPP, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %240, %230, %217, %214, %208, %56
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @mdio_phy_id_is_c45(i32) #1

declare dso_local i32 @mdio_phy_id_prtad(i32) #1

declare dso_local i32 @mdio_phy_id_devad(i32) #1

declare dso_local i32 @mdiobus_read(i32, i32, i32) #1

declare dso_local i32 @mii_adv_mod_linkmode_adv_t(i32, i32) #1

declare dso_local i32 @mii_ctrl1000_mod_linkmode_adv_t(i32, i32) #1

declare dso_local i32 @mdiobus_write(i32, i32, i32, i32) #1

declare dso_local i32 @phy_init_hw(%struct.phy_device*) #1

declare dso_local i32 @phy_start_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
