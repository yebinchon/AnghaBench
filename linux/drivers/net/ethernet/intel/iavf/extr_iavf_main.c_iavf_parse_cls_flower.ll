; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_parse_cls_flower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_parse_cls_flower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.iavf_cloud_filter = type { %struct.virtchnl_filter }
%struct.virtchnl_filter = type { i32, %struct.TYPE_30__, %struct.TYPE_28__, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i64, i64, i64*, i64*, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32*, i32*, i32, i32, i32, i64*, i64* }
%struct.flow_rule = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.flow_dissector* }
%struct.flow_dissector = type { i32 }
%struct.flow_match_enc_keyid = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64 }
%struct.flow_match_basic = type { %struct.TYPE_36__*, %struct.TYPE_35__* }
%struct.TYPE_36__ = type { i64, i32 }
%struct.TYPE_35__ = type { i32 }
%struct.flow_match_eth_addrs = type { %struct.TYPE_38__*, %struct.TYPE_37__* }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.flow_match_vlan = type { %struct.TYPE_40__*, %struct.TYPE_39__* }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.flow_match_control = type { %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i64 }
%struct.flow_match_ipv4_addrs = type { %struct.TYPE_22__*, %struct.TYPE_42__* }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_42__ = type { i64, i64 }
%struct.flow_match_ipv6_addrs = type { %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { %struct.TYPE_34__, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.flow_match_ports = type { %struct.TYPE_31__*, %struct.TYPE_26__* }
%struct.TYPE_31__ = type { i64, i64 }
%struct.TYPE_26__ = type { i32, i32 }

@FLOW_DISSECTOR_KEY_CONTROL = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_ETH_ADDRS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_VLAN = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_ENC_KEYID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unsupported key used: 0x%x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IAVF_CLOUD_FIELD_TEN_ID = common dso_local global i32 0, align 4
@ETH_P_ALL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VIRTCHNL_TCP_V6_FLOW = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Only TCP transport is supported\0A\00", align 1
@IAVF_CLOUD_FIELD_OMAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Bad ether dest mask %pM\0A\00", align 1
@IAVF_ERR_CONFIG = common dso_local global i32 0, align 4
@IAVF_CLOUD_FIELD_IMAC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Bad ether src mask %pM\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@IAVF_CLOUD_FIELD_IVLAN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Bad vlan mask %u\0A\00", align 1
@IAVF_CLOUD_FIELD_IIP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Bad ip dst mask 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Bad ip src mask 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Tenant id not allowed for ip filter\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Bad ipv6 dst mask 0x%02x\0A\00", align 1
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"ipv6 addr should not be loopback\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Bad src port mask %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Bad dst port mask %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*, %struct.flow_cls_offload*, %struct.iavf_cloud_filter*)* @iavf_parse_cls_flower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_parse_cls_flower(%struct.iavf_adapter* %0, %struct.flow_cls_offload* %1, %struct.iavf_cloud_filter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iavf_adapter*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.iavf_cloud_filter*, align 8
  %8 = alloca %struct.flow_rule*, align 8
  %9 = alloca %struct.flow_dissector*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.virtchnl_filter*, align 8
  %17 = alloca %struct.flow_match_enc_keyid, align 8
  %18 = alloca %struct.flow_match_basic, align 8
  %19 = alloca %struct.flow_match_eth_addrs, align 8
  %20 = alloca %struct.flow_match_vlan, align 8
  %21 = alloca %struct.flow_match_control, align 8
  %22 = alloca %struct.flow_match_ipv4_addrs, align 8
  %23 = alloca %struct.flow_match_ipv6_addrs, align 8
  %24 = alloca %struct.flow_match_ports, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %5, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %6, align 8
  store %struct.iavf_cloud_filter* %2, %struct.iavf_cloud_filter** %7, align 8
  %25 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %26 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %25)
  store %struct.flow_rule* %26, %struct.flow_rule** %8, align 8
  %27 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %28 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %28, i32 0, i32 0
  %30 = load %struct.flow_dissector*, %struct.flow_dissector** %29, align 8
  store %struct.flow_dissector* %30, %struct.flow_dissector** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %31 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %7, align 8
  %32 = getelementptr inbounds %struct.iavf_cloud_filter, %struct.iavf_cloud_filter* %31, i32 0, i32 0
  store %struct.virtchnl_filter* %32, %struct.virtchnl_filter** %16, align 8
  %33 = load %struct.flow_dissector*, %struct.flow_dissector** %9, align 8
  %34 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @FLOW_DISSECTOR_KEY_CONTROL, align 8
  %37 = call i32 @BIT(i64 %36)
  %38 = load i64, i64* @FLOW_DISSECTOR_KEY_BASIC, align 8
  %39 = call i32 @BIT(i64 %38)
  %40 = or i32 %37, %39
  %41 = load i64, i64* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 8
  %42 = call i32 @BIT(i64 %41)
  %43 = or i32 %40, %42
  %44 = load i64, i64* @FLOW_DISSECTOR_KEY_VLAN, align 8
  %45 = call i32 @BIT(i64 %44)
  %46 = or i32 %43, %45
  %47 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %48 = call i32 @BIT(i64 %47)
  %49 = or i32 %46, %48
  %50 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %51 = call i32 @BIT(i64 %50)
  %52 = or i32 %49, %51
  %53 = load i64, i64* @FLOW_DISSECTOR_KEY_PORTS, align 8
  %54 = call i32 @BIT(i64 %53)
  %55 = or i32 %52, %54
  %56 = load i64, i64* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 8
  %57 = call i32 @BIT(i64 %56)
  %58 = or i32 %55, %57
  %59 = xor i32 %58, -1
  %60 = and i32 %35, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %3
  %63 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %64 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %63, i32 0, i32 0
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load %struct.flow_dissector*, %struct.flow_dissector** %9, align 8
  %68 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EOPNOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %747

73:                                               ; preds = %3
  %74 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %75 = load i64, i64* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 8
  %76 = call i64 @flow_rule_match_key(%struct.flow_rule* %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %80 = call i32 @flow_rule_match_enc_keyid(%struct.flow_rule* %79, %struct.flow_match_enc_keyid* %17)
  %81 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %17, i32 0, i32 0
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* @IAVF_CLOUD_FIELD_TEN_ID, align 4
  %88 = load i32, i32* %12, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %86, %78
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %93 = load i64, i64* @FLOW_DISSECTOR_KEY_BASIC, align 8
  %94 = call i64 @flow_rule_match_key(%struct.flow_rule* %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %151

96:                                               ; preds = %91
  %97 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %98 = call i32 @flow_rule_match_basic(%struct.flow_rule* %97, %struct.flow_match_basic* %18)
  %99 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %18, i32 0, i32 0
  %100 = load %struct.TYPE_36__*, %struct.TYPE_36__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @ntohs(i32 %102)
  store i64 %103, i64* %11, align 8
  %104 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %18, i32 0, i32 1
  %105 = load %struct.TYPE_35__*, %struct.TYPE_35__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @ntohs(i32 %107)
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @ETH_P_ALL, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %96
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %113

113:                                              ; preds = %112, %96
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %10, align 8
  %116 = and i64 %114, %115
  store i64 %116, i64* %14, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i64, i64* @ETH_P_IP, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* @ETH_P_IPV6, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %747

127:                                              ; preds = %120, %113
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* @ETH_P_IPV6, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* @VIRTCHNL_TCP_V6_FLOW, align 4
  %133 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %134 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %131, %127
  %136 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %18, i32 0, i32 0
  %137 = load %struct.TYPE_36__*, %struct.TYPE_36__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @IPPROTO_TCP, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %135
  %143 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %144 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %143, i32 0, i32 0
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 0
  %147 = call i32 @dev_info(i32* %146, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %747

150:                                              ; preds = %135
  br label %151

151:                                              ; preds = %150, %91
  %152 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %153 = load i64, i64* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 8
  %154 = call i64 @flow_rule_match_key(%struct.flow_rule* %152, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %323

156:                                              ; preds = %151
  %157 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %158 = call i32 @flow_rule_match_eth_addrs(%struct.flow_rule* %157, %struct.flow_match_eth_addrs* %19)
  %159 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 1
  %160 = load %struct.TYPE_37__*, %struct.TYPE_37__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @is_zero_ether_addr(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %188, label %165

165:                                              ; preds = %156
  %166 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 1
  %167 = load %struct.TYPE_37__*, %struct.TYPE_37__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @is_broadcast_ether_addr(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load i32, i32* @IAVF_CLOUD_FIELD_OMAC, align 4
  %174 = load i32, i32* %12, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %12, align 4
  br label %187

176:                                              ; preds = %165
  %177 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %178 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %177, i32 0, i32 0
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 1
  %182 = load %struct.TYPE_37__*, %struct.TYPE_37__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32*, i8*, ...) @dev_err(i32* %180, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* @IAVF_ERR_CONFIG, align 4
  store i32 %186, i32* %4, align 4
  br label %747

187:                                              ; preds = %172
  br label %188

188:                                              ; preds = %187, %156
  %189 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 1
  %190 = load %struct.TYPE_37__*, %struct.TYPE_37__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @is_zero_ether_addr(i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %218, label %195

195:                                              ; preds = %188
  %196 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 1
  %197 = load %struct.TYPE_37__*, %struct.TYPE_37__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @is_broadcast_ether_addr(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %195
  %203 = load i32, i32* @IAVF_CLOUD_FIELD_IMAC, align 4
  %204 = load i32, i32* %12, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %12, align 4
  br label %217

206:                                              ; preds = %195
  %207 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %208 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %207, i32 0, i32 0
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 1
  %212 = load %struct.TYPE_37__*, %struct.TYPE_37__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i32*, i8*, ...) @dev_err(i32* %210, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* @IAVF_ERR_CONFIG, align 4
  store i32 %216, i32* %4, align 4
  br label %747

217:                                              ; preds = %202
  br label %218

218:                                              ; preds = %217, %188
  %219 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 0
  %220 = load %struct.TYPE_38__*, %struct.TYPE_38__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @is_zero_ether_addr(i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %270, label %225

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 0
  %227 = load %struct.TYPE_38__*, %struct.TYPE_38__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i64 @is_valid_ether_addr(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %239, label %232

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 0
  %234 = load %struct.TYPE_38__*, %struct.TYPE_38__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @is_multicast_ether_addr(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %269

239:                                              ; preds = %232, %225
  store i32 0, i32* %15, align 4
  br label %240

240:                                              ; preds = %255, %239
  %241 = load i32, i32* %15, align 4
  %242 = load i32, i32* @ETH_ALEN, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %258

244:                                              ; preds = %240
  %245 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %246 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %15, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, 255
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %244
  %256 = load i32, i32* %15, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %15, align 4
  br label %240

258:                                              ; preds = %240
  %259 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %260 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 0
  %265 = load %struct.TYPE_38__*, %struct.TYPE_38__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @ether_addr_copy(i32 %263, i32 %267)
  br label %269

269:                                              ; preds = %258, %232
  br label %270

270:                                              ; preds = %269, %218
  %271 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 0
  %272 = load %struct.TYPE_38__*, %struct.TYPE_38__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @is_zero_ether_addr(i32 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %322, label %277

277:                                              ; preds = %270
  %278 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 0
  %279 = load %struct.TYPE_38__*, %struct.TYPE_38__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i64 @is_valid_ether_addr(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %291, label %284

284:                                              ; preds = %277
  %285 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 0
  %286 = load %struct.TYPE_38__*, %struct.TYPE_38__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i64 @is_multicast_ether_addr(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %321

291:                                              ; preds = %284, %277
  store i32 0, i32* %15, align 4
  br label %292

292:                                              ; preds = %307, %291
  %293 = load i32, i32* %15, align 4
  %294 = load i32, i32* @ETH_ALEN, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %310

296:                                              ; preds = %292
  %297 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %298 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %15, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, 255
  store i32 %306, i32* %304, align 4
  br label %307

307:                                              ; preds = %296
  %308 = load i32, i32* %15, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %15, align 4
  br label %292

310:                                              ; preds = %292
  %311 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %312 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 8
  %316 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 0
  %317 = load %struct.TYPE_38__*, %struct.TYPE_38__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @ether_addr_copy(i32 %315, i32 %319)
  br label %321

321:                                              ; preds = %310, %284
  br label %322

322:                                              ; preds = %321, %270
  br label %323

323:                                              ; preds = %322, %151
  %324 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %325 = load i64, i64* @FLOW_DISSECTOR_KEY_VLAN, align 8
  %326 = call i64 @flow_rule_match_key(%struct.flow_rule* %324, i64 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %376

328:                                              ; preds = %323
  %329 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %330 = call i32 @flow_rule_match_vlan(%struct.flow_rule* %329, %struct.flow_match_vlan* %20)
  %331 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %20, i32 0, i32 1
  %332 = load %struct.TYPE_39__*, %struct.TYPE_39__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %359

336:                                              ; preds = %328
  %337 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %20, i32 0, i32 1
  %338 = load %struct.TYPE_39__*, %struct.TYPE_39__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @VLAN_VID_MASK, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %347

343:                                              ; preds = %336
  %344 = load i32, i32* @IAVF_CLOUD_FIELD_IVLAN, align 4
  %345 = load i32, i32* %12, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %12, align 4
  br label %358

347:                                              ; preds = %336
  %348 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %349 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %348, i32 0, i32 0
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %20, i32 0, i32 1
  %353 = load %struct.TYPE_39__*, %struct.TYPE_39__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = call i32 (i32*, i8*, ...) @dev_err(i32* %351, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %355)
  %357 = load i32, i32* @IAVF_ERR_CONFIG, align 4
  store i32 %357, i32* %4, align 4
  br label %747

358:                                              ; preds = %343
  br label %359

359:                                              ; preds = %358, %328
  %360 = call i32 @cpu_to_be16(i32 65535)
  %361 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %362 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = or i32 %365, %360
  store i32 %366, i32* %364, align 8
  %367 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %20, i32 0, i32 0
  %368 = load %struct.TYPE_40__*, %struct.TYPE_40__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @cpu_to_be16(i32 %370)
  %372 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %373 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %374, i32 0, i32 0
  store i32 %371, i32* %375, align 8
  br label %376

376:                                              ; preds = %359, %323
  %377 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %378 = load i64, i64* @FLOW_DISSECTOR_KEY_CONTROL, align 8
  %379 = call i64 @flow_rule_match_key(%struct.flow_rule* %377, i64 %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %388

381:                                              ; preds = %376
  %382 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %383 = call i32 @flow_rule_match_control(%struct.flow_rule* %382, %struct.flow_match_control* %21)
  %384 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %21, i32 0, i32 0
  %385 = load %struct.TYPE_41__*, %struct.TYPE_41__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  store i64 %387, i64* %13, align 8
  br label %388

388:                                              ; preds = %381, %376
  %389 = load i64, i64* %13, align 8
  %390 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %519

392:                                              ; preds = %388
  %393 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %394 = call i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule* %393, %struct.flow_match_ipv4_addrs* %22)
  %395 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %22, i32 0, i32 1
  %396 = load %struct.TYPE_42__*, %struct.TYPE_42__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %424

400:                                              ; preds = %392
  %401 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %22, i32 0, i32 1
  %402 = load %struct.TYPE_42__*, %struct.TYPE_42__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = call i64 @cpu_to_be32(i32 -1)
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %411

407:                                              ; preds = %400
  %408 = load i32, i32* @IAVF_CLOUD_FIELD_IIP, align 4
  %409 = load i32, i32* %12, align 4
  %410 = or i32 %409, %408
  store i32 %410, i32* %12, align 4
  br label %423

411:                                              ; preds = %400
  %412 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %413 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %412, i32 0, i32 0
  %414 = load %struct.TYPE_25__*, %struct.TYPE_25__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %22, i32 0, i32 1
  %417 = load %struct.TYPE_42__*, %struct.TYPE_42__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = call i32 @be32_to_cpu(i64 %419)
  %421 = call i32 (i32*, i8*, ...) @dev_err(i32* %415, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %420)
  %422 = load i32, i32* @IAVF_ERR_CONFIG, align 4
  store i32 %422, i32* %4, align 4
  br label %747

423:                                              ; preds = %407
  br label %424

424:                                              ; preds = %423, %392
  %425 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %22, i32 0, i32 1
  %426 = load %struct.TYPE_42__*, %struct.TYPE_42__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %454

430:                                              ; preds = %424
  %431 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %22, i32 0, i32 1
  %432 = load %struct.TYPE_42__*, %struct.TYPE_42__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = call i64 @cpu_to_be32(i32 -1)
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %441

437:                                              ; preds = %430
  %438 = load i32, i32* @IAVF_CLOUD_FIELD_IIP, align 4
  %439 = load i32, i32* %12, align 4
  %440 = or i32 %439, %438
  store i32 %440, i32* %12, align 4
  br label %453

441:                                              ; preds = %430
  %442 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %443 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %442, i32 0, i32 0
  %444 = load %struct.TYPE_25__*, %struct.TYPE_25__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %22, i32 0, i32 1
  %447 = load %struct.TYPE_42__*, %struct.TYPE_42__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = call i32 @be32_to_cpu(i64 %449)
  %451 = call i32 (i32*, i8*, ...) @dev_err(i32* %445, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %450)
  %452 = load i32, i32* @IAVF_ERR_CONFIG, align 4
  store i32 %452, i32* %4, align 4
  br label %747

453:                                              ; preds = %437
  br label %454

454:                                              ; preds = %453, %424
  %455 = load i32, i32* %12, align 4
  %456 = load i32, i32* @IAVF_CLOUD_FIELD_TEN_ID, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %466

459:                                              ; preds = %454
  %460 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %461 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %460, i32 0, i32 0
  %462 = load %struct.TYPE_25__*, %struct.TYPE_25__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %462, i32 0, i32 0
  %464 = call i32 @dev_info(i32* %463, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %465 = load i32, i32* @IAVF_ERR_CONFIG, align 4
  store i32 %465, i32* %4, align 4
  br label %747

466:                                              ; preds = %454
  %467 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %22, i32 0, i32 0
  %468 = load %struct.TYPE_22__*, %struct.TYPE_22__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %468, i32 0, i32 1
  %470 = load i64, i64* %469, align 8
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %492

472:                                              ; preds = %466
  %473 = call i64 @cpu_to_be32(i32 -1)
  %474 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %475 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %474, i32 0, i32 2
  %476 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %476, i32 0, i32 6
  %478 = load i64*, i64** %477, align 8
  %479 = getelementptr inbounds i64, i64* %478, i64 0
  %480 = load i64, i64* %479, align 8
  %481 = or i64 %480, %473
  store i64 %481, i64* %479, align 8
  %482 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %22, i32 0, i32 0
  %483 = load %struct.TYPE_22__*, %struct.TYPE_22__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %487 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %488, i32 0, i32 4
  %490 = load i64*, i64** %489, align 8
  %491 = getelementptr inbounds i64, i64* %490, i64 0
  store i64 %485, i64* %491, align 8
  br label %492

492:                                              ; preds = %472, %466
  %493 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %22, i32 0, i32 0
  %494 = load %struct.TYPE_22__*, %struct.TYPE_22__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %518

498:                                              ; preds = %492
  %499 = call i64 @cpu_to_be32(i32 -1)
  %500 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %501 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %500, i32 0, i32 2
  %502 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %502, i32 0, i32 5
  %504 = load i64*, i64** %503, align 8
  %505 = getelementptr inbounds i64, i64* %504, i64 0
  %506 = load i64, i64* %505, align 8
  %507 = or i64 %506, %499
  store i64 %507, i64* %505, align 8
  %508 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %22, i32 0, i32 0
  %509 = load %struct.TYPE_22__*, %struct.TYPE_22__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %513 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %514, i32 0, i32 3
  %516 = load i64*, i64** %515, align 8
  %517 = getelementptr inbounds i64, i64* %516, i64 0
  store i64 %511, i64* %517, align 8
  br label %518

518:                                              ; preds = %498, %492
  br label %519

519:                                              ; preds = %518, %388
  %520 = load i64, i64* %13, align 8
  %521 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %522 = icmp eq i64 %520, %521
  br i1 %522, label %523, label %631

523:                                              ; preds = %519
  %524 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %525 = call i32 @flow_rule_match_ipv6_addrs(%struct.flow_rule* %524, %struct.flow_match_ipv6_addrs* %23)
  %526 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %23, i32 0, i32 1
  %527 = load %struct.TYPE_23__*, %struct.TYPE_23__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %527, i32 0, i32 1
  %529 = call i64 @ipv6_addr_any(i32* %528)
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %539

531:                                              ; preds = %523
  %532 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %533 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %532, i32 0, i32 0
  %534 = load %struct.TYPE_25__*, %struct.TYPE_25__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %534, i32 0, i32 0
  %536 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %537 = call i32 (i32*, i8*, ...) @dev_err(i32* %535, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %536)
  %538 = load i32, i32* @IAVF_ERR_CONFIG, align 4
  store i32 %538, i32* %4, align 4
  br label %747

539:                                              ; preds = %523
  %540 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %23, i32 0, i32 0
  %541 = load %struct.TYPE_24__*, %struct.TYPE_24__** %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %541, i32 0, i32 1
  %543 = call i64 @ipv6_addr_loopback(%struct.TYPE_34__* %542)
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %551, label %545

545:                                              ; preds = %539
  %546 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %23, i32 0, i32 0
  %547 = load %struct.TYPE_24__*, %struct.TYPE_24__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %547, i32 0, i32 0
  %549 = call i64 @ipv6_addr_loopback(%struct.TYPE_34__* %548)
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %558

551:                                              ; preds = %545, %539
  %552 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %553 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %552, i32 0, i32 0
  %554 = load %struct.TYPE_25__*, %struct.TYPE_25__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %554, i32 0, i32 0
  %556 = call i32 (i32*, i8*, ...) @dev_err(i32* %555, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %557 = load i32, i32* @IAVF_ERR_CONFIG, align 4
  store i32 %557, i32* %4, align 4
  br label %747

558:                                              ; preds = %545
  %559 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %23, i32 0, i32 1
  %560 = load %struct.TYPE_23__*, %struct.TYPE_23__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %560, i32 0, i32 1
  %562 = call i64 @ipv6_addr_any(i32* %561)
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %570

564:                                              ; preds = %558
  %565 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %23, i32 0, i32 1
  %566 = load %struct.TYPE_23__*, %struct.TYPE_23__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %566, i32 0, i32 0
  %568 = call i64 @ipv6_addr_any(i32* %567)
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %574, label %570

570:                                              ; preds = %564, %558
  %571 = load i32, i32* @IAVF_CLOUD_FIELD_IIP, align 4
  %572 = load i32, i32* %12, align 4
  %573 = or i32 %572, %571
  store i32 %573, i32* %12, align 4
  br label %574

574:                                              ; preds = %570, %564
  store i32 0, i32* %15, align 4
  br label %575

575:                                              ; preds = %590, %574
  %576 = load i32, i32* %15, align 4
  %577 = icmp slt i32 %576, 4
  br i1 %577, label %578, label %593

578:                                              ; preds = %575
  %579 = call i64 @cpu_to_be32(i32 -1)
  %580 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %581 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %580, i32 0, i32 2
  %582 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %582, i32 0, i32 6
  %584 = load i64*, i64** %583, align 8
  %585 = load i32, i32* %15, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i64, i64* %584, i64 %586
  %588 = load i64, i64* %587, align 8
  %589 = or i64 %588, %579
  store i64 %589, i64* %587, align 8
  br label %590

590:                                              ; preds = %578
  %591 = load i32, i32* %15, align 4
  %592 = add nsw i32 %591, 1
  store i32 %592, i32* %15, align 4
  br label %575

593:                                              ; preds = %575
  %594 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %595 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %594, i32 0, i32 1
  %596 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %596, i32 0, i32 4
  %598 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %23, i32 0, i32 0
  %599 = load %struct.TYPE_24__*, %struct.TYPE_24__** %598, align 8
  %600 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %599, i32 0, i32 1
  %601 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %600, i32 0, i32 0
  %602 = call i32 @memcpy(i64** %597, i32* %601, i32 8)
  store i32 0, i32* %15, align 4
  br label %603

603:                                              ; preds = %618, %593
  %604 = load i32, i32* %15, align 4
  %605 = icmp slt i32 %604, 4
  br i1 %605, label %606, label %621

606:                                              ; preds = %603
  %607 = call i64 @cpu_to_be32(i32 -1)
  %608 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %609 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %608, i32 0, i32 2
  %610 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %610, i32 0, i32 5
  %612 = load i64*, i64** %611, align 8
  %613 = load i32, i32* %15, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i64, i64* %612, i64 %614
  %616 = load i64, i64* %615, align 8
  %617 = or i64 %616, %607
  store i64 %617, i64* %615, align 8
  br label %618

618:                                              ; preds = %606
  %619 = load i32, i32* %15, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %15, align 4
  br label %603

621:                                              ; preds = %603
  %622 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %623 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %622, i32 0, i32 1
  %624 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %623, i32 0, i32 0
  %625 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %624, i32 0, i32 3
  %626 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %23, i32 0, i32 0
  %627 = load %struct.TYPE_24__*, %struct.TYPE_24__** %626, align 8
  %628 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %627, i32 0, i32 0
  %629 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %628, i32 0, i32 0
  %630 = call i32 @memcpy(i64** %625, i32* %629, i32 8)
  br label %631

631:                                              ; preds = %621, %519
  %632 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %633 = load i64, i64* @FLOW_DISSECTOR_KEY_PORTS, align 8
  %634 = call i64 @flow_rule_match_key(%struct.flow_rule* %632, i64 %633)
  %635 = icmp ne i64 %634, 0
  br i1 %635, label %636, label %743

636:                                              ; preds = %631
  %637 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %638 = call i32 @flow_rule_match_ports(%struct.flow_rule* %637, %struct.flow_match_ports* %24)
  %639 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %24, i32 0, i32 1
  %640 = load %struct.TYPE_26__*, %struct.TYPE_26__** %639, align 8
  %641 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %640, i32 0, i32 0
  %642 = load i32, i32* %641, align 4
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %668

644:                                              ; preds = %636
  %645 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %24, i32 0, i32 1
  %646 = load %struct.TYPE_26__*, %struct.TYPE_26__** %645, align 8
  %647 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %646, i32 0, i32 0
  %648 = load i32, i32* %647, align 4
  %649 = call i32 @cpu_to_be16(i32 65535)
  %650 = icmp eq i32 %648, %649
  br i1 %650, label %651, label %655

651:                                              ; preds = %644
  %652 = load i32, i32* @IAVF_CLOUD_FIELD_IIP, align 4
  %653 = load i32, i32* %12, align 4
  %654 = or i32 %653, %652
  store i32 %654, i32* %12, align 4
  br label %667

655:                                              ; preds = %644
  %656 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %657 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %656, i32 0, i32 0
  %658 = load %struct.TYPE_25__*, %struct.TYPE_25__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %658, i32 0, i32 0
  %660 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %24, i32 0, i32 1
  %661 = load %struct.TYPE_26__*, %struct.TYPE_26__** %660, align 8
  %662 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %661, i32 0, i32 0
  %663 = load i32, i32* %662, align 4
  %664 = call i32 @be16_to_cpu(i32 %663)
  %665 = call i32 (i32*, i8*, ...) @dev_err(i32* %659, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %664)
  %666 = load i32, i32* @IAVF_ERR_CONFIG, align 4
  store i32 %666, i32* %4, align 4
  br label %747

667:                                              ; preds = %651
  br label %668

668:                                              ; preds = %667, %636
  %669 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %24, i32 0, i32 1
  %670 = load %struct.TYPE_26__*, %struct.TYPE_26__** %669, align 8
  %671 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %670, i32 0, i32 1
  %672 = load i32, i32* %671, align 4
  %673 = icmp ne i32 %672, 0
  br i1 %673, label %674, label %698

674:                                              ; preds = %668
  %675 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %24, i32 0, i32 1
  %676 = load %struct.TYPE_26__*, %struct.TYPE_26__** %675, align 8
  %677 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %676, i32 0, i32 1
  %678 = load i32, i32* %677, align 4
  %679 = call i32 @cpu_to_be16(i32 65535)
  %680 = icmp eq i32 %678, %679
  br i1 %680, label %681, label %685

681:                                              ; preds = %674
  %682 = load i32, i32* @IAVF_CLOUD_FIELD_IIP, align 4
  %683 = load i32, i32* %12, align 4
  %684 = or i32 %683, %682
  store i32 %684, i32* %12, align 4
  br label %697

685:                                              ; preds = %674
  %686 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %687 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %686, i32 0, i32 0
  %688 = load %struct.TYPE_25__*, %struct.TYPE_25__** %687, align 8
  %689 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %688, i32 0, i32 0
  %690 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %24, i32 0, i32 1
  %691 = load %struct.TYPE_26__*, %struct.TYPE_26__** %690, align 8
  %692 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %691, i32 0, i32 1
  %693 = load i32, i32* %692, align 4
  %694 = call i32 @be16_to_cpu(i32 %693)
  %695 = call i32 (i32*, i8*, ...) @dev_err(i32* %689, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %694)
  %696 = load i32, i32* @IAVF_ERR_CONFIG, align 4
  store i32 %696, i32* %4, align 4
  br label %747

697:                                              ; preds = %681
  br label %698

698:                                              ; preds = %697, %668
  %699 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %24, i32 0, i32 0
  %700 = load %struct.TYPE_31__*, %struct.TYPE_31__** %699, align 8
  %701 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %700, i32 0, i32 1
  %702 = load i64, i64* %701, align 8
  %703 = icmp ne i64 %702, 0
  br i1 %703, label %704, label %720

704:                                              ; preds = %698
  %705 = call i32 @cpu_to_be16(i32 65535)
  %706 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %707 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %706, i32 0, i32 2
  %708 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %707, i32 0, i32 0
  %709 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %708, i32 0, i32 3
  %710 = load i32, i32* %709, align 4
  %711 = or i32 %710, %705
  store i32 %711, i32* %709, align 4
  %712 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %24, i32 0, i32 0
  %713 = load %struct.TYPE_31__*, %struct.TYPE_31__** %712, align 8
  %714 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %713, i32 0, i32 1
  %715 = load i64, i64* %714, align 8
  %716 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %717 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %716, i32 0, i32 1
  %718 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %717, i32 0, i32 0
  %719 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %718, i32 0, i32 2
  store i64 %715, i64* %719, align 8
  br label %720

720:                                              ; preds = %704, %698
  %721 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %24, i32 0, i32 0
  %722 = load %struct.TYPE_31__*, %struct.TYPE_31__** %721, align 8
  %723 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %722, i32 0, i32 0
  %724 = load i64, i64* %723, align 8
  %725 = icmp ne i64 %724, 0
  br i1 %725, label %726, label %742

726:                                              ; preds = %720
  %727 = call i32 @cpu_to_be16(i32 65535)
  %728 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %729 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %728, i32 0, i32 2
  %730 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %729, i32 0, i32 0
  %731 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %730, i32 0, i32 4
  %732 = load i32, i32* %731, align 8
  %733 = or i32 %732, %727
  store i32 %733, i32* %731, align 8
  %734 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %24, i32 0, i32 0
  %735 = load %struct.TYPE_31__*, %struct.TYPE_31__** %734, align 8
  %736 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %735, i32 0, i32 0
  %737 = load i64, i64* %736, align 8
  %738 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %739 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %738, i32 0, i32 1
  %740 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %739, i32 0, i32 0
  %741 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %740, i32 0, i32 1
  store i64 %737, i64* %741, align 8
  br label %742

742:                                              ; preds = %726, %720
  br label %743

743:                                              ; preds = %742, %631
  %744 = load i32, i32* %12, align 4
  %745 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %16, align 8
  %746 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %745, i32 0, i32 0
  store i32 %744, i32* %746, align 8
  store i32 0, i32* %4, align 4
  br label %747

747:                                              ; preds = %743, %685, %655, %551, %531, %459, %441, %411, %347, %206, %176, %142, %124, %62
  %748 = load i32, i32* %4, align 4
  ret i32 %748
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i64) #1

declare dso_local i32 @flow_rule_match_enc_keyid(%struct.flow_rule*, %struct.flow_match_enc_keyid*) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @flow_rule_match_eth_addrs(%struct.flow_rule*, %struct.flow_match_eth_addrs*) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @flow_rule_match_vlan(%struct.flow_rule*, %struct.flow_match_vlan*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @flow_rule_match_control(%struct.flow_rule*, %struct.flow_match_control*) #1

declare dso_local i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule*, %struct.flow_match_ipv4_addrs*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @flow_rule_match_ipv6_addrs(%struct.flow_rule*, %struct.flow_match_ipv6_addrs*) #1

declare dso_local i64 @ipv6_addr_any(i32*) #1

declare dso_local i64 @ipv6_addr_loopback(%struct.TYPE_34__*) #1

declare dso_local i32 @memcpy(i64**, i32*, i32) #1

declare dso_local i32 @flow_rule_match_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
