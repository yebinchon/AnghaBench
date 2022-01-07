; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_mlx5e_tc_tun_create_header_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_mlx5e_tc_tun_create_header_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx5e_encap_entry = type { i32, i8*, %struct.net_device*, i32, i32, i32, i32, %struct.net_device*, %struct.TYPE_13__, %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 (%struct.mlx5e_encap_entry*)* }
%struct.TYPE_8__ = type { %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.neighbour = type { i32, i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.flowi4 = type { i32, i32, i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i32, i32 }

@max_encap_header_size = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"encap size %d too big, max supported is %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@MLX5_FLOW_NAMESPACE_FDB = common dso_local global i32 0, align 4
@MLX5_ENCAP_ENTRY_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_tc_tun_create_header_ipv4(%struct.mlx5e_priv* %0, %struct.net_device* %1, %struct.mlx5e_encap_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlx5e_encap_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_tunnel_key*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.neighbour*, align 8
  %13 = alloca %struct.flowi4, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.iphdr*, align 8
  %19 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.mlx5e_encap_entry* %2, %struct.mlx5e_encap_entry** %7, align 8
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @max_encap_header_size, align 4
  %24 = call i32 @MLX5_CAP_ESW(i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %25, i32 0, i32 10
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store %struct.ip_tunnel_key* %28, %struct.ip_tunnel_key** %9, align 8
  store %struct.neighbour* null, %struct.neighbour** %12, align 8
  %29 = bitcast %struct.flowi4* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 12, i1 false)
  %30 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %31 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %13, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %35 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %13, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %41 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %13, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %47 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %17, align 4
  %49 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = call i32 @mlx5e_route_lookup_ipv4(%struct.mlx5e_priv* %49, %struct.net_device* %50, %struct.net_device** %10, %struct.net_device** %11, %struct.flowi4* %13, %struct.neighbour** %12, i32* %17)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %3
  %55 = load i32, i32* %19, align 4
  store i32 %55, i32* %4, align 4
  br label %259

56:                                               ; preds = %3
  %57 = load %struct.net_device*, %struct.net_device** %11, align 8
  %58 = call i64 @is_vlan_dev(%struct.net_device* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @VLAN_ETH_HLEN, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @ETH_HLEN, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 28
  %68 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %69 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %68, i32 0, i32 9
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32 (%struct.mlx5e_encap_entry*)*, i32 (%struct.mlx5e_encap_entry*)** %71, align 8
  %73 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %74 = call i32 %72(%struct.mlx5e_encap_entry* %73)
  %75 = sext i32 %74 to i64
  %76 = add i64 %67, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %64
  %82 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %83 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @mlx5_core_warn(i32 %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* @EOPNOTSUPP, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %259

90:                                               ; preds = %64
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @kzalloc(i32 %91, i32 %92)
  store i8* %93, i8** %15, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %259

99:                                               ; preds = %90
  %100 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %101 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %104 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %103, i32 0, i32 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %107 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %106, i32 0, i32 5
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %112 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %115 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %118 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %121 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %120, i32 0, i32 3
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memcpy(i32* %116, i32 %119, i32 %124)
  %126 = load %struct.net_device*, %struct.net_device** %10, align 8
  %127 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %128 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %127, i32 0, i32 2
  store %struct.net_device* %126, %struct.net_device** %128, align 8
  %129 = load %struct.net_device*, %struct.net_device** %11, align 8
  %130 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %131 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %130, i32 0, i32 7
  store %struct.net_device* %129, %struct.net_device** %131, align 8
  %132 = load %struct.net_device*, %struct.net_device** %10, align 8
  %133 = call i32 @netdev_priv(%struct.net_device* %132)
  %134 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %135 = call i32 @mlx5e_rep_encap_entry_attach(i32 %133, %struct.mlx5e_encap_entry* %134)
  store i32 %135, i32* %19, align 4
  %136 = load i32, i32* %19, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %99
  br label %248

139:                                              ; preds = %99
  %140 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %141 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %140, i32 0, i32 1
  %142 = call i32 @read_lock_bh(i32* %141)
  %143 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %144 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %16, align 4
  %146 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %147 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %150 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @ether_addr_copy(i32 %148, i32 %151)
  %153 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %154 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %153, i32 0, i32 1
  %155 = call i32 @read_unlock_bh(i32* %154)
  %156 = load i8*, i8** %15, align 8
  %157 = load %struct.net_device*, %struct.net_device** %11, align 8
  %158 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %159 = load i32, i32* @ETH_P_IP, align 4
  %160 = call i64 @gen_eth_tnl_hdr(i8* %156, %struct.net_device* %157, %struct.mlx5e_encap_entry* %158, i32 %159)
  %161 = inttoptr i64 %160 to %struct.iphdr*
  store %struct.iphdr* %161, %struct.iphdr** %18, align 8
  %162 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %163 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %166 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 4
  %167 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %168 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %167, i32 0, i32 0
  store i32 4, i32* %168, align 4
  %169 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %170 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %169, i32 0, i32 1
  store i32 5, i32* %170, align 4
  %171 = load i32, i32* %17, align 4
  %172 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %173 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  %174 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %13, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %177 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  %178 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %13, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %181 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 4
  %182 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %183 = bitcast %struct.iphdr* %182 to i8*
  %184 = getelementptr inbounds i8, i8* %183, i64 28
  %185 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %186 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %185, i32 0, i32 3
  %187 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %188 = call i32 @mlx5e_gen_ip_tunnel_header(i8* %184, i32* %186, %struct.mlx5e_encap_entry* %187)
  store i32 %188, i32* %19, align 4
  %189 = load i32, i32* %19, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %139
  br label %241

192:                                              ; preds = %139
  %193 = load i32, i32* %14, align 4
  %194 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %195 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load i8*, i8** %15, align 8
  %197 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %198 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %197, i32 0, i32 1
  store i8* %196, i8** %198, align 8
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* @NUD_VALID, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %192
  %204 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %205 = call i32 @neigh_event_send(%struct.neighbour* %204, i32* null)
  br label %251

206:                                              ; preds = %192
  %207 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %208 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %211 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = load i8*, i8** %15, align 8
  %215 = load i32, i32* @MLX5_FLOW_NAMESPACE_FDB, align 4
  %216 = call i32 @mlx5_packet_reformat_alloc(i32 %209, i32 %212, i32 %213, i8* %214, i32 %215)
  %217 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %218 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 4
  %219 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %220 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @IS_ERR(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %206
  %225 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %226 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @PTR_ERR(i32 %227)
  store i32 %228, i32* %19, align 4
  br label %241

229:                                              ; preds = %206
  %230 = load i32, i32* @MLX5_ENCAP_ENTRY_VALID, align 4
  %231 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %232 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load %struct.net_device*, %struct.net_device** %10, align 8
  %236 = call i32 @netdev_priv(%struct.net_device* %235)
  %237 = call i32 @mlx5e_rep_queue_neigh_stats_work(i32 %236)
  %238 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %239 = call i32 @neigh_release(%struct.neighbour* %238)
  %240 = load i32, i32* %19, align 4
  store i32 %240, i32* %4, align 4
  br label %259

241:                                              ; preds = %224, %191
  %242 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %243 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %242, i32 0, i32 2
  %244 = load %struct.net_device*, %struct.net_device** %243, align 8
  %245 = call i32 @netdev_priv(%struct.net_device* %244)
  %246 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %247 = call i32 @mlx5e_rep_encap_entry_detach(i32 %245, %struct.mlx5e_encap_entry* %246)
  br label %248

248:                                              ; preds = %241, %138
  %249 = load i8*, i8** %15, align 8
  %250 = call i32 @kfree(i8* %249)
  br label %251

251:                                              ; preds = %248, %203
  %252 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %253 = icmp ne %struct.neighbour* %252, null
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %256 = call i32 @neigh_release(%struct.neighbour* %255)
  br label %257

257:                                              ; preds = %254, %251
  %258 = load i32, i32* %19, align 4
  store i32 %258, i32* %4, align 4
  br label %259

259:                                              ; preds = %257, %229, %96, %81, %54
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local i32 @MLX5_CAP_ESW(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mlx5e_route_lookup_ipv4(%struct.mlx5e_priv*, %struct.net_device*, %struct.net_device**, %struct.net_device**, %struct.flowi4*, %struct.neighbour**, i32*) #1

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mlx5e_rep_encap_entry_attach(i32, %struct.mlx5e_encap_entry*) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i64 @gen_eth_tnl_hdr(i8*, %struct.net_device*, %struct.mlx5e_encap_entry*, i32) #1

declare dso_local i32 @mlx5e_gen_ip_tunnel_header(i8*, i32*, %struct.mlx5e_encap_entry*) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, i32*) #1

declare dso_local i32 @mlx5_packet_reformat_alloc(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mlx5e_rep_queue_neigh_stats_work(i32) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @mlx5e_rep_encap_entry_detach(i32, %struct.mlx5e_encap_entry*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
