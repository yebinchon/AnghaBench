; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_validate_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_validate_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.ethhdr, %struct.ethtool_usrip4_spec, %struct.ethtool_tcpip4_spec }
%struct.ethhdr = type { i32, i32, i32 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i32, i32 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MAX_NUM_OF_FS_RULES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FLOW_MAC_EXT = common dso_local global i32 0, align 4
@FLOW_EXT = common dso_local global i32 0, align 4
@ETH_RX_NFC_IP4 = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@VLAN_N_VID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @mlx4_en_validate_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_validate_flow(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.ethtool_usrip4_spec*, align 8
  %7 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %9 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_NUM_OF_FS_RULES, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %242

18:                                               ; preds = %2
  %19 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FLOW_MAC_EXT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @is_broadcast_ether_addr(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %242

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %18
  %39 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FLOW_EXT, align 4
  %44 = load i32, i32* @FLOW_MAC_EXT, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  switch i32 %47, label %177 [
    i32 129, label %48
    i32 128, label %48
    i32 130, label %91
    i32 131, label %145
  ]

48:                                               ; preds = %38, %38
  %49 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %242

59:                                               ; preds = %48
  %60 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store %struct.ethtool_tcpip4_spec* %63, %struct.ethtool_tcpip4_spec** %7, align 8
  %64 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %7, align 8
  %65 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @all_zeros_or_all_ones(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %59
  %70 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %7, align 8
  %71 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @all_zeros_or_all_ones(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %7, align 8
  %77 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @all_zeros_or_all_ones(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %7, align 8
  %83 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @all_zeros_or_all_ones(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %81, %75, %69, %59
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %242

90:                                               ; preds = %81
  br label %180

91:                                               ; preds = %38
  %92 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %93 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  store %struct.ethtool_usrip4_spec* %95, %struct.ethtool_usrip4_spec** %6, align 8
  %96 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %6, align 8
  %97 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %141, label %100

100:                                              ; preds = %91
  %101 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %6, align 8
  %102 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %141, label %105

105:                                              ; preds = %100
  %106 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %6, align 8
  %107 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %141, label %110

110:                                              ; preds = %105
  %111 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %112 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ETH_RX_NFC_IP4, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %141, label %119

119:                                              ; preds = %110
  %120 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %6, align 8
  %121 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %6, align 8
  %126 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %124, %119
  %130 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %6, align 8
  %131 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @all_zeros_or_all_ones(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %6, align 8
  %137 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @all_zeros_or_all_ones(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %135, %129, %124, %110, %105, %100, %91
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %242

144:                                              ; preds = %135
  br label %180

145:                                              ; preds = %38
  %146 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %147 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  store %struct.ethhdr* %149, %struct.ethhdr** %8, align 8
  %150 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %151 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @is_zero_ether_addr(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %145
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %242

158:                                              ; preds = %145
  %159 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %160 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @is_broadcast_ether_addr(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %242

167:                                              ; preds = %158
  %168 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %169 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @all_zeros_or_all_ones(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %167
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %3, align 4
  br label %242

176:                                              ; preds = %167
  br label %180

177:                                              ; preds = %38
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %242

180:                                              ; preds = %176, %144, %90
  %181 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %182 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @FLOW_EXT, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %241

188:                                              ; preds = %180
  %189 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %190 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %217, label %195

195:                                              ; preds = %188
  %196 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %197 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @VLAN_VID_MASK, align 4
  %202 = call i32 @cpu_to_be16(i32 %201)
  %203 = and i32 %200, %202
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %220, label %205

205:                                              ; preds = %195
  %206 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %207 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @VLAN_VID_MASK, align 4
  %212 = call i32 @cpu_to_be16(i32 %211)
  %213 = and i32 %210, %212
  %214 = load i32, i32* @VLAN_VID_MASK, align 4
  %215 = call i32 @cpu_to_be16(i32 %214)
  %216 = icmp eq i32 %213, %215
  br i1 %216, label %220, label %217

217:                                              ; preds = %205, %188
  %218 = load i32, i32* @EINVAL, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %3, align 4
  br label %242

220:                                              ; preds = %205, %195
  %221 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %222 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %220
  %228 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %229 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @be16_to_cpu(i32 %232)
  %234 = load i64, i64* @VLAN_N_VID, align 8
  %235 = icmp sge i64 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %227
  %237 = load i32, i32* @EINVAL, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %3, align 4
  br label %242

239:                                              ; preds = %227
  br label %240

240:                                              ; preds = %239, %220
  br label %241

241:                                              ; preds = %240, %180
  store i32 0, i32* %3, align 4
  br label %242

242:                                              ; preds = %241, %236, %217, %177, %173, %164, %155, %141, %87, %56, %34, %15
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @all_zeros_or_all_ones(i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
