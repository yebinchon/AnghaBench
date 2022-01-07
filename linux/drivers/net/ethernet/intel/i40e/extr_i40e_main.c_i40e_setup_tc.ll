; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc_mqprio_qopt_offload = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i32, i32, %struct.i40e_pf*, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.i40e_pf = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@I40E_FLAG_TC_MQPRIO = common dso_local global i32 0, align 4
@I40E_FLAG_MFP_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Configuring TC not supported in MFP mode\0A\00", align 1
@I40E_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"DCB is not enabled for adapter\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"TC count greater than enabled on link for adapter\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"Full offload of TC Mqprio options is not supported when DCB is enabled\0A\00", align 1
@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed configuring TC for VSI seid=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Setup channel (id:%u) utilizing num_queues %d\0A\00", align 1
@I40E_BW_MBPS_DIVISOR = common dso_local global i32 0, align 4
@I40E_BW_CREDIT_DIVISOR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [66 x i8] c"Set tx rate of %llu Mbps (count of 50Mbps %llu) for vsi->seid %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed configuring queue channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @i40e_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_setup_tc(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tc_mqprio_qopt_offload*, align 8
  %7 = alloca %struct.i40e_netdev_priv*, align 8
  %8 = alloca %struct.i40e_vsi*, align 8
  %9 = alloca %struct.i40e_pf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.tc_mqprio_qopt_offload*
  store %struct.tc_mqprio_qopt_offload* %21, %struct.tc_mqprio_qopt_offload** %6, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %22)
  store %struct.i40e_netdev_priv* %23, %struct.i40e_netdev_priv** %7, align 8
  %24 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %7, align 8
  %25 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %24, i32 0, i32 0
  %26 = load %struct.i40e_vsi*, %struct.i40e_vsi** %25, align 8
  store %struct.i40e_vsi* %26, %struct.i40e_vsi** %8, align 8
  %27 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %28 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %27, i32 0, i32 2
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %28, align 8
  store %struct.i40e_pf* %29, %struct.i40e_pf** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %15, align 4
  %32 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %33 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  %35 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %36 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %40 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  %43 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %44 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %2
  %49 = load i32, i32* @I40E_FLAG_TC_MQPRIO, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %52 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %56 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %55, i32 0, i32 3
  %57 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %58 = call i32 @memcpy(%struct.TYPE_10__* %56, %struct.tc_mqprio_qopt_offload* %57, i32 12)
  br label %147

59:                                               ; preds = %2
  %60 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %61 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @I40E_FLAG_MFP_ENABLED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %3, align 4
  br label %291

70:                                               ; preds = %59
  %71 = load i32, i32* %16, align 4
  switch i32 %71, label %143 [
    i32 128, label %72
    i32 129, label %99
  ]

72:                                               ; preds = %70
  %73 = load i32, i32* @I40E_FLAG_TC_MQPRIO, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %76 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %80 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @I40E_FLAG_DCB_ENABLED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %72
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %3, align 4
  br label %291

89:                                               ; preds = %72
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %92 = call i32 @i40e_pf_get_num_tc(%struct.i40e_pf* %91)
  %93 = icmp sgt i32 %90, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %95, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %3, align 4
  br label %291

98:                                               ; preds = %89
  br label %146

99:                                               ; preds = %70
  %100 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %101 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @I40E_FLAG_DCB_ENABLED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %107, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %3, align 4
  br label %291

110:                                              ; preds = %99
  %111 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %112 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %110
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %3, align 4
  br label %291

119:                                              ; preds = %110
  %120 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %121 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %122 = call i32 @i40e_validate_mqprio_qopt(%struct.i40e_vsi* %120, %struct.tc_mqprio_qopt_offload* %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %3, align 4
  br label %291

127:                                              ; preds = %119
  %128 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %129 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %128, i32 0, i32 3
  %130 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %131 = call i32 @memcpy(%struct.TYPE_10__* %129, %struct.tc_mqprio_qopt_offload* %130, i32 12)
  %132 = load i32, i32* @I40E_FLAG_TC_MQPRIO, align 4
  %133 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %134 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load i32, i32* @I40E_FLAG_DCB_ENABLED, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %140 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %146

143:                                              ; preds = %70
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %291

146:                                              ; preds = %127, %98
  br label %147

147:                                              ; preds = %146, %48
  store i32 0, i32* %17, align 4
  br label %148

148:                                              ; preds = %157, %147
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = load i32, i32* %17, align 4
  %154 = call i32 @BIT(i32 %153)
  %155 = load i32, i32* %10, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %152
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %17, align 4
  br label %148

160:                                              ; preds = %148
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %163 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %161, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 129
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %291

171:                                              ; preds = %167, %160
  %172 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %173 = call i32 @i40e_quiesce_vsi(%struct.i40e_vsi* %172)
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %186, label %176

176:                                              ; preds = %171
  %177 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %178 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @I40E_FLAG_TC_MQPRIO, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %176
  %184 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %185 = call i32 @i40e_remove_queue_channels(%struct.i40e_vsi* %184)
  br label %186

186:                                              ; preds = %183, %176, %171
  %187 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @i40e_vsi_config_tc(%struct.i40e_vsi* %187, i32 %188)
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = load %struct.net_device*, %struct.net_device** %4, align 8
  %194 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %195 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %193, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %196)
  store i32 1, i32* %13, align 4
  br label %281

