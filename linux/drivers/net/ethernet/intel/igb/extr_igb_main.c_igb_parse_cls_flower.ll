; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_parse_cls_flower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_parse_cls_flower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32 }
%struct.flow_cls_offload = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.igb_nfc_filter = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }
%struct.flow_rule = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.flow_dissector* }
%struct.flow_dissector = type { i32 }
%struct.flow_match_eth_addrs = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.flow_match_basic = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.flow_match_vlan = type { %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64 }

@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_CONTROL = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ETH_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_VLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Unsupported key used, only BASIC, CONTROL, ETH_ADDRS and VLAN are supported\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Only full masks are supported for destination MAC address\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IGB_FILTER_FLAG_DST_MAC_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Only full masks are supported for source MAC address\00", align 1
@IGB_FILTER_FLAG_SRC_MAC_ADDR = common dso_local global i32 0, align 4
@ETHER_TYPE_FULL_MASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"Only full mask is supported for EtherType filter\00", align 1
@IGB_FILTER_FLAG_ETHER_TYPE = common dso_local global i32 0, align 4
@VLAN_PRIO_FULL_MASK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"Only full mask is supported for VLAN priority\00", align 1
@IGB_FILTER_FLAG_VLAN_TCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, %struct.flow_cls_offload*, i32, %struct.igb_nfc_filter*)* @igb_parse_cls_flower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_parse_cls_flower(%struct.igb_adapter* %0, %struct.flow_cls_offload* %1, i32 %2, %struct.igb_nfc_filter* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca %struct.flow_cls_offload*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.igb_nfc_filter*, align 8
  %10 = alloca %struct.flow_rule*, align 8
  %11 = alloca %struct.flow_dissector*, align 8
  %12 = alloca %struct.netlink_ext_ack*, align 8
  %13 = alloca %struct.flow_match_eth_addrs, align 8
  %14 = alloca %struct.flow_match_basic, align 8
  %15 = alloca %struct.flow_match_vlan, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %6, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.igb_nfc_filter* %3, %struct.igb_nfc_filter** %9, align 8
  %16 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %17 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %16)
  store %struct.flow_rule* %17, %struct.flow_rule** %10, align 8
  %18 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %19 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.flow_dissector*, %struct.flow_dissector** %20, align 8
  store %struct.flow_dissector* %21, %struct.flow_dissector** %11, align 8
  %22 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %23 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %24, align 8
  store %struct.netlink_ext_ack* %25, %struct.netlink_ext_ack** %12, align 8
  %26 = load %struct.flow_dissector*, %struct.flow_dissector** %11, align 8
  %27 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* @FLOW_DISSECTOR_KEY_CONTROL, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @FLOW_DISSECTOR_KEY_VLAN, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = or i32 %36, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %28, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %4
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %45 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %44, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %215

