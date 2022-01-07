; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_compile_flow_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_compile_flow_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.flow_cls_offload = type { i32 }
%struct.nfp_fl_payload = type { %struct.TYPE_4__, i32, i64*, %struct.net_device* }
%struct.TYPE_4__ = type { i32, i8*, i32, i8*, i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_fl_stats_ctx_to_flow = type { i64, i32, %struct.nfp_fl_payload* }

@.str = private unnamed_addr constant [49 x i8] c"invalid entry: cannot allocate new stats context\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stats_ctx_table_params = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"invalid entry: cannot allocate a new mask id\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"invalid entry: cannot release stats context\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NFP_FL_MASK_ID_LOCATION = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"invalid entry: cannot offload duplicate flow entry\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"invalid entry: cannot release mask id\00", align 1
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_compile_flow_metadata(%struct.nfp_app* %0, %struct.flow_cls_offload* %1, %struct.nfp_fl_payload* %2, %struct.net_device* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_app*, align 8
  %8 = alloca %struct.flow_cls_offload*, align 8
  %9 = alloca %struct.nfp_fl_payload*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.nfp_fl_stats_ctx_to_flow*, align 8
  %13 = alloca %struct.nfp_flower_priv*, align 8
  %14 = alloca %struct.nfp_fl_payload*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %7, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %8, align 8
  store %struct.nfp_fl_payload* %2, %struct.nfp_fl_payload** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %18 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %19 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %18, i32 0, i32 0
  %20 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %19, align 8
  store %struct.nfp_flower_priv* %20, %struct.nfp_flower_priv** %13, align 8
  %21 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %22 = call i32 @nfp_get_stats_entry(%struct.nfp_app* %21, i64* %16)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %27 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %26, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %17, align 4
  store i32 %28, i32* %6, align 4
  br label %201

29:                                               ; preds = %5
  %30 = load i64, i64* %16, align 8
  %31 = call i32 @cpu_to_be32(i64 %30)
  %32 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %33 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 8
  %35 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %36 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_be64(i32 %37)
  %39 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %40 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i8* %38, i8** %41, align 8
  %42 = load %struct.net_device*, %struct.net_device** %10, align 8
  %43 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %44 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %43, i32 0, i32 3
  store %struct.net_device* %42, %struct.net_device** %44, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.nfp_fl_stats_ctx_to_flow* @kzalloc(i32 24, i32 %45)
  store %struct.nfp_fl_stats_ctx_to_flow* %46, %struct.nfp_fl_stats_ctx_to_flow** %12, align 8
  %47 = load %struct.nfp_fl_stats_ctx_to_flow*, %struct.nfp_fl_stats_ctx_to_flow** %12, align 8
  %48 = icmp ne %struct.nfp_fl_stats_ctx_to_flow* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %29
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %17, align 4
  br label %196

52:                                               ; preds = %29
  %53 = load i64, i64* %16, align 8
  %54 = load %struct.nfp_fl_stats_ctx_to_flow*, %struct.nfp_fl_stats_ctx_to_flow** %12, align 8
  %55 = getelementptr inbounds %struct.nfp_fl_stats_ctx_to_flow, %struct.nfp_fl_stats_ctx_to_flow* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %57 = load %struct.nfp_fl_stats_ctx_to_flow*, %struct.nfp_fl_stats_ctx_to_flow** %12, align 8
  %58 = getelementptr inbounds %struct.nfp_fl_stats_ctx_to_flow, %struct.nfp_fl_stats_ctx_to_flow* %57, i32 0, i32 2
  store %struct.nfp_fl_payload* %56, %struct.nfp_fl_payload** %58, align 8
  %59 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %13, align 8
  %60 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %59, i32 0, i32 0
  %61 = load %struct.nfp_fl_stats_ctx_to_flow*, %struct.nfp_fl_stats_ctx_to_flow** %12, align 8
  %62 = getelementptr inbounds %struct.nfp_fl_stats_ctx_to_flow, %struct.nfp_fl_stats_ctx_to_flow* %61, i32 0, i32 1
  %63 = load i32, i32* @stats_ctx_table_params, align 4
  %64 = call i64 @rhashtable_insert_fast(i32* %60, i32* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %17, align 4
  br label %193

69:                                               ; preds = %52
  store i64 0, i64* %15, align 8
  %70 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %71 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %72 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %75 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %79 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = call i32 @nfp_check_mask_add(%struct.nfp_app* %70, i32 %73, i32 %77, i32* %80, i64* %15)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %69
  %84 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %85 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %87 = load i64, i64* %16, align 8
  %88 = call i64 @nfp_release_stats_entry(%struct.nfp_app* %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %92 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %91, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %17, align 4
  br label %185

95:                                               ; preds = %83
  %96 = load i32, i32* @ENOENT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %17, align 4
  br label %185

98:                                               ; preds = %69
  %99 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %13, align 8
  %100 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @cpu_to_be64(i32 %101)
  %103 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %104 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  %106 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %13, align 8
  %107 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load i64, i64* %15, align 8
  %111 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %112 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @NFP_FL_MASK_ID_LOCATION, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %110, i64* %115, align 8
  %116 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %13, align 8
  %117 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load i64, i64* %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %13, align 8
  %123 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i64, i64* %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* @jiffies, align 4
  %129 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %13, align 8
  %130 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i64, i64* %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32 %128, i32* %134, align 8
  %135 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %136 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %137 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.net_device*, %struct.net_device** %10, align 8
  %140 = call %struct.nfp_fl_payload* @nfp_flower_search_fl_table(%struct.nfp_app* %135, i32 %138, %struct.net_device* %139)
  store %struct.nfp_fl_payload* %140, %struct.nfp_fl_payload** %14, align 8
  %141 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %14, align 8
  %142 = icmp ne %struct.nfp_fl_payload* %141, null
  br i1 %142, label %143, label %174

143:                                              ; preds = %98
  %144 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %145 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %144, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %146 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %147 = load i64, i64* %16, align 8
  %148 = call i64 @nfp_release_stats_entry(%struct.nfp_app* %146, i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %143
  %151 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %152 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %151, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %17, align 4
  br label %175

155:                                              ; preds = %143
  %156 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %157 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %158 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %161 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @nfp_check_mask_remove(%struct.nfp_app* %156, i32 %159, i32 %163, i32* null, i64* %15)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %155
  %167 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %168 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %167, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %17, align 4
  br label %175

171:                                              ; preds = %155
  %172 = load i32, i32* @EEXIST, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %17, align 4
  br label %175

174:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %201

175:                                              ; preds = %171, %166, %150
  %176 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %177 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %178 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %181 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @nfp_check_mask_remove(%struct.nfp_app* %176, i32 %179, i32 %183, i32* null, i64* %15)
  br label %185

185:                                              ; preds = %175, %95, %90
  %186 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %13, align 8
  %187 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %186, i32 0, i32 0
  %188 = load %struct.nfp_fl_stats_ctx_to_flow*, %struct.nfp_fl_stats_ctx_to_flow** %12, align 8
  %189 = getelementptr inbounds %struct.nfp_fl_stats_ctx_to_flow, %struct.nfp_fl_stats_ctx_to_flow* %188, i32 0, i32 1
  %190 = load i32, i32* @stats_ctx_table_params, align 4
  %191 = call i32 @rhashtable_remove_fast(i32* %187, i32* %189, i32 %190)
  %192 = call i32 @WARN_ON_ONCE(i32 %191)
  br label %193

193:                                              ; preds = %185, %66
  %194 = load %struct.nfp_fl_stats_ctx_to_flow*, %struct.nfp_fl_stats_ctx_to_flow** %12, align 8
  %195 = call i32 @kfree(%struct.nfp_fl_stats_ctx_to_flow* %194)
  br label %196

196:                                              ; preds = %193, %49
  %197 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %198 = load i64, i64* %16, align 8
  %199 = call i64 @nfp_release_stats_entry(%struct.nfp_app* %197, i64 %198)
  %200 = load i32, i32* %17, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %196, %174, %25
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @nfp_get_stats_entry(%struct.nfp_app*, i64*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local %struct.nfp_fl_stats_ctx_to_flow* @kzalloc(i32, i32) #1

declare dso_local i64 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @nfp_check_mask_add(%struct.nfp_app*, i32, i32, i32*, i64*) #1

declare dso_local i64 @nfp_release_stats_entry(%struct.nfp_app*, i64) #1

declare dso_local %struct.nfp_fl_payload* @nfp_flower_search_fl_table(%struct.nfp_app*, i32, %struct.net_device*) #1

declare dso_local i32 @nfp_check_mask_remove(%struct.nfp_app*, i32, i32, i32*, i64*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.nfp_fl_stats_ctx_to_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
