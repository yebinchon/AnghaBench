; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_natsemi.c_netdev_set_ecmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_natsemi.c_netdev_set_ecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.netdev_private = type { i64, i32, i32, i64, i64, i64, i64 }

@PORT_TP = common dso_local global i64 0, align 8
@PORT_MII = common dso_local global i64 0, align 8
@PORT_FIBRE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Half = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Full = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Half = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Full = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PhyAddrMask = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_100BASE4 = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @netdev_set_ecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_set_ecmd(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.netdev_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %9)
  store %struct.netdev_private* %10, %struct.netdev_private** %6, align 8
  %11 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i64* %7, i32 %14)
  %16 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PORT_TP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PORT_MII, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PORT_FIBRE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %246

39:                                               ; preds = %29, %22, %2
  %40 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AUTONEG_ENABLE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @ADVERTISED_10baseT_Half, align 8
  %49 = load i64, i64* @ADVERTISED_10baseT_Full, align 8
  %50 = or i64 %48, %49
  %51 = load i64, i64* @ADVERTISED_100baseT_Half, align 8
  %52 = or i64 %50, %51
  %53 = load i64, i64* @ADVERTISED_100baseT_Full, align 8
  %54 = or i64 %52, %53
  %55 = and i64 %47, %54
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %246

60:                                               ; preds = %46
  br label %105

61:                                               ; preds = %39
  %62 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AUTONEG_DISABLE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %61
  %69 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @SPEED_10, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @SPEED_100, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %246

83:                                               ; preds = %76, %68
  %84 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DUPLEX_HALF, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DUPLEX_FULL, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %246

100:                                              ; preds = %90, %83
  br label %104

101:                                              ; preds = %61
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %246

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %60
  %106 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %107 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %105
  %111 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %112 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AUTONEG_ENABLE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %124, label %117

117:                                              ; preds = %110
  %118 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %119 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PORT_TP, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %117, %110
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %246

127:                                              ; preds = %117, %105
  %128 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %135 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %139 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %141 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @PhyAddrMask, align 4
  %145 = and i32 %143, %144
  %146 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %147 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %149 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AUTONEG_ENABLE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %206

153:                                              ; preds = %127
  %154 = load i32, i32* @ADVERTISE_ALL, align 4
  %155 = load i32, i32* @ADVERTISE_100BASE4, align 4
  %156 = or i32 %154, %155
  %157 = xor i32 %156, -1
  %158 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %159 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load i64, i64* %7, align 8
  %163 = load i64, i64* @ADVERTISED_10baseT_Half, align 8
  %164 = and i64 %162, %163
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %153
  %167 = load i32, i32* @ADVERTISE_10HALF, align 4
  %168 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %169 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %153
  %173 = load i64, i64* %7, align 8
  %174 = load i64, i64* @ADVERTISED_10baseT_Full, align 8
  %175 = and i64 %173, %174
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i32, i32* @ADVERTISE_10FULL, align 4
  %179 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %180 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %172
  %184 = load i64, i64* %7, align 8
  %185 = load i64, i64* @ADVERTISED_100baseT_Half, align 8
  %186 = and i64 %184, %185
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load i32, i32* @ADVERTISE_100HALF, align 4
  %190 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %191 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %188, %183
  %195 = load i64, i64* %7, align 8
  %196 = load i64, i64* @ADVERTISED_100baseT_Full, align 8
  %197 = and i64 %195, %196
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load i32, i32* @ADVERTISE_100FULL, align 4
  %201 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %202 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %199, %194
  br label %228

206:                                              ; preds = %127
  %207 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %208 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %212 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %211, i32 0, i32 3
  store i64 %210, i64* %212, align 8
  %213 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %214 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %218 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %217, i32 0, i32 4
  store i64 %216, i64* %218, align 8
  %219 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %220 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @DUPLEX_HALF, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %206
  %225 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %226 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %225, i32 0, i32 5
  store i64 0, i64* %226, align 8
  br label %227

227:                                              ; preds = %224, %206
  br label %228

228:                                              ; preds = %227, %205
  %229 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %230 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @PORT_TP, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load %struct.net_device*, %struct.net_device** %4, align 8
  %237 = call i32 @switch_port_internal(%struct.net_device* %236)
  br label %241

238:                                              ; preds = %228
  %239 = load %struct.net_device*, %struct.net_device** %4, align 8
  %240 = call i32 @switch_port_external(%struct.net_device* %239)
  br label %241

241:                                              ; preds = %238, %235
  %242 = load %struct.net_device*, %struct.net_device** %4, align 8
  %243 = call i32 @init_phy_fixup(%struct.net_device* %242)
  %244 = load %struct.net_device*, %struct.net_device** %4, align 8
  %245 = call i32 @check_link(%struct.net_device* %244)
  store i32 0, i32* %3, align 4
  br label %246

246:                                              ; preds = %241, %124, %101, %97, %80, %57, %36
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i64*, i32) #1

declare dso_local i32 @switch_port_internal(%struct.net_device*) #1

declare dso_local i32 @switch_port_external(%struct.net_device*) #1

declare dso_local i32 @init_phy_fixup(%struct.net_device*) #1

declare dso_local i32 @check_link(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