198:                                              ; preds = %186
  %199 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %200 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %199, i32 0, i32 2
  %201 = load %struct.i40e_pf*, %struct.i40e_pf** %200, align 8
  %202 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %201, i32 0, i32 1
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %206 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %209 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i64 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @dev_info(i32* %204, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %207, i32 %214)
  br label %216

216:                                              ; preds = %198
  %217 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %218 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @I40E_FLAG_TC_MQPRIO, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %280

223:                                              ; preds = %216
  %224 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %225 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %268

231:                                              ; preds = %223
  %232 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %233 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = load i64*, i64** %234, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 0
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %18, align 8
  %238 = load i64, i64* %18, align 8
  %239 = load i32, i32* @I40E_BW_MBPS_DIVISOR, align 4
  %240 = call i32 @do_div(i64 %238, i32 %239)
  %241 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %242 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %243 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i64, i64* %18, align 8
  %246 = call i32 @i40e_set_bw_limit(%struct.i40e_vsi* %241, i32 %244, i64 %245)
  store i32 %246, i32* %15, align 4
  %247 = load i32, i32* %15, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %266, label %249

249:                                              ; preds = %231
  %250 = load i64, i64* %18, align 8
  store i64 %250, i64* %19, align 8
  %251 = load i64, i64* %19, align 8
  %252 = load i32, i32* @I40E_BW_CREDIT_DIVISOR, align 4
  %253 = call i32 @do_div(i64 %251, i32 %252)
  %254 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %255 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %254, i32 0, i32 2
  %256 = load %struct.i40e_pf*, %struct.i40e_pf** %255, align 8
  %257 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %256, i32 0, i32 1
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = load i64, i64* %18, align 8
  %261 = load i64, i64* %19, align 8
  %262 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %263 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @dev_dbg(i32* %259, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i64 %260, i64 %261, i32 %264)
  br label %267

266:                                              ; preds = %231
  store i32 1, i32* %13, align 4
  br label %281

267:                                              ; preds = %249
  br label %268

268:                                              ; preds = %267, %223
  %269 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %270 = call i32 @i40e_configure_queue_channels(%struct.i40e_vsi* %269)
  store i32 %270, i32* %15, align 4
  %271 = load i32, i32* %15, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %268
  %274 = load i32, i32* %14, align 4
  %275 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %276 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  %277 = load %struct.net_device*, %struct.net_device** %4, align 8
  %278 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %277, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %281

279:                                              ; preds = %268
  br label %280

280:                                              ; preds = %279, %216
  br label %281

281:                                              ; preds = %280, %273, %266, %192
  %282 = load i32, i32* %13, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %286 = call i32 @i40e_vsi_set_default_tc_config(%struct.i40e_vsi* %285)
  store i32 0, i32* %13, align 4
  br label %287

287:                                              ; preds = %284, %281
  %288 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %289 = call i32 @i40e_unquiesce_vsi(%struct.i40e_vsi* %288)
  %290 = load i32, i32* %15, align 4
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %287, %170, %143, %125, %117, %106, %94, %85, %66
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.tc_mqprio_qopt_offload*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @i40e_pf_get_num_tc(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_validate_mqprio_qopt(%struct.i40e_vsi*, %struct.tc_mqprio_qopt_offload*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @i40e_quiesce_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_remove_queue_channels(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_config_tc(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @i40e_set_bw_limit(%struct.i40e_vsi*, i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64, i32) #1

declare dso_local i32 @i40e_configure_queue_channels(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_set_default_tc_config(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_unquiesce_vsi(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
