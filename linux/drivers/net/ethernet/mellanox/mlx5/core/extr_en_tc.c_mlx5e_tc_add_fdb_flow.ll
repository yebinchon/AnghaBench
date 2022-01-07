; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_add_fdb_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_add_fdb_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_6__*, %struct.mlx5e_rep_priv*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5e_rep_priv = type { i32 }
%struct.mlx5e_tc_flow = type { %struct.mlx5_fc**, %struct.mlx5_esw_flow_attr* }
%struct.mlx5_fc = type { i32 }
%struct.mlx5_esw_flow_attr = type { i32, i64, i32, %struct.mlx5_fc*, i32, %struct.TYPE_5__*, %struct.mlx5e_tc_flow_parse_attr* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.mlx5e_tc_flow_parse_attr = type { i32*, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"E-switch priorities unsupported, upgrade FW\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Requested chain is out of supported range\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Requested priority is out of supported range\00", align 1
@MLX5_MAX_FLOW_FWD_VPORTS = common dso_local global i32 0, align 4
@MLX5_ESW_DEST_ENCAP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_MOD_HDR = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_COUNT = common dso_local global i32 0, align 4
@OFFLOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*, %struct.netlink_ext_ack*)* @mlx5e_tc_add_fdb_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tc_add_fdb_flow(%struct.mlx5e_priv* %0, %struct.mlx5e_tc_flow* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5e_tc_flow*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlx5_eswitch*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %11 = alloca %struct.mlx5e_tc_flow_parse_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.mlx5_fc*, align 8
  %16 = alloca %struct.mlx5e_rep_priv*, align 8
  %17 = alloca %struct.mlx5e_priv*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.mlx5_esw_flow_attr, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %27, align 8
  store %struct.mlx5_eswitch* %28, %struct.mlx5_eswitch** %8, align 8
  %29 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %30 = call i64 @mlx5_eswitch_get_chain_range(%struct.mlx5_eswitch* %29)
  store i64 %30, i64* %9, align 8
  %31 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %31, i32 0, i32 1
  %33 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %32, align 8
  store %struct.mlx5_esw_flow_attr* %33, %struct.mlx5_esw_flow_attr** %10, align 8
  %34 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %10, align 8
  %35 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %34, i32 0, i32 6
  %36 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %35, align 8
  store %struct.mlx5e_tc_flow_parse_attr* %36, %struct.mlx5e_tc_flow_parse_attr** %11, align 8
  %37 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %38 = call i32 @mlx5_eswitch_get_prio_range(%struct.mlx5_eswitch* %37)
  store i32 %38, i32* %12, align 4
  store %struct.net_device* null, %struct.net_device** %14, align 8
  store %struct.mlx5_fc* null, %struct.mlx5_fc** %15, align 8
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %39 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %40 = call i32 @mlx5_eswitch_prios_supported(%struct.mlx5_eswitch* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %3
  %43 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %10, align 8
  %44 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %49 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %240

52:                                               ; preds = %42, %3
  %53 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %10, align 8
  %54 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %60 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %240

63:                                               ; preds = %52
  %64 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %10, align 8
  %65 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %71 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %240

74:                                               ; preds = %63
  store i32 0, i32* %20, align 4
  br label %75

75:                                               ; preds = %142, %74
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* @MLX5_MAX_FLOW_FWD_VPORTS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %145

79:                                               ; preds = %75
  %80 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %10, align 8
  %81 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %80, i32 0, i32 5
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %20, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MLX5_ESW_DEST_ENCAP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %79
  br label %142

92:                                               ; preds = %79
  %93 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %11, align 8
  %94 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %20, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %21, align 4
  %100 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %101 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_net(i32 %102)
  %104 = load i32, i32* %21, align 4
  %105 = call %struct.net_device* @__dev_get_by_index(i32 %103, i32 %104)
  store %struct.net_device* %105, %struct.net_device** %13, align 8
  %106 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %107 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %108 = load %struct.net_device*, %struct.net_device** %13, align 8
  %109 = load i32, i32* %20, align 4
  %110 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %111 = call i32 @mlx5e_attach_encap(%struct.mlx5e_priv* %106, %struct.mlx5e_tc_flow* %107, %struct.net_device* %108, i32 %109, %struct.netlink_ext_ack* %110, %struct.net_device** %14, i32* %18)
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %19, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %92
  %115 = load i32, i32* %19, align 4
  store i32 %115, i32* %4, align 4
  br label %240

116:                                              ; preds = %92
  %117 = load %struct.net_device*, %struct.net_device** %14, align 8
  %118 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %117)
  store %struct.mlx5e_priv* %118, %struct.mlx5e_priv** %17, align 8
  %119 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %17, align 8
  %120 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %119, i32 0, i32 1
  %121 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %120, align 8
  store %struct.mlx5e_rep_priv* %121, %struct.mlx5e_rep_priv** %16, align 8
  %122 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %16, align 8
  %123 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %10, align 8
  %126 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %125, i32 0, i32 5
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %20, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  store i32 %124, i32* %131, align 8
  %132 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %17, align 8
  %133 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %10, align 8
  %136 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %135, i32 0, i32 5
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i32, i32* %20, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  store %struct.TYPE_6__* %134, %struct.TYPE_6__** %141, align 8
  br label %142

142:                                              ; preds = %116, %91
  %143 = load i32, i32* %20, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %20, align 4
  br label %75

145:                                              ; preds = %75
  %146 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %147 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %10, align 8
  %148 = call i32 @mlx5_eswitch_add_vlan_action(%struct.mlx5_eswitch* %146, %struct.mlx5_esw_flow_attr* %147)
  store i32 %148, i32* %19, align 4
  %149 = load i32, i32* %19, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %19, align 4
  store i32 %152, i32* %4, align 4
  br label %240

153:                                              ; preds = %145
  %154 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %10, align 8
  %155 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_MOD_HDR, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %153
  %161 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %162 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %163 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %11, align 8
  %164 = call i32 @mlx5e_attach_mod_hdr(%struct.mlx5e_priv* %161, %struct.mlx5e_tc_flow* %162, %struct.mlx5e_tc_flow_parse_attr* %163)
  store i32 %164, i32* %19, align 4
  %165 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %11, align 8
  %166 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @kfree(i32 %167)
  %169 = load i32, i32* %19, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %160
  %172 = load i32, i32* %19, align 4
  store i32 %172, i32* %4, align 4
  br label %240

173:                                              ; preds = %160
  br label %174

174:                                              ; preds = %173, %153
  %175 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %10, align 8
  %176 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_COUNT, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %196

181:                                              ; preds = %174
  %182 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %10, align 8
  %183 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = call %struct.mlx5_fc* @mlx5_fc_create(i32 %184, i32 1)
  store %struct.mlx5_fc* %185, %struct.mlx5_fc** %15, align 8
  %186 = load %struct.mlx5_fc*, %struct.mlx5_fc** %15, align 8
  %187 = call i64 @IS_ERR(%struct.mlx5_fc* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %181
  %190 = load %struct.mlx5_fc*, %struct.mlx5_fc** %15, align 8
  %191 = call i32 @PTR_ERR(%struct.mlx5_fc* %190)
  store i32 %191, i32* %4, align 4
  br label %240

192:                                              ; preds = %181
  %193 = load %struct.mlx5_fc*, %struct.mlx5_fc** %15, align 8
  %194 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %10, align 8
  %195 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %194, i32 0, i32 3
  store %struct.mlx5_fc* %193, %struct.mlx5_fc** %195, align 8
  br label %196

196:                                              ; preds = %192, %174
  %197 = load i32, i32* %18, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %209, label %199

199:                                              ; preds = %196
  %200 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %201 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %202 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %11, align 8
  %203 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %202, i32 0, i32 1
  %204 = call %struct.mlx5_fc* @mlx5e_tc_offload_to_slow_path(%struct.mlx5_eswitch* %200, %struct.mlx5e_tc_flow* %201, i32* %203, %struct.mlx5_esw_flow_attr* %22)
  %205 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %206 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %205, i32 0, i32 0
  %207 = load %struct.mlx5_fc**, %struct.mlx5_fc*** %206, align 8
  %208 = getelementptr inbounds %struct.mlx5_fc*, %struct.mlx5_fc** %207, i64 0
  store %struct.mlx5_fc* %204, %struct.mlx5_fc** %208, align 8
  br label %220

209:                                              ; preds = %196
  %210 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %211 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %212 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %11, align 8
  %213 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %212, i32 0, i32 1
  %214 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %10, align 8
  %215 = call %struct.mlx5_fc* @mlx5e_tc_offload_fdb_rules(%struct.mlx5_eswitch* %210, %struct.mlx5e_tc_flow* %211, i32* %213, %struct.mlx5_esw_flow_attr* %214)
  %216 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %217 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %216, i32 0, i32 0
  %218 = load %struct.mlx5_fc**, %struct.mlx5_fc*** %217, align 8
  %219 = getelementptr inbounds %struct.mlx5_fc*, %struct.mlx5_fc** %218, i64 0
  store %struct.mlx5_fc* %215, %struct.mlx5_fc** %219, align 8
  br label %220

220:                                              ; preds = %209, %199
  %221 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %222 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %221, i32 0, i32 0
  %223 = load %struct.mlx5_fc**, %struct.mlx5_fc*** %222, align 8
  %224 = getelementptr inbounds %struct.mlx5_fc*, %struct.mlx5_fc** %223, i64 0
  %225 = load %struct.mlx5_fc*, %struct.mlx5_fc** %224, align 8
  %226 = call i64 @IS_ERR(%struct.mlx5_fc* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %220
  %229 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %230 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %229, i32 0, i32 0
  %231 = load %struct.mlx5_fc**, %struct.mlx5_fc*** %230, align 8
  %232 = getelementptr inbounds %struct.mlx5_fc*, %struct.mlx5_fc** %231, i64 0
  %233 = load %struct.mlx5_fc*, %struct.mlx5_fc** %232, align 8
  %234 = call i32 @PTR_ERR(%struct.mlx5_fc* %233)
  store i32 %234, i32* %4, align 4
  br label %240

235:                                              ; preds = %220
  %236 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %237 = load i32, i32* @OFFLOADED, align 4
  %238 = call i32 @flow_flag_set(%struct.mlx5e_tc_flow* %236, i32 %237)
  br label %239

239:                                              ; preds = %235
  store i32 0, i32* %4, align 4
  br label %240

240:                                              ; preds = %239, %228, %189, %171, %151, %114, %69, %58, %47
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i64 @mlx5_eswitch_get_chain_range(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_eswitch_get_prio_range(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_eswitch_prios_supported(%struct.mlx5_eswitch*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @mlx5e_attach_encap(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*, %struct.net_device*, i32, %struct.netlink_ext_ack*, %struct.net_device**, i32*) #1

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx5_eswitch_add_vlan_action(%struct.mlx5_eswitch*, %struct.mlx5_esw_flow_attr*) #1

declare dso_local i32 @mlx5e_attach_mod_hdr(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow_parse_attr*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local %struct.mlx5_fc* @mlx5_fc_create(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_fc*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_fc*) #1

declare dso_local %struct.mlx5_fc* @mlx5e_tc_offload_to_slow_path(%struct.mlx5_eswitch*, %struct.mlx5e_tc_flow*, i32*, %struct.mlx5_esw_flow_attr*) #1

declare dso_local %struct.mlx5_fc* @mlx5e_tc_offload_fdb_rules(%struct.mlx5_eswitch*, %struct.mlx5e_tc_flow*, i32*, %struct.mlx5_esw_flow_attr*) #1

declare dso_local i32 @flow_flag_set(%struct.mlx5e_tc_flow*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
