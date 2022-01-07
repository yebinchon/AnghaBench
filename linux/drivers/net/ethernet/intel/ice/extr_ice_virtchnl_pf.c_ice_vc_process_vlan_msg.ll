; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_process_vlan_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_process_vlan_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i64, i64, i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_4__*, %struct.ice_vsi**, %struct.ice_hw }
%struct.TYPE_4__ = type { i32 }
%struct.ice_vsi = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ice_hw = type { i32 }
%struct.virtchnl_vlan_filter_list = type { i32, i64*, i32 }

@VIRTCHNL_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ICE_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@VIRTCHNL_STATUS_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_MAX_VLAN_PER_VF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [90 x i8] c"VF-%d is not trusted, switch the VF to trusted mode, in order to add more VLAN addresses\0A\00", align 1
@ICE_MAX_VLANID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid VF VLAN id %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%sable VLAN stripping failed for VSI %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@ICE_VF_STATE_UC_PROMISC = common dso_local global i32 0, align 4
@ICE_VF_STATE_MC_PROMISC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"Enable VLAN pruning on VLAN ID: %d failed error-%d\0A\00", align 1
@ICE_PROMISC_VLAN_TX = common dso_local global i32 0, align 4
@ICE_PROMISC_VLAN_RX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [73 x i8] c"Enable Unicast/multicast promiscuous mode on VLAN ID:%d failed error-%d\0A\00", align 1
@VIRTCHNL_OP_ADD_VLAN = common dso_local global i32 0, align 4
@VIRTCHNL_OP_DEL_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vf*, i32*, i32)* @ice_vc_process_vlan_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vc_process_vlan_msg(%struct.ice_vf* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_vf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtchnl_vlan_filter_list*, align 8
  %10 = alloca %struct.ice_pf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ice_vsi*, align 8
  %13 = alloca %struct.ice_hw*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.ice_vf* %0, %struct.ice_vf** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* @VIRTCHNL_STATUS_SUCCESS, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32* %21 to %struct.virtchnl_vlan_filter_list*
  store %struct.virtchnl_vlan_filter_list* %22, %struct.virtchnl_vlan_filter_list** %9, align 8
  %23 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %24 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %23, i32 0, i32 4
  %25 = load %struct.ice_pf*, %struct.ice_pf** %24, align 8
  store %struct.ice_pf* %25, %struct.ice_pf** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* @ICE_VF_STATE_ACTIVE, align 4
  %27 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %28 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @test_bit(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %33, i32* %8, align 4
  br label %316

34:                                               ; preds = %3
  %35 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %36 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %37 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ice_vc_isvalid_vsi_id(%struct.ice_vf* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %42, i32* %8, align 4
  br label %316

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %48 = call i32 @ice_is_vf_trusted(%struct.ice_vf* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %46
  %51 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %52 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ICE_MAX_VLAN_PER_VF, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %58 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %62 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_info(i32* %60, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %316

65:                                               ; preds = %50, %46, %43
  store i32 0, i32* %16, align 4
  br label %66

66:                                               ; preds = %98, %65
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %69 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %66
  %73 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %74 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ICE_MAX_VLANID, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %72
  %83 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %83, i32* %8, align 4
  %84 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %85 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %89 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  br label %316

97:                                               ; preds = %72
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %66

101:                                              ; preds = %66
  %102 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %103 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %102, i32 0, i32 2
  store %struct.ice_hw* %103, %struct.ice_hw** %13, align 8
  %104 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %105 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %104, i32 0, i32 1
  %106 = load %struct.ice_vsi**, %struct.ice_vsi*** %105, align 8
  %107 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %108 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %106, i64 %109
  %111 = load %struct.ice_vsi*, %struct.ice_vsi** %110, align 8
  store %struct.ice_vsi* %111, %struct.ice_vsi** %12, align 8
  %112 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  %113 = icmp ne %struct.ice_vsi* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %101
  %115 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %115, i32* %8, align 4
  br label %316

116:                                              ; preds = %101
  %117 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  %118 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %123, i32* %8, align 4
  br label %316

124:                                              ; preds = %116
  %125 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i64 @ice_vsi_manage_vlan_stripping(%struct.ice_vsi* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %124
  %130 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %131 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %138 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  %139 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %133, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %137, i32 %140)
  %142 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %142, i32* %8, align 4
  br label %316

143:                                              ; preds = %124
  %144 = load i32, i32* @ICE_VF_STATE_UC_PROMISC, align 4
  %145 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %146 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @test_bit(i32 %144, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* @ICE_VF_STATE_MC_PROMISC, align 4
  %152 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %153 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @test_bit(i32 %151, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150, %143
  store i32 1, i32* %11, align 4
  br label %158

158:                                              ; preds = %157, %150
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %252

161:                                              ; preds = %158
  store i32 0, i32* %16, align 4
  br label %162

162:                                              ; preds = %248, %161
  %163 = load i32, i32* %16, align 4
  %164 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %165 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %251

168:                                              ; preds = %162
  %169 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %170 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = inttoptr i64 %175 to i8*
  store i8* %176, i8** %17, align 8
  %177 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %178 = call i32 @ice_is_vf_trusted(%struct.ice_vf* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %195, label %180

180:                                              ; preds = %168
  %181 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %182 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @ICE_MAX_VLAN_PER_VF, align 8
  %185 = icmp sge i64 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %188 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %187, i32 0, i32 0
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %192 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @dev_info(i32* %190, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %193)
  br label %316

195:                                              ; preds = %180, %168
  %196 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  %197 = load i8*, i8** %17, align 8
  %198 = call i64 @ice_vsi_add_vlan(%struct.ice_vsi* %196, i8* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %201, i32* %8, align 4
  br label %316

202:                                              ; preds = %195
  %203 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %204 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %204, align 8
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %224, label %209

209:                                              ; preds = %202
  %210 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  %211 = call i32 @ice_cfg_vlan_pruning(%struct.ice_vsi* %210, i32 1, i32 0)
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* %14, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %209
  %215 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %215, i32* %8, align 4
  %216 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %217 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %216, i32 0, i32 0
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i8*, i8** %17, align 8
  %221 = load i32, i32* %14, align 4
  %222 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %219, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %220, i32 %221)
  br label %316

223:                                              ; preds = %209
  br label %247

224:                                              ; preds = %202
  %225 = load i32, i32* @ICE_PROMISC_VLAN_TX, align 4
  %226 = load i32, i32* @ICE_PROMISC_VLAN_RX, align 4
  %227 = or i32 %225, %226
  store i32 %227, i32* %15, align 4
  %228 = load %struct.ice_hw*, %struct.ice_hw** %13, align 8
  %229 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  %230 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i8*, i8** %17, align 8
  %234 = call i32 @ice_set_vsi_promisc(%struct.ice_hw* %228, i32 %231, i32 %232, i8* %233)
  store i32 %234, i32* %14, align 4
  %235 = load i32, i32* %14, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %224
  %238 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %238, i32* %8, align 4
  %239 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %240 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %239, i32 0, i32 0
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i8*, i8** %17, align 8
  %244 = load i32, i32* %14, align 4
  %245 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %242, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i8* %243, i32 %244)
  br label %246

246:                                              ; preds = %237, %224
  br label %247

247:                                              ; preds = %246, %223
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %16, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %16, align 4
  br label %162

251:                                              ; preds = %162
  br label %315

252:                                              ; preds = %158
  %253 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %254 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %257

257:                                              ; preds = %311, %252
  %258 = load i32, i32* %16, align 4
  %259 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %260 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp slt i32 %258, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %257
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* %18, align 4
  %266 = icmp slt i32 %264, %265
  br label %267

267:                                              ; preds = %263, %257
  %268 = phi i1 [ false, %257 ], [ %266, %263 ]
  br i1 %268, label %269, label %314

269:                                              ; preds = %267
  %270 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %271 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %270, i32 0, i32 1
  %272 = load i64*, i64** %271, align 8
  %273 = load i32, i32* %16, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i64, i64* %272, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = inttoptr i64 %276 to i8*
  store i8* %277, i8** %19, align 8
  %278 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  %279 = load i8*, i8** %19, align 8
  %280 = call i64 @ice_vsi_kill_vlan(%struct.ice_vsi* %278, i8* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %269
  %283 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %283, i32* %8, align 4
  br label %316

284:                                              ; preds = %269
  %285 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %286 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = add nsw i64 %287, -1
  store i64 %288, i64* %286, align 8
  %289 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %290 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %284
  %294 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  %295 = call i32 @ice_cfg_vlan_pruning(%struct.ice_vsi* %294, i32 0, i32 0)
  br label %296

296:                                              ; preds = %293, %284
  %297 = load i32, i32* %11, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %310

299:                                              ; preds = %296
  %300 = load i32, i32* @ICE_PROMISC_VLAN_TX, align 4
  %301 = load i32, i32* @ICE_PROMISC_VLAN_RX, align 4
  %302 = or i32 %300, %301
  store i32 %302, i32* %15, align 4
  %303 = load %struct.ice_hw*, %struct.ice_hw** %13, align 8
  %304 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  %305 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %15, align 4
  %308 = load i8*, i8** %19, align 8
  %309 = call i32 @ice_clear_vsi_promisc(%struct.ice_hw* %303, i32 %306, i32 %307, i8* %308)
  br label %310

310:                                              ; preds = %299, %296
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %16, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %16, align 4
  br label %257

314:                                              ; preds = %267
  br label %315

315:                                              ; preds = %314, %251
  br label %316

316:                                              ; preds = %315, %282, %214, %200, %186, %129, %122, %114, %82, %56, %41, %32
  %317 = load i32, i32* %7, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  %320 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %321 = load i32, i32* @VIRTCHNL_OP_ADD_VLAN, align 4
  %322 = load i32, i32* %8, align 4
  %323 = call i32 @ice_vc_send_msg_to_vf(%struct.ice_vf* %320, i32 %321, i32 %322, i32* null, i32 0)
  store i32 %323, i32* %4, align 4
  br label %329

324:                                              ; preds = %316
  %325 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %326 = load i32, i32* @VIRTCHNL_OP_DEL_VLAN, align 4
  %327 = load i32, i32* %8, align 4
  %328 = call i32 @ice_vc_send_msg_to_vf(%struct.ice_vf* %325, i32 %326, i32 %327, i32* null, i32 0)
  store i32 %328, i32* %4, align 4
  br label %329

329:                                              ; preds = %324, %319
  %330 = load i32, i32* %4, align 4
  ret i32 %330
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ice_vc_isvalid_vsi_id(%struct.ice_vf*, i32) #1

declare dso_local i32 @ice_is_vf_trusted(%struct.ice_vf*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, ...) #1

declare dso_local i64 @ice_vsi_manage_vlan_stripping(%struct.ice_vsi*, i32) #1

declare dso_local i64 @ice_vsi_add_vlan(%struct.ice_vsi*, i8*) #1

declare dso_local i32 @ice_cfg_vlan_pruning(%struct.ice_vsi*, i32, i32) #1

declare dso_local i32 @ice_set_vsi_promisc(%struct.ice_hw*, i32, i32, i8*) #1

declare dso_local i64 @ice_vsi_kill_vlan(%struct.ice_vsi*, i8*) #1

declare dso_local i32 @ice_clear_vsi_promisc(%struct.ice_hw*, i32, i32, i8*) #1

declare dso_local i32 @ice_vc_send_msg_to_vf(%struct.ice_vf*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
