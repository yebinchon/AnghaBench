; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_ndo_set_vf_port_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_ndo_set_vf_port_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32, %struct.TYPE_13__*, %struct.i40e_vsi**, %struct.i40e_vf* }
%struct.TYPE_13__ = type { i32 }
%struct.i40e_vsi = type { i32, %struct.TYPE_12__, %struct.TYPE_14__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.i40e_vf = type { i64, i32, i32, i32 }

@I40E_VLAN_PRIORITY_SHIFT = common dso_local global i32 0, align 4
@__I40E_VIRTCHNL_OP_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to configure VFs, other operation is pending.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@I40E_MAX_VLANID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid VF Parameters\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"VF VLAN protocol is not supported\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@I40E_VF_STATE_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"VF %d still in reset. Try again.\0A\00", align 1
@.str.4 = private unnamed_addr constant [172 x i8] c"VF %d has already configured VLAN filters and the administrator is requesting a port VLAN override.\0APlease unload and reload the VF driver for this change to take effect.\0A\00", align 1
@I40E_VLAN_ANY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"add VF VLAN failed, ret=%d aq_err=%d\0A\00", align 1
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Unable to config VF promiscuous mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Setting VLAN %d, QOS 0x%x on VF %d\0A\00", align 1
@I40E_VF_STATE_UC_PROMISC = common dso_local global i32 0, align 4
@I40E_VF_STATE_MC_PROMISC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Unable to update VF vsi context\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Unable to config vf promiscuous mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_ndo_set_vf_port_vlan(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.i40e_netdev_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.i40e_pf*, align 8
  %17 = alloca %struct.i40e_vsi*, align 8
  %18 = alloca %struct.i40e_vf*, align 8
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @I40E_VLAN_PRIORITY_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  store i32 %24, i32* %12, align 4
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %25)
  store %struct.i40e_netdev_priv* %26, %struct.i40e_netdev_priv** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %27 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %13, align 8
  %28 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %30, align 8
  store %struct.i40e_pf* %31, %struct.i40e_pf** %16, align 8
  store i32 0, i32* %19, align 4
  %32 = load i32, i32* @__I40E_VIRTCHNL_OP_PENDING, align 4
  %33 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %34 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @test_and_set_bit(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %5
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %341

46:                                               ; preds = %5
  %47 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @i40e_validate_vf(%struct.i40e_pf* %47, i32 %48)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %334

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @I40E_MAX_VLANID, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %58, 7
  br i1 %59, label %60, label %68

60:                                               ; preds = %57, %53
  %61 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %62 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %61, i32 0, i32 1
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %19, align 4
  br label %334

68:                                               ; preds = %57
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* @ETH_P_8021Q, align 4
  %71 = call i64 @htons(i32 %70)
  %72 = icmp ne i64 %69, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %75 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %74, i32 0, i32 1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @EPROTONOSUPPORT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %19, align 4
  br label %334

81:                                               ; preds = %68
  %82 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %83 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %82, i32 0, i32 3
  %84 = load %struct.i40e_vf*, %struct.i40e_vf** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %84, i64 %86
  store %struct.i40e_vf* %87, %struct.i40e_vf** %18, align 8
  %88 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %89 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %88, i32 0, i32 2
  %90 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %89, align 8
  %91 = load %struct.i40e_vf*, %struct.i40e_vf** %18, align 8
  %92 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %90, i64 %93
  %95 = load %struct.i40e_vsi*, %struct.i40e_vsi** %94, align 8
  store %struct.i40e_vsi* %95, %struct.i40e_vsi** %17, align 8
  %96 = load i32, i32* @I40E_VF_STATE_INIT, align 4
  %97 = load %struct.i40e_vf*, %struct.i40e_vf** %18, align 8
  %98 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %97, i32 0, i32 2
  %99 = call i64 @test_bit(i32 %96, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %81
  %102 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %103 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %102, i32 0, i32 1
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (i32*, i8*, ...) @dev_err(i32* %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EAGAIN, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %19, align 4
  br label %334

110:                                              ; preds = %81
  %111 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %112 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @le16_to_cpu(i64 %114)
  %116 = load i32, i32* %12, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %334

119:                                              ; preds = %110
  %120 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %121 = call i64 @i40e_vsi_has_vlans(%struct.i40e_vsi* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %119
  %124 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %125 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %124, i32 0, i32 1
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %8, align 4
  %129 = call i32 (i32*, i8*, ...) @dev_err(i32* %127, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = load %struct.i40e_vf*, %struct.i40e_vf** %18, align 8
  %131 = call i32 @i40e_vc_disable_vf(%struct.i40e_vf* %130)
  %132 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %133 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %132, i32 0, i32 2
  %134 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %133, align 8
  %135 = load %struct.i40e_vf*, %struct.i40e_vf** %18, align 8
  %136 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %134, i64 %137
  %139 = load %struct.i40e_vsi*, %struct.i40e_vsi** %138, align 8
  store %struct.i40e_vsi* %139, %struct.i40e_vsi** %17, align 8
  br label %140

140:                                              ; preds = %123, %119
  %141 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %142 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %141, i32 0, i32 3
  %143 = call i32 @spin_lock_bh(i32* %142)
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %140
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %146, %140
  %150 = load i32, i32* %12, align 4
  %151 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %152 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @le16_to_cpu(i64 %154)
  %156 = icmp ne i32 %150, %155
  br i1 %156, label %157, label %189

157:                                              ; preds = %149, %146
  %158 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %159 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %189

163:                                              ; preds = %157
  %164 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %165 = load i32, i32* @I40E_VLAN_ANY, align 4
  %166 = call i32 @i40e_add_vlan_all_mac(%struct.i40e_vsi* %164, i32 %165)
  store i32 %166, i32* %19, align 4
  %167 = load i32, i32* %19, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %163
  %170 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %171 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %170, i32 0, i32 2
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %19, align 4
  %177 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %178 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %177, i32 0, i32 2
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %175, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %176, i32 %183)
  %185 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %186 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %185, i32 0, i32 3
  %187 = call i32 @spin_unlock_bh(i32* %186)
  br label %334

188:                                              ; preds = %163
  br label %189

189:                                              ; preds = %188, %157, %149
  %190 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %191 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %189
  %196 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %197 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %198 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @le16_to_cpu(i64 %200)
  %202 = load i32, i32* @VLAN_VID_MASK, align 4
  %203 = and i32 %201, %202
  %204 = call i32 @i40e_rm_vlan_all_mac(%struct.i40e_vsi* %196, i32 %203)
  br label %205

205:                                              ; preds = %195, %189
  %206 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %207 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %206, i32 0, i32 3
  %208 = call i32 @spin_unlock_bh(i32* %207)
  %209 = load %struct.i40e_vf*, %struct.i40e_vf** %18, align 8
  %210 = load %struct.i40e_vf*, %struct.i40e_vf** %18, align 8
  %211 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %15, align 4
  %215 = call i32 @i40e_config_vf_promiscuous_mode(%struct.i40e_vf* %209, i32 %212, i32 %213, i32 %214)
  store i32 %215, i32* %19, align 4
  %216 = load i32, i32* %19, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %205
  %219 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %220 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %219, i32 0, i32 1
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = call i32 (i32*, i8*, ...) @dev_err(i32* %222, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %334

224:                                              ; preds = %205
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227, %224
  %231 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %232 = load i32, i32* %12, align 4
  %233 = call i32 @i40e_vsi_add_pvid(%struct.i40e_vsi* %231, i32 %232)
  store i32 %233, i32* %19, align 4
  br label %237

234:                                              ; preds = %227
  %235 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %236 = call i32 @i40e_vsi_remove_pvid(%struct.i40e_vsi* %235)
  br label %237

237:                                              ; preds = %234, %230
  %238 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %239 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %238, i32 0, i32 3
  %240 = call i32 @spin_lock_bh(i32* %239)
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %280

243:                                              ; preds = %237
  %244 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %245 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %244, i32 0, i32 1
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %8, align 4
  %251 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %247, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %248, i32 %249, i32 %250)
  %252 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %253 = load i32, i32* %9, align 4
  %254 = call i32 @i40e_add_vlan_all_mac(%struct.i40e_vsi* %252, i32 %253)
  store i32 %254, i32* %19, align 4
  %255 = load i32, i32* %19, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %276

257:                                              ; preds = %243
  %258 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %259 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %258, i32 0, i32 2
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i32, i32* %19, align 4
  %265 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %266 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %265, i32 0, i32 2
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %263, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %264, i32 %271)
  %273 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %274 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %273, i32 0, i32 3
  %275 = call i32 @spin_unlock_bh(i32* %274)
  br label %334

276:                                              ; preds = %243
  %277 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %278 = load i32, i32* @I40E_VLAN_ANY, align 4
  %279 = call i32 @i40e_rm_vlan_all_mac(%struct.i40e_vsi* %277, i32 %278)
  br label %280

280:                                              ; preds = %276, %237
  %281 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %282 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %281, i32 0, i32 3
  %283 = call i32 @spin_unlock_bh(i32* %282)
  %284 = load i32, i32* @I40E_VF_STATE_UC_PROMISC, align 4
  %285 = load %struct.i40e_vf*, %struct.i40e_vf** %18, align 8
  %286 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %285, i32 0, i32 2
  %287 = call i64 @test_bit(i32 %284, i32* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %280
  store i32 1, i32* %15, align 4
  br label %290

290:                                              ; preds = %289, %280
  %291 = load i32, i32* @I40E_VF_STATE_MC_PROMISC, align 4
  %292 = load %struct.i40e_vf*, %struct.i40e_vf** %18, align 8
  %293 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %292, i32 0, i32 2
  %294 = call i64 @test_bit(i32 %291, i32* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %290
  store i32 1, i32* %14, align 4
  br label %297

297:                                              ; preds = %296, %290
  %298 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %299 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %298, i32 0, i32 2
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %299, align 8
  %301 = call i32 @i40e_service_event_schedule(%struct.TYPE_14__* %300)
  %302 = load i32, i32* %19, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %297
  %305 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %306 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %305, i32 0, i32 1
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 0
  %309 = call i32 (i32*, i8*, ...) @dev_err(i32* %308, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %334

310:                                              ; preds = %297
  %311 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %312 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @le16_to_cpu(i64 %314)
  %316 = load %struct.i40e_vf*, %struct.i40e_vf** %18, align 8
  %317 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 8
  %318 = load %struct.i40e_vf*, %struct.i40e_vf** %18, align 8
  %319 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %320 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* %14, align 4
  %323 = load i32, i32* %15, align 4
  %324 = call i32 @i40e_config_vf_promiscuous_mode(%struct.i40e_vf* %318, i32 %321, i32 %322, i32 %323)
  store i32 %324, i32* %19, align 4
  %325 = load i32, i32* %19, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %310
  %328 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %329 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %328, i32 0, i32 1
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 0
  %332 = call i32 (i32*, i8*, ...) @dev_err(i32* %331, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %334

333:                                              ; preds = %310
  store i32 0, i32* %19, align 4
  br label %334

334:                                              ; preds = %333, %327, %304, %257, %218, %169, %118, %101, %73, %60, %52
  %335 = load i32, i32* @__I40E_VIRTCHNL_OP_PENDING, align 4
  %336 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  %337 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @clear_bit(i32 %335, i32 %338)
  %340 = load i32, i32* %19, align 4
  store i32 %340, i32* %6, align 4
  br label %341

341:                                              ; preds = %334, %38
  %342 = load i32, i32* %6, align 4
  ret i32 %342
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @i40e_validate_vf(%struct.i40e_pf*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i64 @i40e_vsi_has_vlans(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vc_disable_vf(%struct.i40e_vf*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @i40e_add_vlan_all_mac(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @i40e_rm_vlan_all_mac(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_config_vf_promiscuous_mode(%struct.i40e_vf*, i32, i32, i32) #1

declare dso_local i32 @i40e_vsi_add_pvid(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_vsi_remove_pvid(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_service_event_schedule(%struct.TYPE_14__*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
