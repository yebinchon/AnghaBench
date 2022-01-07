; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_attach_encap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_attach_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.mlx5e_tc_flow = type { %struct.TYPE_8__*, %struct.mlx5_esw_flow_attr* }
%struct.TYPE_8__ = type { i32, i32, %struct.mlx5e_encap_entry* }
%struct.mlx5e_encap_entry = type { i32, i32, i32, %struct.net_device*, i32, i32, i32, %struct.mlx5e_encap_entry*, i32, i32 }
%struct.mlx5_esw_flow_attr = type { %struct.TYPE_9__*, %struct.mlx5e_tc_flow_parse_attr* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.mlx5e_tc_flow_parse_attr = type { %struct.mlx5e_encap_entry** }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_tunnel_info = type { i32, i32, i32, %struct.net_device*, i32, i32, i32, %struct.ip_tunnel_info*, i32, i32 }
%struct.encap_key = type { i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"Unsupported tunnel\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i16 0, align 2
@AF_INET6 = common dso_local global i16 0, align 2
@MLX5_ENCAP_ENTRY_VALID = common dso_local global i32 0, align 4
@MLX5_ESW_DEST_ENCAP_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*, %struct.net_device*, i32, %struct.netlink_ext_ack*, %struct.net_device**, i32*)* @mlx5e_attach_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_attach_encap(%struct.mlx5e_priv* %0, %struct.mlx5e_tc_flow* %1, %struct.net_device* %2, i32 %3, %struct.netlink_ext_ack* %4, %struct.net_device** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5e_priv*, align 8
  %10 = alloca %struct.mlx5e_tc_flow*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.net_device**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.mlx5_eswitch*, align 8
  %17 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %18 = alloca %struct.mlx5e_tc_flow_parse_attr*, align 8
  %19 = alloca %struct.ip_tunnel_info*, align 8
  %20 = alloca %struct.encap_key, align 8
  %21 = alloca %struct.mlx5e_encap_entry*, align 8
  %22 = alloca i16, align 2
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %9, align 8
  store %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow** %10, align 8
  store %struct.net_device* %2, %struct.net_device** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %13, align 8
  store %struct.net_device** %5, %struct.net_device*** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %26 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %29, align 8
  store %struct.mlx5_eswitch* %30, %struct.mlx5_eswitch** %16, align 8
  %31 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %10, align 8
  %32 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %31, i32 0, i32 1
  %33 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %32, align 8
  store %struct.mlx5_esw_flow_attr* %33, %struct.mlx5_esw_flow_attr** %17, align 8
  store i32 0, i32* %24, align 4
  %34 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %17, align 8
  %35 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %34, i32 0, i32 1
  %36 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %35, align 8
  store %struct.mlx5e_tc_flow_parse_attr* %36, %struct.mlx5e_tc_flow_parse_attr** %18, align 8
  %37 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %18, align 8
  %38 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %37, i32 0, i32 0
  %39 = load %struct.mlx5e_encap_entry**, %struct.mlx5e_encap_entry*** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %39, i64 %41
  %43 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %42, align 8
  %44 = bitcast %struct.mlx5e_encap_entry* %43 to %struct.ip_tunnel_info*
  store %struct.ip_tunnel_info* %44, %struct.ip_tunnel_info** %19, align 8
  %45 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %19, align 8
  %46 = bitcast %struct.ip_tunnel_info* %45 to %struct.mlx5e_encap_entry*
  %47 = call zeroext i16 @ip_tunnel_info_af(%struct.mlx5e_encap_entry* %46)
  store i16 %47, i16* %22, align 2
  %48 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %19, align 8
  %49 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.encap_key, %struct.encap_key* %20, i32 0, i32 1
  store i32* %49, i32** %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %11, align 8
  %52 = call i32 @mlx5e_get_tc_tun(%struct.net_device* %51)
  %53 = getelementptr inbounds %struct.encap_key, %struct.encap_key* %20, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.encap_key, %struct.encap_key* %20, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %7
  %58 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %59 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %276

62:                                               ; preds = %7
  %63 = call i64 @hash_encap_info(%struct.encap_key* %20)
  store i64 %63, i64* %23, align 8
  %64 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %16, align 8
  %65 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %69 = load i64, i64* %23, align 8
  %70 = call %struct.mlx5e_encap_entry* @mlx5e_encap_get(%struct.mlx5e_priv* %68, %struct.encap_key* %20, i64 %69)
  store %struct.mlx5e_encap_entry* %70, %struct.mlx5e_encap_entry** %21, align 8
  %71 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %72 = icmp ne %struct.mlx5e_encap_entry* %71, null
  br i1 %72, label %73, label %93

73:                                               ; preds = %62
  %74 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %16, align 8
  %75 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %79 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %78, i32 0, i32 5
  %80 = call i32 @wait_for_completion(i32* %79)
  %81 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %16, align 8
  %82 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %86 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %73
  %90 = load i32, i32* @EREMOTEIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %24, align 4
  br label %252

92:                                               ; preds = %73
  br label %185

93:                                               ; preds = %62
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call %struct.mlx5e_encap_entry* @kzalloc(i32 56, i32 %94)
  store %struct.mlx5e_encap_entry* %95, %struct.mlx5e_encap_entry** %21, align 8
  %96 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %97 = icmp ne %struct.mlx5e_encap_entry* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %24, align 4
  br label %252

101:                                              ; preds = %93
  %102 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %103 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %102, i32 0, i32 8
  %104 = call i32 @refcount_set(i32* %103, i32 1)
  %105 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %106 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %105, i32 0, i32 5
  %107 = call i32 @init_completion(i32* %106)
  %108 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %19, align 8
  %109 = bitcast %struct.ip_tunnel_info* %108 to %struct.mlx5e_encap_entry*
  %110 = call %struct.mlx5e_encap_entry* @dup_tun_info(%struct.mlx5e_encap_entry* %109)
  %111 = bitcast %struct.mlx5e_encap_entry* %110 to %struct.ip_tunnel_info*
  store %struct.ip_tunnel_info* %111, %struct.ip_tunnel_info** %19, align 8
  %112 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %19, align 8
  %113 = icmp ne %struct.ip_tunnel_info* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %101
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %24, align 4
  br label %265

117:                                              ; preds = %101
  %118 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %19, align 8
  %119 = bitcast %struct.ip_tunnel_info* %118 to %struct.mlx5e_encap_entry*
  %120 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %121 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %120, i32 0, i32 7
  store %struct.mlx5e_encap_entry* %119, %struct.mlx5e_encap_entry** %121, align 8
  %122 = load %struct.net_device*, %struct.net_device** %11, align 8
  %123 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %124 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %125 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %126 = call i32 @mlx5e_tc_tun_init_encap_attr(%struct.net_device* %122, %struct.mlx5e_priv* %123, %struct.mlx5e_encap_entry* %124, %struct.netlink_ext_ack* %125)
  store i32 %126, i32* %24, align 4
  %127 = load i32, i32* %24, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  br label %265

130:                                              ; preds = %117
  %131 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %132 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %131, i32 0, i32 4
  %133 = call i32 @INIT_LIST_HEAD(i32* %132)
  %134 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %16, align 8
  %135 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %139 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %138, i32 0, i32 6
  %140 = load i64, i64* %23, align 8
  %141 = call i32 @hash_add_rcu(i32 %137, i32* %139, i64 %140)
  %142 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %16, align 8
  %143 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load i16, i16* %22, align 2
  %147 = zext i16 %146 to i32
  %148 = load i16, i16* @AF_INET, align 2
  %149 = zext i16 %148 to i32
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %130
  %152 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %153 = load %struct.net_device*, %struct.net_device** %11, align 8
  %154 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %155 = call i32 @mlx5e_tc_tun_create_header_ipv4(%struct.mlx5e_priv* %152, %struct.net_device* %153, %struct.mlx5e_encap_entry* %154)
  store i32 %155, i32* %24, align 4
  br label %168

156:                                              ; preds = %130
  %157 = load i16, i16* %22, align 2
  %158 = zext i16 %157 to i32
  %159 = load i16, i16* @AF_INET6, align 2
  %160 = zext i16 %159 to i32
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %164 = load %struct.net_device*, %struct.net_device** %11, align 8
  %165 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %166 = call i32 @mlx5e_tc_tun_create_header_ipv6(%struct.mlx5e_priv* %163, %struct.net_device* %164, %struct.mlx5e_encap_entry* %165)
  store i32 %166, i32* %24, align 4
  br label %167

167:                                              ; preds = %162, %156
  br label %168

168:                                              ; preds = %167, %151
  %169 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %16, align 8
  %170 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = call i32 @mutex_lock(i32* %171)
  %173 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %174 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %173, i32 0, i32 5
  %175 = call i32 @complete_all(i32* %174)
  %176 = load i32, i32* %24, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %168
  %179 = load i32, i32* %24, align 4
  %180 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %181 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  br label %252

182:                                              ; preds = %168
  %183 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %184 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  br label %185

185:                                              ; preds = %182, %92
  %186 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %187 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %10, align 8
  %188 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %187, i32 0, i32 0
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 2
  store %struct.mlx5e_encap_entry* %186, %struct.mlx5e_encap_entry** %193, align 8
  %194 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %10, align 8
  %195 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %194, i32 0, i32 0
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %202 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %201, i32 0, i32 4
  %203 = call i32 @list_add(i32* %200, i32* %202)
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %10, align 8
  %206 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %205, i32 0, i32 0
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  store i32 %204, i32* %211, align 8
  %212 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %213 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %212, i32 0, i32 3
  %214 = load %struct.net_device*, %struct.net_device** %213, align 8
  %215 = load %struct.net_device**, %struct.net_device*** %14, align 8
  store %struct.net_device* %214, %struct.net_device** %215, align 8
  %216 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %217 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @MLX5_ENCAP_ENTRY_VALID, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %244

222:                                              ; preds = %185
  %223 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %224 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %17, align 8
  %227 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %226, i32 0, i32 0
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  store i32 %225, i32* %232, align 4
  %233 = load i32, i32* @MLX5_ESW_DEST_ENCAP_VALID, align 4
  %234 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %17, align 8
  %235 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %234, i32 0, i32 0
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %233
  store i32 %242, i32* %240, align 4
  %243 = load i32*, i32** %15, align 8
  store i32 1, i32* %243, align 4
  br label %246

244:                                              ; preds = %185
  %245 = load i32*, i32** %15, align 8
  store i32 0, i32* %245, align 4
  br label %246

246:                                              ; preds = %244, %222
  %247 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %16, align 8
  %248 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = call i32 @mutex_unlock(i32* %249)
  %251 = load i32, i32* %24, align 4
  store i32 %251, i32* %8, align 4
  br label %276

252:                                              ; preds = %178, %98, %89
  %253 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %16, align 8
  %254 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = call i32 @mutex_unlock(i32* %255)
  %257 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %258 = icmp ne %struct.mlx5e_encap_entry* %257, null
  br i1 %258, label %259, label %263

259:                                              ; preds = %252
  %260 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %261 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %262 = call i32 @mlx5e_encap_put(%struct.mlx5e_priv* %260, %struct.mlx5e_encap_entry* %261)
  br label %263

263:                                              ; preds = %259, %252
  %264 = load i32, i32* %24, align 4
  store i32 %264, i32* %8, align 4
  br label %276

265:                                              ; preds = %129, %114
  %266 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %16, align 8
  %267 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = call i32 @mutex_unlock(i32* %268)
  %270 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %19, align 8
  %271 = bitcast %struct.ip_tunnel_info* %270 to %struct.mlx5e_encap_entry*
  %272 = call i32 @kfree(%struct.mlx5e_encap_entry* %271)
  %273 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %21, align 8
  %274 = call i32 @kfree(%struct.mlx5e_encap_entry* %273)
  %275 = load i32, i32* %24, align 4
  store i32 %275, i32* %8, align 4
  br label %276

276:                                              ; preds = %265, %263, %246, %57
  %277 = load i32, i32* %8, align 4
  ret i32 %277
}

declare dso_local zeroext i16 @ip_tunnel_info_af(%struct.mlx5e_encap_entry*) #1

declare dso_local i32 @mlx5e_get_tc_tun(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @hash_encap_info(%struct.encap_key*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5e_encap_entry* @mlx5e_encap_get(%struct.mlx5e_priv*, %struct.encap_key*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local %struct.mlx5e_encap_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.mlx5e_encap_entry* @dup_tun_info(%struct.mlx5e_encap_entry*) #1

declare dso_local i32 @mlx5e_tc_tun_init_encap_attr(%struct.net_device*, %struct.mlx5e_priv*, %struct.mlx5e_encap_entry*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hash_add_rcu(i32, i32*, i64) #1

declare dso_local i32 @mlx5e_tc_tun_create_header_ipv4(%struct.mlx5e_priv*, %struct.net_device*, %struct.mlx5e_encap_entry*) #1

declare dso_local i32 @mlx5e_tc_tun_create_header_ipv6(%struct.mlx5e_priv*, %struct.net_device*, %struct.mlx5e_encap_entry*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mlx5e_encap_put(%struct.mlx5e_priv*, %struct.mlx5e_encap_entry*) #1

declare dso_local i32 @kfree(%struct.mlx5e_encap_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
