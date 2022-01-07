; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_ethtool_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_ethtool_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_if_info = type { i64 (%struct.net_device*, i32, i32)*, i32, i32, i32, i32 (%struct.net_device*, i32, i32, i64)*, i64, i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@SPEED_10 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PORT_MII = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Half = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Full = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Half = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Full = common dso_local global i64 0, align 8
@ADVERTISED_1000baseT_Half = common dso_local global i64 0, align 8
@ADVERTISED_1000baseT_Full = common dso_local global i64 0, align 8
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
define dso_local i32 @mii_ethtool_set_link_ksettings(%struct.mii_if_info* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mii_if_info*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.mii_if_info* %0, %struct.mii_if_info** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %16 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %17 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %16, i32 0, i32 7
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %6, align 8
  %19 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @SPEED_10, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @SPEED_100, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @SPEED_1000, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %321

37:                                               ; preds = %30, %26, %2
  %38 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DUPLEX_HALF, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DUPLEX_FULL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %321

54:                                               ; preds = %44, %37
  %55 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PORT_MII, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %321

64:                                               ; preds = %54
  %65 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %70 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %321

76:                                               ; preds = %64
  %77 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AUTONEG_DISABLE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %76
  %84 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AUTONEG_ENABLE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %321

93:                                               ; preds = %83, %76
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
  br label %321

105:                                              ; preds = %97, %93
  %106 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %107 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @AUTONEG_ENABLE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %250

112:                                              ; preds = %105
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %113 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %114 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i64* %13, i32 %116)
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* @ADVERTISED_10baseT_Half, align 8
  %120 = load i64, i64* @ADVERTISED_10baseT_Full, align 8
  %121 = or i64 %119, %120
  %122 = load i64, i64* @ADVERTISED_100baseT_Half, align 8
  %123 = or i64 %121, %122
  %124 = load i64, i64* @ADVERTISED_100baseT_Full, align 8
  %125 = or i64 %123, %124
  %126 = load i64, i64* @ADVERTISED_1000baseT_Half, align 8
  %127 = or i64 %125, %126
  %128 = load i64, i64* @ADVERTISED_1000baseT_Full, align 8
  %129 = or i64 %127, %128
  %130 = and i64 %118, %129
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %112
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %321

135:                                              ; preds = %112
  %136 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %137 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %136, i32 0, i32 0
  %138 = load i64 (%struct.net_device*, i32, i32)*, i64 (%struct.net_device*, i32, i32)** %137, align 8
  %139 = load %struct.net_device*, %struct.net_device** %6, align 8
  %140 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %141 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @MII_ADVERTISE, align 4
  %144 = call i64 %138(%struct.net_device* %139, i32 %142, i32 %143)
  store i64 %144, i64* %9, align 8
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* @ADVERTISE_ALL, align 8
  %147 = load i64, i64* @ADVERTISE_100BASE4, align 8
  %148 = or i64 %146, %147
  %149 = xor i64 %148, -1
  %150 = and i64 %145, %149
  store i64 %150, i64* %10, align 8
  %151 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %152 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %135
  %156 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %157 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %156, i32 0, i32 0
  %158 = load i64 (%struct.net_device*, i32, i32)*, i64 (%struct.net_device*, i32, i32)** %157, align 8
  %159 = load %struct.net_device*, %struct.net_device** %6, align 8
  %160 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %161 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @MII_CTRL1000, align 4
  %164 = call i64 %158(%struct.net_device* %159, i32 %162, i32 %163)
  store i64 %164, i64* %11, align 8
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* @ADVERTISE_1000HALF, align 8
  %167 = load i64, i64* @ADVERTISE_1000FULL, align 8
  %168 = or i64 %166, %167
  %169 = xor i64 %168, -1
  %170 = and i64 %165, %169
  store i64 %170, i64* %12, align 8
  br label %171

171:                                              ; preds = %155, %135
  %172 = load i64, i64* %13, align 8
  %173 = call i64 @ethtool_adv_to_mii_adv_t(i64 %172)
  %174 = load i64, i64* %10, align 8
  %175 = or i64 %174, %173
  store i64 %175, i64* %10, align 8
  %176 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %177 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %171
  %181 = load i64, i64* %13, align 8
  %182 = call i64 @ethtool_adv_to_mii_ctrl1000_t(i64 %181)
  %183 = load i64, i64* %12, align 8
  %184 = or i64 %183, %182
  store i64 %184, i64* %12, align 8
  br label %185

185:                                              ; preds = %180, %171
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
  br label %320

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
  store i64 %259, i64* %14, align 8
  %260 = load i64, i64* %14, align 8
  %261 = load i64, i64* @BMCR_ANENABLE, align 8
  %262 = load i64, i64* @BMCR_SPEED100, align 8
  %263 = or i64 %261, %262
  %264 = load i64, i64* @BMCR_SPEED1000, align 8
  %265 = or i64 %263, %264
  %266 = load i64, i64* @BMCR_FULLDPLX, align 8
  %267 = or i64 %265, %266
  %268 = xor i64 %267, -1
  %269 = and i64 %260, %268
  store i64 %269, i64* %15, align 8
  %270 = load i64, i64* %7, align 8
  %271 = load i64, i64* @SPEED_1000, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %250
  %274 = load i64, i64* @BMCR_SPEED1000, align 8
  %275 = load i64, i64* %15, align 8
  %276 = or i64 %275, %274
  store i64 %276, i64* %15, align 8
  br label %286

277:                                              ; preds = %250
  %278 = load i64, i64* %7, align 8
  %279 = load i64, i64* @SPEED_100, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %277
  %282 = load i64, i64* @BMCR_SPEED100, align 8
  %283 = load i64, i64* %15, align 8
  %284 = or i64 %283, %282
  store i64 %284, i64* %15, align 8
  br label %285

285:                                              ; preds = %281, %277
  br label %286

286:                                              ; preds = %285, %273
  %287 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %288 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @DUPLEX_FULL, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %286
  %294 = load i64, i64* @BMCR_FULLDPLX, align 8
  %295 = load i64, i64* %15, align 8
  %296 = or i64 %295, %294
  store i64 %296, i64* %15, align 8
  %297 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %298 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %297, i32 0, i32 2
  store i32 1, i32* %298, align 4
  br label %302

299:                                              ; preds = %286
  %300 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %301 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %300, i32 0, i32 2
  store i32 0, i32* %301, align 4
  br label %302

302:                                              ; preds = %299, %293
  %303 = load i64, i64* %14, align 8
  %304 = load i64, i64* %15, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %317

306:                                              ; preds = %302
  %307 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %308 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %307, i32 0, i32 4
  %309 = load i32 (%struct.net_device*, i32, i32, i64)*, i32 (%struct.net_device*, i32, i32, i64)** %308, align 8
  %310 = load %struct.net_device*, %struct.net_device** %6, align 8
  %311 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %312 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @MII_BMCR, align 4
  %315 = load i64, i64* %15, align 8
  %316 = call i32 %309(%struct.net_device* %310, i32 %313, i32 %314, i64 %315)
  br label %317

317:                                              ; preds = %306, %302
  %318 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %319 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %318, i32 0, i32 1
  store i32 1, i32* %319, align 8
  br label %320

320:                                              ; preds = %317, %223
  store i32 0, i32* %3, align 4
  br label %321

321:                                              ; preds = %320, %132, %102, %90, %73, %61, %51, %34
  %322 = load i32, i32* %3, align 4
  ret i32 %322
}

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i64*, i32) #1

declare dso_local i64 @ethtool_adv_to_mii_adv_t(i64) #1

declare dso_local i64 @ethtool_adv_to_mii_ctrl1000_t(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