48:                                               ; preds = %4
  %49 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %50 = load i32, i32* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 4
  %51 = call i64 @flow_rule_match_key(%struct.flow_rule* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %126

53:                                               ; preds = %48
  %54 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %55 = call i32 @flow_rule_match_eth_addrs(%struct.flow_rule* %54, %struct.flow_match_eth_addrs* %13)
  %56 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %13, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @is_zero_ether_addr(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %90, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %13, i32 0, i32 1
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @is_broadcast_ether_addr(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %62
  %70 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %71 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %70, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %215

74:                                               ; preds = %62
  %75 = load i32, i32* @IGB_FILTER_FLAG_DST_MAC_ADDR, align 4
  %76 = load %struct.igb_nfc_filter*, %struct.igb_nfc_filter** %9, align 8
  %77 = getelementptr inbounds %struct.igb_nfc_filter, %struct.igb_nfc_filter* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 4
  %81 = load %struct.igb_nfc_filter*, %struct.igb_nfc_filter** %9, align 8
  %82 = getelementptr inbounds %struct.igb_nfc_filter, %struct.igb_nfc_filter* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %13, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ether_addr_copy(i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %74, %53
  %91 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %13, i32 0, i32 1
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @is_zero_ether_addr(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %125, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %13, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @is_broadcast_ether_addr(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %97
  %105 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %106 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %105, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %215

109:                                              ; preds = %97
  %110 = load i32, i32* @IGB_FILTER_FLAG_SRC_MAC_ADDR, align 4
  %111 = load %struct.igb_nfc_filter*, %struct.igb_nfc_filter** %9, align 8
  %112 = getelementptr inbounds %struct.igb_nfc_filter, %struct.igb_nfc_filter* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 4
  %116 = load %struct.igb_nfc_filter*, %struct.igb_nfc_filter** %9, align 8
  %117 = getelementptr inbounds %struct.igb_nfc_filter, %struct.igb_nfc_filter* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %13, i32 0, i32 0
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ether_addr_copy(i32 %119, i32 %123)
  br label %125

125:                                              ; preds = %109, %90
  br label %126

126:                                              ; preds = %125, %48
  %127 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %128 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %129 = call i64 @flow_rule_match_key(%struct.flow_rule* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %166

131:                                              ; preds = %126
  %132 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %133 = call i32 @flow_rule_match_basic(%struct.flow_rule* %132, %struct.flow_match_basic* %14)
  %134 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %14, i32 0, i32 1
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %165

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %14, i32 0, i32 1
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @ETHER_TYPE_FULL_MASK, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %148 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %147, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %5, align 4
  br label %215

151:                                              ; preds = %139
  %152 = load i32, i32* @IGB_FILTER_FLAG_ETHER_TYPE, align 4
  %153 = load %struct.igb_nfc_filter*, %struct.igb_nfc_filter** %9, align 8
  %154 = getelementptr inbounds %struct.igb_nfc_filter, %struct.igb_nfc_filter* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %152
  store i32 %157, i32* %155, align 4
  %158 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %14, i32 0, i32 0
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.igb_nfc_filter*, %struct.igb_nfc_filter** %9, align 8
  %163 = getelementptr inbounds %struct.igb_nfc_filter, %struct.igb_nfc_filter* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 4
  br label %165

165:                                              ; preds = %151, %131
  br label %166

166:                                              ; preds = %165, %126
  %167 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %168 = load i32, i32* @FLOW_DISSECTOR_KEY_VLAN, align 4
  %169 = call i64 @flow_rule_match_key(%struct.flow_rule* %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %206

171:                                              ; preds = %166
  %172 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %173 = call i32 @flow_rule_match_vlan(%struct.flow_rule* %172, %struct.flow_match_vlan* %15)
  %174 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %15, i32 0, i32 1
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %205

179:                                              ; preds = %171
  %180 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %15, i32 0, i32 1
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @VLAN_PRIO_FULL_MASK, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %179
  %187 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %188 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %187, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %5, align 4
  br label %215

191:                                              ; preds = %179
  %192 = load i32, i32* @IGB_FILTER_FLAG_VLAN_TCI, align 4
  %193 = load %struct.igb_nfc_filter*, %struct.igb_nfc_filter** %9, align 8
  %194 = getelementptr inbounds %struct.igb_nfc_filter, %struct.igb_nfc_filter* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %192
  store i32 %197, i32* %195, align 4
  %198 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %15, i32 0, i32 0
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.igb_nfc_filter*, %struct.igb_nfc_filter** %9, align 8
  %203 = getelementptr inbounds %struct.igb_nfc_filter, %struct.igb_nfc_filter* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 4
  br label %205

205:                                              ; preds = %191, %171
  br label %206

206:                                              ; preds = %205, %166
  %207 = load i32, i32* %8, align 4
  %208 = load %struct.igb_nfc_filter*, %struct.igb_nfc_filter** %9, align 8
  %209 = getelementptr inbounds %struct.igb_nfc_filter, %struct.igb_nfc_filter* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 4
  %210 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %211 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.igb_nfc_filter*, %struct.igb_nfc_filter** %9, align 8
  %214 = getelementptr inbounds %struct.igb_nfc_filter, %struct.igb_nfc_filter* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  store i32 0, i32* %5, align 4
  br label %215

215:                                              ; preds = %206, %186, %146, %104, %69, %43
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_eth_addrs(%struct.flow_rule*, %struct.flow_match_eth_addrs*) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

declare dso_local i32 @flow_rule_match_vlan(%struct.flow_rule*, %struct.flow_match_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
