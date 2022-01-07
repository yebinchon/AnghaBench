; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_mlx5e_tc_tun_create_header_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_mlx5e_tc_tun_create_header_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx5e_encap_entry = type { i32, i8*, %struct.net_device*, i32, i32, i32, i32, %struct.net_device*, %struct.TYPE_13__, %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 (%struct.mlx5e_encap_entry*)* }
%struct.TYPE_8__ = type { %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.neighbour = type { i32, i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.flowi6 = type { i32, i32, i32 }
%struct.ipv6hdr = type { i32, i32, i32, i32 }

@max_encap_header_size = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"encap size %d too big, max supported is %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@MLX5_FLOW_NAMESPACE_FDB = common dso_local global i32 0, align 4
@MLX5_ENCAP_ENTRY_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_tc_tun_create_header_ipv6(%struct.mlx5e_priv* %0, %struct.net_device* %1, %struct.mlx5e_encap_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlx5e_encap_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_tunnel_key*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.neighbour*, align 8
  %13 = alloca %struct.flowi6, align 4
  %14 = alloca %struct.ipv6hdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
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
  %29 = bitcast %struct.flowi6* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 12, i1 false)
  %30 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %31 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %18, align 4
  %33 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %34 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @RT_TOS(i32 %35)
  %37 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %38 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ip6_make_flowinfo(i32 %36, i32 %39)
  %41 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %43 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %49 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = call i32 @mlx5e_route_lookup_ipv6(%struct.mlx5e_priv* %54, %struct.net_device* %55, %struct.net_device** %10, %struct.net_device** %11, %struct.flowi6* %13, %struct.neighbour** %12, i32* %18)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %3
  %60 = load i32, i32* %19, align 4
  store i32 %60, i32* %4, align 4
  br label %260

61:                                               ; preds = %3
  %62 = load %struct.net_device*, %struct.net_device** %11, align 8
  %63 = call i64 @is_vlan_dev(%struct.net_device* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @VLAN_ETH_HLEN, align 4
  br label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @ETH_HLEN, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 16
  %73 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %74 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %73, i32 0, i32 9
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32 (%struct.mlx5e_encap_entry*)*, i32 (%struct.mlx5e_encap_entry*)** %76, align 8
  %78 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %79 = call i32 %77(%struct.mlx5e_encap_entry* %78)
  %80 = sext i32 %79 to i64
  %81 = add i64 %72, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %69
  %87 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %88 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @mlx5_core_warn(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @EOPNOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %260

95:                                               ; preds = %69
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i8* @kzalloc(i32 %96, i32 %97)
  store i8* %98, i8** %16, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %260

104:                                              ; preds = %95
  %105 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %106 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %109 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %108, i32 0, i32 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 8
  %111 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %112 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %111, i32 0, i32 5
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %117 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %120 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %119, i32 0, i32 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %123 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %126 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %125, i32 0, i32 3
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @memcpy(i32* %121, i32 %124, i32 %129)
  %131 = load %struct.net_device*, %struct.net_device** %10, align 8
  %132 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %133 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %132, i32 0, i32 2
  store %struct.net_device* %131, %struct.net_device** %133, align 8
  %134 = load %struct.net_device*, %struct.net_device** %11, align 8
  %135 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %136 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %135, i32 0, i32 7
  store %struct.net_device* %134, %struct.net_device** %136, align 8
  %137 = load %struct.net_device*, %struct.net_device** %10, align 8
  %138 = call i32 @netdev_priv(%struct.net_device* %137)
  %139 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %140 = call i32 @mlx5e_rep_encap_entry_attach(i32 %138, %struct.mlx5e_encap_entry* %139)
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* %19, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %104
  br label %249

144:                                              ; preds = %104
  %145 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %146 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %145, i32 0, i32 1
  %147 = call i32 @read_lock_bh(i32* %146)
  %148 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %149 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %17, align 4
  %151 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %152 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %155 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @ether_addr_copy(i32 %153, i32 %156)
  %158 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %159 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %158, i32 0, i32 1
  %160 = call i32 @read_unlock_bh(i32* %159)
  %161 = load i8*, i8** %16, align 8
  %162 = load %struct.net_device*, %struct.net_device** %11, align 8
  %163 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %164 = load i32, i32* @ETH_P_IPV6, align 4
  %165 = call i64 @gen_eth_tnl_hdr(i8* %161, %struct.net_device* %162, %struct.mlx5e_encap_entry* %163, i32 %164)
  %166 = inttoptr i64 %165 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %166, %struct.ipv6hdr** %14, align 8
  %167 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %168 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %169 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ip6_flow_hdr(%struct.ipv6hdr* %167, i32 %170, i32 0)
  %172 = load i32, i32* %18, align 4
  %173 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %174 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  %175 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %178 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  %179 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %182 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 4
  %183 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %184 = bitcast %struct.ipv6hdr* %183 to i8*
  %185 = getelementptr inbounds i8, i8* %184, i64 16
  %186 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %187 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %186, i32 0, i32 1
  %188 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %189 = call i32 @mlx5e_gen_ip_tunnel_header(i8* %185, i32* %187, %struct.mlx5e_encap_entry* %188)
  store i32 %189, i32* %19, align 4
  %190 = load i32, i32* %19, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %144
  br label %242

193:                                              ; preds = %144
  %194 = load i32, i32* %15, align 4
  %195 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %196 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load i8*, i8** %16, align 8
  %198 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %199 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* @NUD_VALID, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %193
  %205 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %206 = call i32 @neigh_event_send(%struct.neighbour* %205, i32* null)
  br label %252

207:                                              ; preds = %193
  %208 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %209 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %212 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %15, align 4
  %215 = load i8*, i8** %16, align 8
  %216 = load i32, i32* @MLX5_FLOW_NAMESPACE_FDB, align 4
  %217 = call i32 @mlx5_packet_reformat_alloc(i32 %210, i32 %213, i32 %214, i8* %215, i32 %216)
  %218 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %219 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %218, i32 0, i32 4
  store i32 %217, i32* %219, align 4
  %220 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %221 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @IS_ERR(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %207
  %226 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %227 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @PTR_ERR(i32 %228)
  store i32 %229, i32* %19, align 4
  br label %242

230:                                              ; preds = %207
  %231 = load i32, i32* @MLX5_ENCAP_ENTRY_VALID, align 4
  %232 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %233 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 8
  %236 = load %struct.net_device*, %struct.net_device** %10, align 8
  %237 = call i32 @netdev_priv(%struct.net_device* %236)
  %238 = call i32 @mlx5e_rep_queue_neigh_stats_work(i32 %237)
  %239 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %240 = call i32 @neigh_release(%struct.neighbour* %239)
  %241 = load i32, i32* %19, align 4
  store i32 %241, i32* %4, align 4
  br label %260

242:                                              ; preds = %225, %192
  %243 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %244 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %243, i32 0, i32 2
  %245 = load %struct.net_device*, %struct.net_device** %244, align 8
  %246 = call i32 @netdev_priv(%struct.net_device* %245)
  %247 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %248 = call i32 @mlx5e_rep_encap_entry_detach(i32 %246, %struct.mlx5e_encap_entry* %247)
  br label %249

249:                                              ; preds = %242, %143
  %250 = load i8*, i8** %16, align 8
  %251 = call i32 @kfree(i8* %250)
  br label %252

252:                                              ; preds = %249, %204
  %253 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %254 = icmp ne %struct.neighbour* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %257 = call i32 @neigh_release(%struct.neighbour* %256)
  br label %258

258:                                              ; preds = %255, %252
  %259 = load i32, i32* %19, align 4
  store i32 %259, i32* %4, align 4
  br label %260

260:                                              ; preds = %258, %230, %101, %86, %59
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i32 @MLX5_CAP_ESW(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ip6_make_flowinfo(i32, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @mlx5e_route_lookup_ipv6(%struct.mlx5e_priv*, %struct.net_device*, %struct.net_device**, %struct.net_device**, %struct.flowi6*, %struct.neighbour**, i32*) #1

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

declare dso_local i32 @ip6_flow_hdr(%struct.ipv6hdr*, i32, i32) #1

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
