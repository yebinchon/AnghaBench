; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_vsi_sync_fltr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_vsi_sync_fltr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, i32, i32, i32, i64, i32, i32, %struct.net_device*, %struct.ice_pf* }
%struct.net_device = type { i32 }
%struct.ice_pf = type { %struct.ice_hw, %struct.TYPE_3__* }
%struct.ice_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@__ICE_CFG_BUSY = common dso_local global i32 0, align 4
@ICE_VSI_FLAG_UMAC_FLTR_CHANGED = common dso_local global i32 0, align 4
@ICE_VSI_FLAG_MMAC_FLTR_CHANGED = common dso_local global i32 0, align 4
@ICE_VSI_FLAG_VLAN_FLTR_CHANGED = common dso_local global i32 0, align 4
@ice_add_mac_to_sync_list = common dso_local global i32 0, align 4
@ice_add_mac_to_unsync_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to delete MAC filters\0A\00", align 1
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_ERR_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to add MAC filters\0A\00", align 1
@ICE_AQ_RC_ENOSPC = common dso_local global i64 0, align 8
@__ICE_FLTR_OVERFLOW_PROMISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Reached MAC filter limit, forcing promisc mode on VSI %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ICE_MCAST_VLAN_PROMISC_BITS = common dso_local global i32 0, align 4
@ICE_MCAST_PROMISC_BITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Error setting Multicast promiscuous mode on VSI %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Error clearing Multicast promiscuous mode on VSI %i\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@ICE_VSI_FLAG_PROMISC_CHANGED = common dso_local global i32 0, align 4
@ICE_FLTR_RX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Error setting default VSI %i Rx rule\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Error clearing default VSI %i Rx rule\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*)* @ice_vsi_sync_fltr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_sync_fltr(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_pf*, align 8
  %8 = alloca %struct.ice_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %14 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %13, i32 0, i32 9
  %15 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  %16 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %4, align 8
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %20 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %19, i32 0, i32 8
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  %22 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %23 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %22, i32 0, i32 9
  %24 = load %struct.ice_pf*, %struct.ice_pf** %23, align 8
  store %struct.ice_pf* %24, %struct.ice_pf** %7, align 8
  %25 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %26 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %25, i32 0, i32 0
  store %struct.ice_hw* %26, %struct.ice_hw** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %28 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %27, i32 0, i32 8
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  %30 = icmp ne %struct.net_device* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %336

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %42, %34
  %36 = load i32, i32* @__ICE_CFG_BUSY, align 4
  %37 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %38 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @test_and_set_bit(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %35

44:                                               ; preds = %35
  %45 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %46 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %49 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %48, i32 0, i32 8
  %50 = load %struct.net_device*, %struct.net_device** %49, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %47, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %55 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %54, i32 0, i32 8
  %56 = load %struct.net_device*, %struct.net_device** %55, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %60 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %62 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %61, i32 0, i32 6
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %65 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %64, i32 0, i32 7
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %68 = call i64 @ice_vsi_fltr_changed(%struct.ice_vsi* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %44
  %71 = load i32, i32* @ICE_VSI_FLAG_UMAC_FLTR_CHANGED, align 4
  %72 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %73 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @clear_bit(i32 %71, i32 %74)
  %76 = load i32, i32* @ICE_VSI_FLAG_MMAC_FLTR_CHANGED, align 4
  %77 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %78 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @clear_bit(i32 %76, i32 %79)
  %81 = load i32, i32* @ICE_VSI_FLAG_VLAN_FLTR_CHANGED, align 4
  %82 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %83 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @clear_bit(i32 %81, i32 %84)
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = call i32 @netif_addr_lock_bh(%struct.net_device* %86)
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = load i32, i32* @ice_add_mac_to_sync_list, align 4
  %90 = load i32, i32* @ice_add_mac_to_unsync_list, align 4
  %91 = call i32 @__dev_uc_sync(%struct.net_device* %88, i32 %89, i32 %90)
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = load i32, i32* @ice_add_mac_to_sync_list, align 4
  %94 = load i32, i32* @ice_add_mac_to_unsync_list, align 4
  %95 = call i32 @__dev_mc_sync(%struct.net_device* %92, i32 %93, i32 %94)
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = call i32 @netif_addr_unlock_bh(%struct.net_device* %96)
  br label %98

98:                                               ; preds = %70, %44
  %99 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %100 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %101 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %100, i32 0, i32 7
  %102 = call i32 @ice_remove_mac(%struct.ice_hw* %99, i32* %101)
  store i32 %102, i32* %9, align 4
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %105 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %104, i32 0, i32 7
  %106 = call i32 @ice_free_fltr_list(%struct.device* %103, i32* %105)
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %98
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %12, align 4
  br label %318

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %98
  %120 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %121 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %122 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %121, i32 0, i32 6
  %123 = call i32 @ice_add_mac(%struct.ice_hw* %120, i32* %122)
  store i32 %123, i32* %9, align 4
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %126 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %125, i32 0, i32 6
  %127 = call i32 @ice_free_fltr_list(%struct.device* %124, i32* %126)
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %160

130:                                              ; preds = %119
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @ICE_ERR_ALREADY_EXISTS, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %160

134:                                              ; preds = %130
  %135 = load %struct.net_device*, %struct.net_device** %5, align 8
  %136 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %137 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %138 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @ICE_AQ_RC_ENOSPC, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %134
  %144 = load i32, i32* @__ICE_FLTR_OVERFLOW_PROMISC, align 4
  %145 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %146 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @test_and_set_bit(i32 %144, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %143
  store i32 1, i32* %6, align 4
  %151 = load %struct.net_device*, %struct.net_device** %5, align 8
  %152 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %153 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @netdev_warn(%struct.net_device* %151, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  br label %159

156:                                              ; preds = %143, %134
  %157 = load i32, i32* @EIO, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %12, align 4
  br label %318

159:                                              ; preds = %150
  br label %160

160:                                              ; preds = %159, %130, %119
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @IFF_ALLMULTI, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %236

165:                                              ; preds = %160
  %166 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %167 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @IFF_ALLMULTI, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %200

172:                                              ; preds = %165
  %173 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %174 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* @ICE_MCAST_VLAN_PROMISC_BITS, align 4
  store i32 %178, i32* %11, align 4
  br label %181

179:                                              ; preds = %172
  %180 = load i32, i32* @ICE_MCAST_PROMISC_BITS, align 4
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @ice_cfg_promisc(%struct.ice_vsi* %182, i32 %183, i32 1)
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %181
  %188 = load %struct.net_device*, %struct.net_device** %5, align 8
  %189 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %190 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %188, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @IFF_ALLMULTI, align 4
  %194 = xor i32 %193, -1
  %195 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %196 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = and i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %312

199:                                              ; preds = %181
  br label %235

200:                                              ; preds = %165
  %201 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %202 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @IFF_ALLMULTI, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %234, label %207

207:                                              ; preds = %200
  %208 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %209 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i32, i32* @ICE_MCAST_VLAN_PROMISC_BITS, align 4
  store i32 %213, i32* %11, align 4
  br label %216

214:                                              ; preds = %207
  %215 = load i32, i32* @ICE_MCAST_PROMISC_BITS, align 4
  store i32 %215, i32* %11, align 4
  br label %216

216:                                              ; preds = %214, %212
  %217 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @ice_cfg_promisc(%struct.ice_vsi* %217, i32 %218, i32 0)
  store i32 %219, i32* %12, align 4
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %216
  %223 = load %struct.net_device*, %struct.net_device** %5, align 8
  %224 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %225 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %223, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* @IFF_ALLMULTI, align 4
  %229 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %230 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %312

233:                                              ; preds = %216
  br label %234

234:                                              ; preds = %233, %200
  br label %235

235:                                              ; preds = %234, %199
  br label %236

236:                                              ; preds = %235, %160
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @IFF_PROMISC, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %251, label %241

241:                                              ; preds = %236
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %251, label %244

244:                                              ; preds = %241
  %245 = load i32, i32* @ICE_VSI_FLAG_PROMISC_CHANGED, align 4
  %246 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %247 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = call i64 @test_bit(i32 %245, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %311

251:                                              ; preds = %244, %241, %236
  %252 = load i32, i32* @ICE_VSI_FLAG_PROMISC_CHANGED, align 4
  %253 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %254 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @clear_bit(i32 %252, i32 %255)
  %257 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %258 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @IFF_PROMISC, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %287

263:                                              ; preds = %251
  %264 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %265 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %266 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @ICE_FLTR_RX, align 4
  %269 = call i32 @ice_cfg_dflt_vsi(%struct.ice_hw* %264, i32 %267, i32 1, i32 %268)
  store i32 %269, i32* %9, align 4
  %270 = load i32, i32* %9, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %286

272:                                              ; preds = %263
  %273 = load %struct.net_device*, %struct.net_device** %5, align 8
  %274 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %275 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %273, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %276)
  %278 = load i32, i32* @IFF_PROMISC, align 4
  %279 = xor i32 %278, -1
  %280 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %281 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = and i32 %282, %279
  store i32 %283, i32* %281, align 8
  %284 = load i32, i32* @EIO, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %12, align 4
  br label %312

286:                                              ; preds = %263
  br label %310

287:                                              ; preds = %251
  %288 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %289 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %290 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @ICE_FLTR_RX, align 4
  %293 = call i32 @ice_cfg_dflt_vsi(%struct.ice_hw* %288, i32 %291, i32 0, i32 %292)
  store i32 %293, i32* %9, align 4
  %294 = load i32, i32* %9, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %309

296:                                              ; preds = %287
  %297 = load %struct.net_device*, %struct.net_device** %5, align 8
  %298 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %299 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %297, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %300)
  %302 = load i32, i32* @IFF_PROMISC, align 4
  %303 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %304 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 8
  %307 = load i32, i32* @EIO, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %12, align 4
  br label %312

309:                                              ; preds = %287
  br label %310

310:                                              ; preds = %309, %286
  br label %311

311:                                              ; preds = %310, %244
  br label %329

312:                                              ; preds = %296, %272, %222, %187
  %313 = load i32, i32* @ICE_VSI_FLAG_PROMISC_CHANGED, align 4
  %314 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %315 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @set_bit(i32 %313, i32 %316)
  br label %329

318:                                              ; preds = %156, %115
  %319 = load i32, i32* @ICE_VSI_FLAG_UMAC_FLTR_CHANGED, align 4
  %320 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %321 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @set_bit(i32 %319, i32 %322)
  %324 = load i32, i32* @ICE_VSI_FLAG_MMAC_FLTR_CHANGED, align 4
  %325 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %326 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @set_bit(i32 %324, i32 %327)
  br label %329

329:                                              ; preds = %318, %312, %311
  %330 = load i32, i32* @__ICE_CFG_BUSY, align 4
  %331 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %332 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @clear_bit(i32 %330, i32 %333)
  %335 = load i32, i32* %12, align 4
  store i32 %335, i32* %2, align 4
  br label %336

336:                                              ; preds = %329, %31
  %337 = load i32, i32* %2, align 4
  ret i32 %337
}

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @ice_vsi_fltr_changed(%struct.ice_vsi*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @netif_addr_lock_bh(%struct.net_device*) #1

declare dso_local i32 @__dev_uc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @__dev_mc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netif_addr_unlock_bh(%struct.net_device*) #1

declare dso_local i32 @ice_remove_mac(%struct.ice_hw*, i32*) #1

declare dso_local i32 @ice_free_fltr_list(%struct.device*, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @ice_add_mac(%struct.ice_hw*, i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @ice_cfg_promisc(%struct.ice_vsi*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ice_cfg_dflt_vsi(%struct.ice_hw*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
