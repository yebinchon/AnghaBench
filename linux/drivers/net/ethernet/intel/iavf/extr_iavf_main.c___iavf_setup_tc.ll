; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c___iavf_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c___iavf_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc_mqprio_qopt_offload = type { i64, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32, i64*, i64*, i32 }
%struct.iavf_adapter = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__*, %struct.virtchnl_vf_resource* }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.virtchnl_vf_resource = type { i32 }

@__IAVF_TC_RUNNING = common dso_local global i64 0, align 8
@IAVF_FLAG_AQ_DISABLE_CHANNELS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TC_MQPRIO_MODE_CHANNEL = common dso_local global i64 0, align 8
@VIRTCHNL_VF_OFFLOAD_ADQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ADq not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@__IAVF_TC_INVALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"TC configuration already exists\0A\00", align 1
@IAVF_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IAVF_MBPS_DIVISOR = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ENABLE_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @__iavf_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iavf_setup_tc(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tc_mqprio_qopt_offload*, align 8
  %7 = alloca %struct.iavf_adapter*, align 8
  %8 = alloca %struct.virtchnl_vf_resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.tc_mqprio_qopt_offload*
  store %struct.tc_mqprio_qopt_offload* %19, %struct.tc_mqprio_qopt_offload** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call %struct.iavf_adapter* @netdev_priv(%struct.net_device* %20)
  store %struct.iavf_adapter* %21, %struct.iavf_adapter** %7, align 8
  %22 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %23 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %22, i32 0, i32 5
  %24 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %23, align 8
  store %struct.virtchnl_vf_resource* %24, %struct.virtchnl_vf_resource** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %26 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %30 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %14, align 8
  %32 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %33 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %2
  %38 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %39 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @__IAVF_TC_RUNNING, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i32 @netdev_reset_tc(%struct.net_device* %45)
  %47 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %48 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %49)
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i32 @netif_tx_disable(%struct.net_device* %51)
  %53 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %54 = call i32 @iavf_del_all_cloud_filters(%struct.iavf_adapter* %53)
  %55 = load i32, i32* @IAVF_FLAG_AQ_DISABLE_CHANNELS, align 4
  %56 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %57 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %265

58:                                               ; preds = %37
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %267

61:                                               ; preds = %2
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @TC_MQPRIO_MODE_CHANNEL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %264

65:                                               ; preds = %61
  %66 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %8, align 8
  %67 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_ADQ, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %65
  %73 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %74 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %73, i32 0, i32 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @EOPNOTSUPP, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %267

80:                                               ; preds = %65
  %81 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %82 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @__IAVF_TC_INVALID, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %89 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %88, i32 0, i32 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %267

95:                                               ; preds = %80
  %96 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %97 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %98 = call i32 @iavf_validate_ch_config(%struct.iavf_adapter* %96, %struct.tc_mqprio_qopt_offload* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %267

103:                                              ; preds = %95
  %104 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %105 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %267

110:                                              ; preds = %103
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %113 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %204, %110
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* @IAVF_MAX_TRAFFIC_CLASS, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %207

118:                                              ; preds = %114
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %186

122:                                              ; preds = %118
  %123 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %124 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %132 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i64 %130, i64* %138, align 8
  %139 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %140 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %148 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store i64 %146, i64* %154, align 8
  %155 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %156 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %10, align 4
  %167 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %168 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @IAVF_MBPS_DIVISOR, align 4
  %176 = call i32 @div_u64(i32 %174, i32 %175)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %179 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  store i32 %177, i32* %185, align 8
  br label %203

186:                                              ; preds = %118
  %187 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %188 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  store i64 1, i64* %194, align 8
  %195 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %196 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  store i64 0, i64* %202, align 8
  br label %203

203:                                              ; preds = %186, %122
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %15, align 4
  br label %114

207:                                              ; preds = %114
  %208 = load i32, i32* %10, align 4
  %209 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %210 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  store i32 %208, i32* %211, align 8
  %212 = load %struct.net_device*, %struct.net_device** %4, align 8
  %213 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %212)
  %214 = load %struct.net_device*, %struct.net_device** %4, align 8
  %215 = call i32 @netif_tx_disable(%struct.net_device* %214)
  %216 = load i32, i32* @IAVF_FLAG_AQ_ENABLE_CHANNELS, align 4
  %217 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %218 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  %221 = load %struct.net_device*, %struct.net_device** %4, align 8
  %222 = call i32 @netdev_reset_tc(%struct.net_device* %221)
  %223 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %224 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @netdev_set_num_tc(i32 %225, i32 %226)
  store i32 0, i32* %15, align 4
  br label %228

228:                                              ; preds = %260, %207
  %229 = load i32, i32* %15, align 4
  %230 = load i32, i32* @IAVF_MAX_TRAFFIC_CLASS, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %263

232:                                              ; preds = %228
  %233 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %234 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load i64*, i64** %235, align 8
  %237 = load i32, i32* %15, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i64, i64* %236, i64 %238
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %16, align 8
  %241 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %242 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  %244 = load i64*, i64** %243, align 8
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %17, align 8
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* %9, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %232
  %253 = load %struct.net_device*, %struct.net_device** %4, align 8
  %254 = load i32, i32* %12, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %12, align 4
  %256 = load i64, i64* %16, align 8
  %257 = load i64, i64* %17, align 8
  %258 = call i32 @netdev_set_tc_queue(%struct.net_device* %253, i32 %254, i64 %256, i64 %257)
  br label %259

259:                                              ; preds = %252, %232
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %15, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %15, align 4
  br label %228

263:                                              ; preds = %228
  br label %264

264:                                              ; preds = %263, %61
  br label %265

265:                                              ; preds = %264, %44
  %266 = load i32, i32* %11, align 4
  store i32 %266, i32* %3, align 4
  br label %267

267:                                              ; preds = %265, %109, %101, %87, %72, %58
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local %struct.iavf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_reset_tc(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @iavf_del_all_cloud_filters(%struct.iavf_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @iavf_validate_ch_config(%struct.iavf_adapter*, %struct.tc_mqprio_qopt_offload*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @netdev_set_num_tc(i32, i32) #1

declare dso_local i32 @netdev_set_tc_queue(%struct.net_device*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
