; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_ethtool_sset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_ethtool_sset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_if_info = type { i64 (%struct.net_device*, i32, i32)*, i32, i32, i32, i32 (%struct.net_device*, i32, i32, i64)*, i64, i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i64, i64, i32, i32 }

@SPEED_10 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PORT_MII = common dso_local global i64 0, align 8
@XCVR_INTERNAL = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i64 0, align 8
@ADVERTISE_100BASE4 = common dso_local global i64 0, align 8
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i64 0, align 8
@ADVERTISE_1000FULL = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i64 0, align 8
@BMCR_ANRESTART = common dso_local global i64 0, align 8
@BMCR_SPEED100 = common dso_local global i64 0, align 8
@BMCR_SPEED1000 = common dso_local global i64 0, align 8
@BMCR_FULLDPLX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mii_ethtool_sset(%struct.mii_if_info* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mii_if_info*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.mii_if_info* %0, %struct.mii_if_info** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %15 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %16 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %15, i32 0, i32 7
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %6, align 8
  %18 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %19 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @SPEED_10, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @SPEED_100, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @SPEED_1000, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %320

34:                                               ; preds = %27, %23, %2
  %35 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DUPLEX_HALF, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DUPLEX_FULL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %320

49:                                               ; preds = %40, %34
  %50 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PORT_MII, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %320

58:                                               ; preds = %49
  %59 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @XCVR_INTERNAL, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %320

67:                                               ; preds = %58
  %68 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %72 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %320

78:                                               ; preds = %67
  %79 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AUTONEG_DISABLE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AUTONEG_ENABLE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %320

93:                                               ; preds = %84, %78
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @SPEED_1000, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %99 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %320

105:                                              ; preds = %97, %93
  %106 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %107 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AUTONEG_ENABLE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %250

111:                                              ; preds = %105
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %112 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %113 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %116 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %114, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %111
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %320

131:                                              ; preds = %111
  %132 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %133 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %132, i32 0, i32 0
  %134 = load i64 (%struct.net_device*, i32, i32)*, i64 (%struct.net_device*, i32, i32)** %133, align 8
  %135 = load %struct.net_device*, %struct.net_device** %6, align 8
  %136 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %137 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MII_ADVERTISE, align 4
  %140 = call i64 %134(%struct.net_device* %135, i32 %138, i32 %139)
  store i64 %140, i64* %9, align 8
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* @ADVERTISE_ALL, align 8
  %143 = load i64, i64* @ADVERTISE_100BASE4, align 8
  %144 = or i64 %142, %143
  %145 = xor i64 %144, -1
  %146 = and i64 %141, %145
  store i64 %146, i64* %10, align 8
  %147 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %148 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %131
  %152 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %153 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %152, i32 0, i32 0
  %154 = load i64 (%struct.net_device*, i32, i32)*, i64 (%struct.net_device*, i32, i32)** %153, align 8
  %155 = load %struct.net_device*, %struct.net_device** %6, align 8
  %156 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %157 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @MII_CTRL1000, align 4
  %160 = call i64 %154(%struct.net_device* %155, i32 %158, i32 %159)
  store i64 %160, i64* %11, align 8
  %161 = load i64, i64* %11, align 8
  %162 = load i64, i64* @ADVERTISE_1000HALF, align 8
  %163 = load i64, i64* @ADVERTISE_1000FULL, align 8
  %164 = or i64 %162, %163
  %165 = xor i64 %164, -1
  %166 = and i64 %161, %165
  store i64 %166, i64* %12, align 8
  br label %167

167:                                              ; preds = %151, %131
  %168 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %169 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @ethtool_adv_to_mii_adv_t(i32 %170)
  %172 = load i64, i64* %10, align 8
  %173 = or i64 %172, %171
  store i64 %173, i64* %10, align 8
  %174 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %175 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %167
  %179 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %180 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @ethtool_adv_to_mii_ctrl1000_t(i32 %181)
  %183 = load i64, i64* %12, align 8
  %184 = or i64 %183, %182
  store i64 %184, i64* %12, align 8
  br label %185

185:                                              ; preds = %178, %167
  %186 = load i64, i64* %9, align 8
  %187 = load i64, i64* %10, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %191 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %190, i32 0, i32 4
  %192 = load i32 (%struct.net_device*, i32, i32, i64)*, i32 (%struct.net_device*, i32, i32, i64)** %191, align 8
  %193 = load %struct.net_device*, %struct.net_device** %6, align 8
  %194 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %195 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @MII_ADVERTISE, align 4
  %198 = load i64, i64* %10, align 8
  %199 = call i32 %192(%struct.net_device* %193, i32 %196, i32 %197, i64 %198)
  %200 = load i64, i64* %10, align 8
  %201 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %202 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %201, i32 0, i32 6
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %189, %185
  %204 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %205 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %204, i32 0, i32 5
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %223

208:                                              ; preds = %203
  %209 = load i64, i64* %11, align 8
  %210 = load i64, i64* %12, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %223

212:                                              ; preds = %208
  %213 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %214 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %213, i32 0, i32 4
  %215 = load i32 (%struct.net_device*, i32, i32, i64)*, i32 (%struct.net_device*, i32, i32, i64)** %214, align 8
  %216 = load %struct.net_device*, %struct.net_device** %6, align 8
  %217 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %218 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @MII_CTRL1000, align 4
  %221 = load i64, i64* %12, align 8
  %222 = call i32 %215(%struct.net_device* %216, i32 %219, i32 %220, i64 %221)
  br label %223

223:                                              ; preds = %212, %208, %203
  %224 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %225 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %224, i32 0, i32 0
  %226 = load i64 (%struct.net_device*, i32, i32)*, i64 (%struct.net_device*, i32, i32)** %225, align 8
  %227 = load %struct.net_device*, %struct.net_device** %6, align 8
  %228 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %229 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @MII_BMCR, align 4
  %232 = call i64 %226(%struct.net_device* %227, i32 %230, i32 %231)
  store i64 %232, i64* %8, align 8
  %233 = load i64, i64* @BMCR_ANENABLE, align 8
  %234 = load i64, i64* @BMCR_ANRESTART, align 8
  %235 = or i64 %233, %234
  %236 = load i64, i64* %8, align 8
  %237 = or i64 %236, %235
  store i64 %237, i64* %8, align 8
  %238 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %239 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %238, i32 0, i32 4
  %240 = load i32 (%struct.net_device*, i32, i32, i64)*, i32 (%struct.net_device*, i32, i32, i64)** %239, align 8
  %241 = load %struct.net_device*, %struct.net_device** %6, align 8
  %242 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %243 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @MII_BMCR, align 4
  %246 = load i64, i64* %8, align 8
  %247 = call i32 %240(%struct.net_device* %241, i32 %244, i32 %245, i64 %246)
  %248 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %249 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %248, i32 0, i32 1
  store i32 0, i32* %249, align 8
  br label %319

250:                                              ; preds = %105
  %251 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %252 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %251, i32 0, i32 0
  %253 = load i64 (%struct.net_device*, i32, i32)*, i64 (%struct.net_device*, i32, i32)** %252, align 8
  %254 = load %struct.net_device*, %struct.net_device** %6, align 8
  %255 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %256 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @MII_BMCR, align 4
  %259 = call i64 %253(%struct.net_device* %254, i32 %257, i32 %258)
  store i64 %259, i64* %13, align 8
  %260 = load i64, i64* %13, align 8
  %261 = load i64, i64* @BMCR_ANENABLE, align 8
  %262 = load i64, i64* @BMCR_SPEED100, align 8
  %263 = or i64 %261, %262
  %264 = load i64, i64* @BMCR_SPEED1000, align 8
  %265 = or i64 %263, %264
  %266 = load i64, i64* @BMCR_FULLDPLX, align 8
  %267 = or i64 %265, %266
  %268 = xor i64 %267, -1
  %269 = and i64 %260, %268
  store i64 %269, i64* %14, align 8
  %270 = load i64, i64* %7, align 8
  %271 = load i64, i64* @SPEED_1000, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %250
  %274 = load i64, i64* @BMCR_SPEED1000, align 8
  %275 = load i64, i64* %14, align 8
  %276 = or i64 %275, %274
  store i64 %276, i64* %14, align 8
  br label %286

277:                                              ; preds = %250
  %278 = load i64, i64* %7, align 8
  %279 = load i64, i64* @SPEED_100, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %277
  %282 = load i64, i64* @BMCR_SPEED100, align 8
  %283 = load i64, i64* %14, align 8
  %284 = or i64 %283, %282
  store i64 %284, i64* %14, align 8
  br label %285

285:                                              ; preds = %281, %277
  br label %286

286:                                              ; preds = %285, %273
  %287 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %288 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @DUPLEX_FULL, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %286
  %293 = load i64, i64* @BMCR_FULLDPLX, align 8
  %294 = load i64, i64* %14, align 8
  %295 = or i64 %294, %293
  store i64 %295, i64* %14, align 8
  %296 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %297 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %296, i32 0, i32 2
  store i32 1, i32* %297, align 4
  br label %301

298:                                              ; preds = %286
  %299 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %300 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %299, i32 0, i32 2
  store i32 0, i32* %300, align 4
  br label %301

301:                                              ; preds = %298, %292
  %302 = load i64, i64* %13, align 8
  %303 = load i64, i64* %14, align 8
  %304 = icmp ne i64 %302, %303
  br i1 %304, label %305, label %316

305:                                              ; preds = %301
  %306 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %307 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %306, i32 0, i32 4
  %308 = load i32 (%struct.net_device*, i32, i32, i64)*, i32 (%struct.net_device*, i32, i32, i64)** %307, align 8
  %309 = load %struct.net_device*, %struct.net_device** %6, align 8
  %310 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %311 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @MII_BMCR, align 4
  %314 = load i64, i64* %14, align 8
  %315 = call i32 %308(%struct.net_device* %309, i32 %312, i32 %313, i64 %314)
  br label %316

316:                                              ; preds = %305, %301
  %317 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %318 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %317, i32 0, i32 1
  store i32 1, i32* %318, align 8
  br label %319

319:                                              ; preds = %316, %223
  store i32 0, i32* %3, align 4
  br label %320

320:                                              ; preds = %319, %128, %102, %90, %75, %64, %55, %46, %31
  %321 = load i32, i32* %3, align 4
  ret i32 %321
}

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i64 @ethtool_adv_to_mii_adv_t(i32) #1

declare dso_local i64 @ethtool_adv_to_mii_ctrl1000_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
