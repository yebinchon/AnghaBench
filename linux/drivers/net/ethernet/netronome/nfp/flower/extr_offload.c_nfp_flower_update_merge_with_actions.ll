; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_update_merge_with_actions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_update_merge_with_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_payload = type { i32*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.nfp_flower_merge_check = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_13__, %struct.TYPE_15__, i8* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32*, i32* }
%struct.nfp_fl_set_ipv6_tc_hl_fl = type { i32, i32, i32 }
%struct.nfp_fl_set_ip4_ttl_tos = type { i32, i32 }
%struct.nfp_fl_set_ip4_addrs = type { i32, i32 }
%struct.nfp_fl_set_ipv6_addr = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.nfp_fl_push_vlan = type { i32 }
%struct.nfp_fl_set_tport = type { i32* }
%struct.nfp_fl_set_eth = type { i32* }
%struct.nfp_fl_act_head = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_FL_LW_SIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_fl_payload*, %struct.nfp_flower_merge_check*, i32*, i32*)* @nfp_flower_update_merge_with_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_update_merge_with_actions(%struct.nfp_fl_payload* %0, %struct.nfp_flower_merge_check* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_fl_payload*, align 8
  %7 = alloca %struct.nfp_flower_merge_check*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nfp_fl_set_ipv6_tc_hl_fl*, align 8
  %11 = alloca %struct.nfp_fl_set_ip4_ttl_tos*, align 8
  %12 = alloca %struct.nfp_fl_set_ip4_addrs*, align 8
  %13 = alloca %struct.nfp_fl_set_ipv6_addr*, align 8
  %14 = alloca %struct.nfp_fl_push_vlan*, align 8
  %15 = alloca %struct.nfp_fl_set_tport*, align 8
  %16 = alloca %struct.nfp_fl_set_eth*, align 8
  %17 = alloca %struct.nfp_fl_act_head*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.nfp_fl_payload* %0, %struct.nfp_fl_payload** %6, align 8
  store %struct.nfp_flower_merge_check* %1, %struct.nfp_flower_merge_check** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %22

22:                                               ; preds = %299, %4
  %23 = load i32, i32* %18, align 4
  %24 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %25 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %23, %27
  br i1 %28, label %29, label %307

29:                                               ; preds = %22
  %30 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %31 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %18, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = bitcast i32* %35 to %struct.nfp_fl_act_head*
  store %struct.nfp_fl_act_head* %36, %struct.nfp_fl_act_head** %17, align 8
  %37 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %17, align 8
  %38 = getelementptr inbounds %struct.nfp_fl_act_head, %struct.nfp_fl_act_head* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  switch i32 %40, label %296 [
    i32 142, label %41
    i32 137, label %49
    i32 141, label %61
    i32 133, label %65
    i32 136, label %84
    i32 135, label %139
    i32 134, label %158
    i32 131, label %179
    i32 132, label %209
    i32 130, label %239
    i32 128, label %268
    i32 129, label %268
    i32 139, label %295
    i32 140, label %295
    i32 138, label %295
  ]

41:                                               ; preds = %29
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %44, %41
  br label %299

49:                                               ; preds = %29
  %50 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %17, align 8
  %51 = bitcast %struct.nfp_fl_act_head* %50 to %struct.nfp_fl_push_vlan*
  store %struct.nfp_fl_push_vlan* %51, %struct.nfp_fl_push_vlan** %14, align 8
  %52 = load %struct.nfp_fl_push_vlan*, %struct.nfp_fl_push_vlan** %14, align 8
  %53 = getelementptr inbounds %struct.nfp_fl_push_vlan, %struct.nfp_fl_push_vlan* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = call i8* @cpu_to_be16(i32 65535)
  %58 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %59 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %49
  br label %299

61:                                               ; preds = %29
  %62 = call i8* @cpu_to_be16(i32 0)
  %63 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %64 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  br label %299

65:                                               ; preds = %29
  %66 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %67 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = call i32 @eth_broadcast_addr(i32* %70)
  %72 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %73 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = call i32 @eth_broadcast_addr(i32* %76)
  %78 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %79 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %78, i32 0, i32 0
  %80 = call i32 @memset(%struct.TYPE_13__* %79, i32 255, i32 4)
  %81 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %82 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %81, i32 0, i32 2
  %83 = call i32 @memset(%struct.TYPE_13__* %82, i32 255, i32 4)
  br label %299

84:                                               ; preds = %29
  %85 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %17, align 8
  %86 = bitcast %struct.nfp_fl_act_head* %85 to %struct.nfp_fl_set_eth*
  store %struct.nfp_fl_set_eth* %86, %struct.nfp_fl_set_eth** %16, align 8
  store i32 0, i32* %21, align 4
  br label %87

87:                                               ; preds = %108, %84
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* @ETH_ALEN, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = load %struct.nfp_fl_set_eth*, %struct.nfp_fl_set_eth** %16, align 8
  %93 = getelementptr inbounds %struct.nfp_fl_set_eth, %struct.nfp_fl_set_eth* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %100 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %21, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %98
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %91
  %109 = load i32, i32* %21, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %21, align 4
  br label %87

111:                                              ; preds = %87
  store i32 0, i32* %21, align 4
  br label %112

112:                                              ; preds = %135, %111
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* @ETH_ALEN, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %112
  %117 = load %struct.nfp_fl_set_eth*, %struct.nfp_fl_set_eth** %16, align 8
  %118 = getelementptr inbounds %struct.nfp_fl_set_eth, %struct.nfp_fl_set_eth* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* @ETH_ALEN, align 4
  %121 = load i32, i32* %21, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %127 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %125
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %116
  %136 = load i32, i32* %21, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %21, align 4
  br label %112

138:                                              ; preds = %112
  br label %299

139:                                              ; preds = %29
  %140 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %17, align 8
  %141 = bitcast %struct.nfp_fl_act_head* %140 to %struct.nfp_fl_set_ip4_addrs*
  store %struct.nfp_fl_set_ip4_addrs* %141, %struct.nfp_fl_set_ip4_addrs** %12, align 8
  %142 = load %struct.nfp_fl_set_ip4_addrs*, %struct.nfp_fl_set_ip4_addrs** %12, align 8
  %143 = getelementptr inbounds %struct.nfp_fl_set_ip4_addrs, %struct.nfp_fl_set_ip4_addrs* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %146 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %144
  store i32 %149, i32* %147, align 8
  %150 = load %struct.nfp_fl_set_ip4_addrs*, %struct.nfp_fl_set_ip4_addrs** %12, align 8
  %151 = getelementptr inbounds %struct.nfp_fl_set_ip4_addrs, %struct.nfp_fl_set_ip4_addrs* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %154 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %152
  store i32 %157, i32* %155, align 4
  br label %299

158:                                              ; preds = %29
  %159 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %17, align 8
  %160 = bitcast %struct.nfp_fl_act_head* %159 to %struct.nfp_fl_set_ip4_ttl_tos*
  store %struct.nfp_fl_set_ip4_ttl_tos* %160, %struct.nfp_fl_set_ip4_ttl_tos** %11, align 8
  %161 = load %struct.nfp_fl_set_ip4_ttl_tos*, %struct.nfp_fl_set_ip4_ttl_tos** %11, align 8
  %162 = getelementptr inbounds %struct.nfp_fl_set_ip4_ttl_tos, %struct.nfp_fl_set_ip4_ttl_tos* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %165 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %163
  store i32 %169, i32* %167, align 4
  %170 = load %struct.nfp_fl_set_ip4_ttl_tos*, %struct.nfp_fl_set_ip4_ttl_tos** %11, align 8
  %171 = getelementptr inbounds %struct.nfp_fl_set_ip4_ttl_tos, %struct.nfp_fl_set_ip4_ttl_tos* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %174 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %172
  store i32 %178, i32* %176, align 4
  br label %299

179:                                              ; preds = %29
  %180 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %17, align 8
  %181 = bitcast %struct.nfp_fl_act_head* %180 to %struct.nfp_fl_set_ipv6_addr*
  store %struct.nfp_fl_set_ipv6_addr* %181, %struct.nfp_fl_set_ipv6_addr** %13, align 8
  store i32 0, i32* %21, align 4
  br label %182

182:                                              ; preds = %205, %179
  %183 = load i32, i32* %21, align 4
  %184 = icmp slt i32 %183, 4
  br i1 %184, label %185, label %208

185:                                              ; preds = %182
  %186 = load %struct.nfp_fl_set_ipv6_addr*, %struct.nfp_fl_set_ipv6_addr** %13, align 8
  %187 = getelementptr inbounds %struct.nfp_fl_set_ipv6_addr, %struct.nfp_fl_set_ipv6_addr* %186, i32 0, i32 0
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %187, align 8
  %189 = load i32, i32* %21, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %195 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %21, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %193
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %185
  %206 = load i32, i32* %21, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %21, align 4
  br label %182

208:                                              ; preds = %182
  br label %299

209:                                              ; preds = %29
  %210 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %17, align 8
  %211 = bitcast %struct.nfp_fl_act_head* %210 to %struct.nfp_fl_set_ipv6_addr*
  store %struct.nfp_fl_set_ipv6_addr* %211, %struct.nfp_fl_set_ipv6_addr** %13, align 8
  store i32 0, i32* %21, align 4
  br label %212

212:                                              ; preds = %235, %209
  %213 = load i32, i32* %21, align 4
  %214 = icmp slt i32 %213, 4
  br i1 %214, label %215, label %238

215:                                              ; preds = %212
  %216 = load %struct.nfp_fl_set_ipv6_addr*, %struct.nfp_fl_set_ipv6_addr** %13, align 8
  %217 = getelementptr inbounds %struct.nfp_fl_set_ipv6_addr, %struct.nfp_fl_set_ipv6_addr* %216, i32 0, i32 0
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %217, align 8
  %219 = load i32, i32* %21, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %225 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %21, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %223
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %215
  %236 = load i32, i32* %21, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %21, align 4
  br label %212

238:                                              ; preds = %212
  br label %299

239:                                              ; preds = %29
  %240 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %17, align 8
  %241 = bitcast %struct.nfp_fl_act_head* %240 to %struct.nfp_fl_set_ipv6_tc_hl_fl*
  store %struct.nfp_fl_set_ipv6_tc_hl_fl* %241, %struct.nfp_fl_set_ipv6_tc_hl_fl** %10, align 8
  %242 = load %struct.nfp_fl_set_ipv6_tc_hl_fl*, %struct.nfp_fl_set_ipv6_tc_hl_fl** %10, align 8
  %243 = getelementptr inbounds %struct.nfp_fl_set_ipv6_tc_hl_fl, %struct.nfp_fl_set_ipv6_tc_hl_fl* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %246 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %244
  store i32 %250, i32* %248, align 4
  %251 = load %struct.nfp_fl_set_ipv6_tc_hl_fl*, %struct.nfp_fl_set_ipv6_tc_hl_fl** %10, align 8
  %252 = getelementptr inbounds %struct.nfp_fl_set_ipv6_tc_hl_fl, %struct.nfp_fl_set_ipv6_tc_hl_fl* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %255 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %253
  store i32 %259, i32* %257, align 4
  %260 = load %struct.nfp_fl_set_ipv6_tc_hl_fl*, %struct.nfp_fl_set_ipv6_tc_hl_fl** %10, align 8
  %261 = getelementptr inbounds %struct.nfp_fl_set_ipv6_tc_hl_fl, %struct.nfp_fl_set_ipv6_tc_hl_fl* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %264 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = or i32 %266, %262
  store i32 %267, i32* %265, align 8
  br label %299

268:                                              ; preds = %29, %29
  %269 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %17, align 8
  %270 = bitcast %struct.nfp_fl_act_head* %269 to %struct.nfp_fl_set_tport*
  store %struct.nfp_fl_set_tport* %270, %struct.nfp_fl_set_tport** %15, align 8
  %271 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %7, align 8
  %272 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 0
  store i32* %273, i32** %20, align 8
  store i32 0, i32* %21, align 4
  br label %274

274:                                              ; preds = %291, %268
  %275 = load i32, i32* %21, align 4
  %276 = icmp slt i32 %275, 4
  br i1 %276, label %277, label %294

277:                                              ; preds = %274
  %278 = load %struct.nfp_fl_set_tport*, %struct.nfp_fl_set_tport** %15, align 8
  %279 = getelementptr inbounds %struct.nfp_fl_set_tport, %struct.nfp_fl_set_tport* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %21, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** %20, align 8
  %286 = load i32, i32* %21, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %284
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %277
  %292 = load i32, i32* %21, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %21, align 4
  br label %274

294:                                              ; preds = %274
  br label %299

295:                                              ; preds = %29, %29, %29
  br label %299

296:                                              ; preds = %29
  %297 = load i32, i32* @EOPNOTSUPP, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %5, align 4
  br label %314

299:                                              ; preds = %295, %294, %239, %238, %208, %158, %139, %138, %65, %61, %60, %48
  %300 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %17, align 8
  %301 = getelementptr inbounds %struct.nfp_fl_act_head, %struct.nfp_fl_act_head* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @NFP_FL_LW_SIZ, align 4
  %304 = shl i32 %302, %303
  %305 = load i32, i32* %18, align 4
  %306 = add i32 %305, %304
  store i32 %306, i32* %18, align 4
  br label %22

307:                                              ; preds = %22
  %308 = load i32*, i32** %8, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load i32, i32* %19, align 4
  %312 = load i32*, i32** %8, align 8
  store i32 %311, i32* %312, align 4
  br label %313

313:                                              ; preds = %310, %307
  store i32 0, i32* %5, align 4
  br label %314

314:                                              ; preds = %313, %296
  %315 = load i32, i32* %5, align 4
  ret i32 %315
}

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @eth_broadcast_addr(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
