; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_flow_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_flow_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.nfp_fl_key_ls = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.nfp_fl_payload = type { i8*, i32*, i32* }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_flower_meta_tci = type { i32 }
%struct.nfp_flower_ext_meta = type { i32 }
%struct.nfp_flower_in_port = type { i32 }
%struct.nfp_flower_mac_mpls = type { i32 }
%struct.nfp_flower_tp_ports = type { i32 }
%struct.nfp_flower_ipv4 = type { i32 }
%struct.nfp_flower_ipv6 = type { i32 }
%struct.nfp_flower_ipv4_gre_tun = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.nfp_flower_ipv4_udp_tun = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@NFP_FLOWER_LAYER_EXT_META = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER_MAC = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER_TP = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER_IPV4 = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER_IPV6 = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER2_GRE = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER_VXLAN = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER2_GENEVE = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER2_GENEVE_OP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_flower_compile_flow_match(%struct.nfp_app* %0, %struct.flow_cls_offload* %1, %struct.nfp_fl_key_ls* %2, %struct.net_device* %3, %struct.nfp_fl_payload* %4, i32 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_app*, align 8
  %10 = alloca %struct.flow_cls_offload*, align 8
  %11 = alloca %struct.nfp_fl_key_ls*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.nfp_fl_payload*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %9, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %10, align 8
  store %struct.nfp_fl_key_ls* %2, %struct.nfp_fl_key_ls** %11, align 8
  store %struct.net_device* %3, %struct.net_device** %12, align 8
  store %struct.nfp_fl_payload* %4, %struct.nfp_fl_payload** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %22 = load %struct.nfp_app*, %struct.nfp_app** %9, align 8
  %23 = load %struct.net_device*, %struct.net_device** %12, align 8
  %24 = call i32 @nfp_flower_get_port_id_from_netdev(%struct.nfp_app* %22, %struct.net_device* %23)
  store i32 %24, i32* %16, align 4
  %25 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %13, align 8
  %26 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %29 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memset(i32* %27, i32 0, i32 %30)
  %32 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %13, align 8
  %33 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %36 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memset(i32* %34, i32 0, i32 %37)
  %39 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %13, align 8
  %40 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %18, align 8
  %42 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %13, align 8
  %43 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %19, align 8
  %45 = load i32*, i32** %18, align 8
  %46 = bitcast i32* %45 to %struct.nfp_flower_meta_tci*
  %47 = load i32*, i32** %19, align 8
  %48 = bitcast i32* %47 to %struct.nfp_flower_meta_tci*
  %49 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %50 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %51 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nfp_flower_compile_meta_tci(%struct.nfp_flower_meta_tci* %46, %struct.nfp_flower_meta_tci* %48, %struct.flow_cls_offload* %49, i32 %52)
  %54 = load i32*, i32** %18, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32* %55, i32** %18, align 8
  %56 = load i32*, i32** %19, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32* %57, i32** %19, align 8
  %58 = load i32, i32* @NFP_FLOWER_LAYER_EXT_META, align 4
  %59 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %60 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %7
  %65 = load i32*, i32** %18, align 8
  %66 = bitcast i32* %65 to %struct.nfp_flower_ext_meta*
  %67 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %68 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @nfp_flower_compile_ext_meta(%struct.nfp_flower_ext_meta* %66, i32 %69)
  %71 = load i32*, i32** %19, align 8
  %72 = bitcast i32* %71 to %struct.nfp_flower_ext_meta*
  %73 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %74 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @nfp_flower_compile_ext_meta(%struct.nfp_flower_ext_meta* %72, i32 %75)
  %77 = load i32*, i32** %18, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  store i32* %78, i32** %18, align 8
  %79 = load i32*, i32** %19, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32* %80, i32** %19, align 8
  br label %81

81:                                               ; preds = %64, %7
  %82 = load i32*, i32** %18, align 8
  %83 = bitcast i32* %82 to %struct.nfp_flower_in_port*
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %87 = call i32 @nfp_flower_compile_port(%struct.nfp_flower_in_port* %83, i32 %84, i32 0, i32 %85, %struct.netlink_ext_ack* %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %8, align 4
  br label %262

92:                                               ; preds = %81
  %93 = load i32*, i32** %19, align 8
  %94 = bitcast i32* %93 to %struct.nfp_flower_in_port*
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %98 = call i32 @nfp_flower_compile_port(%struct.nfp_flower_in_port* %94, i32 %95, i32 1, i32 %96, %struct.netlink_ext_ack* %97)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %8, align 4
  br label %262

103:                                              ; preds = %92
  %104 = load i32*, i32** %18, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  store i32* %105, i32** %18, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  store i32* %107, i32** %19, align 8
  %108 = load i32, i32* @NFP_FLOWER_LAYER_MAC, align 4
  %109 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %110 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %103
  %115 = load i32*, i32** %18, align 8
  %116 = bitcast i32* %115 to %struct.nfp_flower_mac_mpls*
  %117 = load i32*, i32** %19, align 8
  %118 = bitcast i32* %117 to %struct.nfp_flower_mac_mpls*
  %119 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %120 = call i32 @nfp_flower_compile_mac(%struct.nfp_flower_mac_mpls* %116, %struct.nfp_flower_mac_mpls* %118, %struct.flow_cls_offload* %119)
  %121 = load i32*, i32** %18, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  store i32* %122, i32** %18, align 8
  %123 = load i32*, i32** %19, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  store i32* %124, i32** %19, align 8
  br label %125

125:                                              ; preds = %114, %103
  %126 = load i32, i32* @NFP_FLOWER_LAYER_TP, align 4
  %127 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %128 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %125
  %133 = load i32*, i32** %18, align 8
  %134 = bitcast i32* %133 to %struct.nfp_flower_tp_ports*
  %135 = load i32*, i32** %19, align 8
  %136 = bitcast i32* %135 to %struct.nfp_flower_tp_ports*
  %137 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %138 = call i32 @nfp_flower_compile_tport(%struct.nfp_flower_tp_ports* %134, %struct.nfp_flower_tp_ports* %136, %struct.flow_cls_offload* %137)
  %139 = load i32*, i32** %18, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  store i32* %140, i32** %18, align 8
  %141 = load i32*, i32** %19, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 4
  store i32* %142, i32** %19, align 8
  br label %143

143:                                              ; preds = %132, %125
  %144 = load i32, i32* @NFP_FLOWER_LAYER_IPV4, align 4
  %145 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %146 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %144, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %143
  %151 = load i32*, i32** %18, align 8
  %152 = bitcast i32* %151 to %struct.nfp_flower_ipv4*
  %153 = load i32*, i32** %19, align 8
  %154 = bitcast i32* %153 to %struct.nfp_flower_ipv4*
  %155 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %156 = call i32 @nfp_flower_compile_ipv4(%struct.nfp_flower_ipv4* %152, %struct.nfp_flower_ipv4* %154, %struct.flow_cls_offload* %155)
  %157 = load i32*, i32** %18, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 4
  store i32* %158, i32** %18, align 8
  %159 = load i32*, i32** %19, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 4
  store i32* %160, i32** %19, align 8
  br label %161

161:                                              ; preds = %150, %143
  %162 = load i32, i32* @NFP_FLOWER_LAYER_IPV6, align 4
  %163 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %164 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %162, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %161
  %169 = load i32*, i32** %18, align 8
  %170 = bitcast i32* %169 to %struct.nfp_flower_ipv6*
  %171 = load i32*, i32** %19, align 8
  %172 = bitcast i32* %171 to %struct.nfp_flower_ipv6*
  %173 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %174 = call i32 @nfp_flower_compile_ipv6(%struct.nfp_flower_ipv6* %170, %struct.nfp_flower_ipv6* %172, %struct.flow_cls_offload* %173)
  %175 = load i32*, i32** %18, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  store i32* %176, i32** %18, align 8
  %177 = load i32*, i32** %19, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 4
  store i32* %178, i32** %19, align 8
  br label %179

179:                                              ; preds = %168, %161
  %180 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %181 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @NFP_FLOWER_LAYER2_GRE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %208

186:                                              ; preds = %179
  %187 = load i32*, i32** %18, align 8
  %188 = bitcast i32* %187 to i8*
  %189 = load i32*, i32** %19, align 8
  %190 = bitcast i32* %189 to i8*
  %191 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %192 = call i32 @nfp_flower_compile_ipv4_gre_tun(i8* %188, i8* %190, %struct.flow_cls_offload* %191)
  %193 = load i32*, i32** %18, align 8
  %194 = bitcast i32* %193 to %struct.nfp_flower_ipv4_gre_tun*
  %195 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, %struct.nfp_flower_ipv4_gre_tun* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  store i8* %197, i8** %20, align 8
  %198 = load i32*, i32** %18, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 8
  store i32* %199, i32** %18, align 8
  %200 = load i32*, i32** %19, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 8
  store i32* %201, i32** %19, align 8
  %202 = load i8*, i8** %20, align 8
  %203 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %13, align 8
  %204 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %203, i32 0, i32 0
  store i8* %202, i8** %204, align 8
  %205 = load %struct.nfp_app*, %struct.nfp_app** %9, align 8
  %206 = load i8*, i8** %20, align 8
  %207 = call i32 @nfp_tunnel_add_ipv4_off(%struct.nfp_app* %205, i8* %206)
  br label %208

208:                                              ; preds = %186, %179
  %209 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %210 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @NFP_FLOWER_LAYER_VXLAN, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %208
  %216 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %217 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @NFP_FLOWER_LAYER2_GENEVE, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %261

222:                                              ; preds = %215, %208
  %223 = load i32*, i32** %18, align 8
  %224 = bitcast i32* %223 to i8*
  %225 = load i32*, i32** %19, align 8
  %226 = bitcast i32* %225 to i8*
  %227 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %228 = call i32 @nfp_flower_compile_ipv4_udp_tun(i8* %224, i8* %226, %struct.flow_cls_offload* %227)
  %229 = load i32*, i32** %18, align 8
  %230 = bitcast i32* %229 to %struct.nfp_flower_ipv4_udp_tun*
  %231 = getelementptr inbounds %struct.nfp_flower_ipv4_udp_tun, %struct.nfp_flower_ipv4_udp_tun* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  store i8* %233, i8** %21, align 8
  %234 = load i32*, i32** %18, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 8
  store i32* %235, i32** %18, align 8
  %236 = load i32*, i32** %19, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 8
  store i32* %237, i32** %19, align 8
  %238 = load i8*, i8** %21, align 8
  %239 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %13, align 8
  %240 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %239, i32 0, i32 0
  store i8* %238, i8** %240, align 8
  %241 = load %struct.nfp_app*, %struct.nfp_app** %9, align 8
  %242 = load i8*, i8** %21, align 8
  %243 = call i32 @nfp_tunnel_add_ipv4_off(%struct.nfp_app* %241, i8* %242)
  %244 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %11, align 8
  %245 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @NFP_FLOWER_LAYER2_GENEVE_OP, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %222
  %251 = load i32*, i32** %18, align 8
  %252 = load i32*, i32** %19, align 8
  %253 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %254 = call i32 @nfp_flower_compile_geneve_opt(i32* %251, i32* %252, %struct.flow_cls_offload* %253)
  store i32 %254, i32* %17, align 4
  %255 = load i32, i32* %17, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %250
  %258 = load i32, i32* %17, align 4
  store i32 %258, i32* %8, align 4
  br label %262

259:                                              ; preds = %250
  br label %260

260:                                              ; preds = %259, %222
  br label %261

261:                                              ; preds = %260, %215
  store i32 0, i32* %8, align 4
  br label %262

262:                                              ; preds = %261, %257, %101, %90
  %263 = load i32, i32* %8, align 4
  ret i32 %263
}

declare dso_local i32 @nfp_flower_get_port_id_from_netdev(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nfp_flower_compile_meta_tci(%struct.nfp_flower_meta_tci*, %struct.nfp_flower_meta_tci*, %struct.flow_cls_offload*, i32) #1

declare dso_local i32 @nfp_flower_compile_ext_meta(%struct.nfp_flower_ext_meta*, i32) #1

declare dso_local i32 @nfp_flower_compile_port(%struct.nfp_flower_in_port*, i32, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_flower_compile_mac(%struct.nfp_flower_mac_mpls*, %struct.nfp_flower_mac_mpls*, %struct.flow_cls_offload*) #1

declare dso_local i32 @nfp_flower_compile_tport(%struct.nfp_flower_tp_ports*, %struct.nfp_flower_tp_ports*, %struct.flow_cls_offload*) #1

declare dso_local i32 @nfp_flower_compile_ipv4(%struct.nfp_flower_ipv4*, %struct.nfp_flower_ipv4*, %struct.flow_cls_offload*) #1

declare dso_local i32 @nfp_flower_compile_ipv6(%struct.nfp_flower_ipv6*, %struct.nfp_flower_ipv6*, %struct.flow_cls_offload*) #1

declare dso_local i32 @nfp_flower_compile_ipv4_gre_tun(i8*, i8*, %struct.flow_cls_offload*) #1

declare dso_local i32 @nfp_tunnel_add_ipv4_off(%struct.nfp_app*, i8*) #1

declare dso_local i32 @nfp_flower_compile_ipv4_udp_tun(i8*, i8*, %struct.flow_cls_offload*) #1

declare dso_local i32 @nfp_flower_compile_geneve_opt(i32*, i32*, %struct.flow_cls_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
