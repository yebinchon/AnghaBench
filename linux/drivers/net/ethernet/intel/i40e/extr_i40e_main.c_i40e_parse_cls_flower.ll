; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_parse_cls_flower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_parse_cls_flower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.i40e_cloud_filter = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32 }
%struct.flow_rule = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.flow_dissector* }
%struct.flow_dissector = type { i32 }
%struct.flow_match_enc_keyid = type { %struct.TYPE_19__*, %struct.TYPE_36__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_36__ = type { i64 }
%struct.flow_match_basic = type { %struct.TYPE_21__*, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.flow_match_eth_addrs = type { %struct.TYPE_23__*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.flow_match_vlan = type { %struct.TYPE_26__*, %struct.TYPE_25__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.flow_match_control = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.flow_match_ipv4_addrs = type { %struct.TYPE_30__*, %struct.TYPE_29__* }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_29__ = type { i64, i64 }
%struct.flow_match_ipv6_addrs = type { %struct.TYPE_32__*, %struct.TYPE_31__* }
%struct.TYPE_32__ = type { %struct.TYPE_27__, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.flow_match_ports = type { %struct.TYPE_34__*, %struct.TYPE_33__* }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_33__ = type { i64, i64 }

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
@I40E_CLOUD_FIELD_TEN_ID = common dso_local global i32 0, align 4
@ETH_P_ALL = common dso_local global i64 0, align 8
@I40E_CLOUD_FIELD_OMAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Bad ether dest mask %pM\0A\00", align 1
@I40E_ERR_CONFIG = common dso_local global i32 0, align 4
@I40E_CLOUD_FIELD_IMAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Bad ether src mask %pM\0A\00", align 1
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@I40E_CLOUD_FIELD_IVLAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Bad vlan mask 0x%04x\0A\00", align 1
@I40E_CLOUD_FIELD_IIP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Bad ip dst mask %pI4b\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Bad ip src mask %pI4b\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Tenant id not allowed for ip filter\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Bad ipv6, addr is LOOPBACK\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Bad src port mask 0x%04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Bad dst port mask 0x%04x\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Only UDP and TCP transport are supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, %struct.flow_cls_offload*, %struct.i40e_cloud_filter*)* @i40e_parse_cls_flower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_parse_cls_flower(%struct.i40e_vsi* %0, %struct.flow_cls_offload* %1, %struct.i40e_cloud_filter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.i40e_cloud_filter*, align 8
  %8 = alloca %struct.flow_rule*, align 8
  %9 = alloca %struct.flow_dissector*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.i40e_pf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.flow_match_enc_keyid, align 8
  %16 = alloca %struct.flow_match_basic, align 8
  %17 = alloca %struct.flow_match_eth_addrs, align 8
  %18 = alloca %struct.flow_match_vlan, align 8
  %19 = alloca %struct.flow_match_control, align 8
  %20 = alloca %struct.flow_match_ipv4_addrs, align 8
  %21 = alloca %struct.flow_match_ipv6_addrs, align 8
  %22 = alloca %struct.flow_match_ports, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %5, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %6, align 8
  store %struct.i40e_cloud_filter* %2, %struct.i40e_cloud_filter** %7, align 8
  %23 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %24 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %23)
  store %struct.flow_rule* %24, %struct.flow_rule** %8, align 8
  %25 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %26 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %26, i32 0, i32 0
  %28 = load %struct.flow_dissector*, %struct.flow_dissector** %27, align 8
  store %struct.flow_dissector* %28, %struct.flow_dissector** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %29 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %30 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %29, i32 0, i32 0
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %30, align 8
  store %struct.i40e_pf* %31, %struct.i40e_pf** %13, align 8
  store i32 0, i32* %14, align 4
  %32 = load %struct.flow_dissector*, %struct.flow_dissector** %9, align 8
  %33 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @FLOW_DISSECTOR_KEY_CONTROL, align 8
  %36 = call i32 @BIT(i64 %35)
  %37 = load i64, i64* @FLOW_DISSECTOR_KEY_BASIC, align 8
  %38 = call i32 @BIT(i64 %37)
  %39 = or i32 %36, %38
  %40 = load i64, i64* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 8
  %41 = call i32 @BIT(i64 %40)
  %42 = or i32 %39, %41
  %43 = load i64, i64* @FLOW_DISSECTOR_KEY_VLAN, align 8
  %44 = call i32 @BIT(i64 %43)
  %45 = or i32 %42, %44
  %46 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %47 = call i32 @BIT(i64 %46)
  %48 = or i32 %45, %47
  %49 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %50 = call i32 @BIT(i64 %49)
  %51 = or i32 %48, %50
  %52 = load i64, i64* @FLOW_DISSECTOR_KEY_PORTS, align 8
  %53 = call i32 @BIT(i64 %52)
  %54 = or i32 %51, %53
  %55 = load i64, i64* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 8
  %56 = call i32 @BIT(i64 %55)
  %57 = or i32 %54, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %34, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %3
  %62 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  %63 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %62, i32 0, i32 0
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load %struct.flow_dissector*, %struct.flow_dissector** %9, align 8
  %67 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EOPNOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %511

72:                                               ; preds = %3
  %73 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %74 = load i64, i64* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 8
  %75 = call i64 @flow_rule_match_key(%struct.flow_rule* %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %72
  %78 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %79 = call i32 @flow_rule_match_enc_keyid(%struct.flow_rule* %78, %struct.flow_match_enc_keyid* %15)
  %80 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %15, i32 0, i32 1
  %81 = load %struct.TYPE_36__*, %struct.TYPE_36__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i32, i32* @I40E_CLOUD_FIELD_TEN_ID, align 4
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %85, %77
  %90 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %15, i32 0, i32 0
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @be32_to_cpu(i32 %93)
  %95 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %96 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %95, i32 0, i32 12
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %89, %72
  %98 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %99 = load i64, i64* @FLOW_DISSECTOR_KEY_BASIC, align 8
  %100 = call i64 @flow_rule_match_key(%struct.flow_rule* %98, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %97
  %103 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %104 = call i32 @flow_rule_match_basic(%struct.flow_rule* %103, %struct.flow_match_basic* %16)
  %105 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %16, i32 0, i32 0
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @ntohs(i32 %108)
  store i64 %109, i64* %11, align 8
  %110 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %16, i32 0, i32 1
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @ntohs(i32 %113)
  store i64 %114, i64* %10, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* @ETH_P_ALL, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %102
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %119

119:                                              ; preds = %118, %102
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %10, align 8
  %122 = and i64 %120, %121
  %123 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %124 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %123, i32 0, i32 11
  store i64 %122, i64* %124, align 8
  %125 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %16, i32 0, i32 0
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %130 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %119, %97
  %132 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %133 = load i64, i64* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 8
  %134 = call i64 @flow_rule_match_key(%struct.flow_rule* %132, i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %215

136:                                              ; preds = %131
  %137 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %138 = call i32 @flow_rule_match_eth_addrs(%struct.flow_rule* %137, %struct.flow_match_eth_addrs* %17)
  %139 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %17, i32 0, i32 1
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @is_zero_ether_addr(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %168, label %145

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %17, i32 0, i32 1
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @is_broadcast_ether_addr(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load i32, i32* @I40E_CLOUD_FIELD_OMAC, align 4
  %154 = load i32, i32* %14, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %14, align 4
  br label %167

156:                                              ; preds = %145
  %157 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  %158 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %157, i32 0, i32 0
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %17, i32 0, i32 1
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32*, i8*, ...) @dev_err(i32* %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @I40E_ERR_CONFIG, align 4
  store i32 %166, i32* %4, align 4
  br label %511

167:                                              ; preds = %152
  br label %168

168:                                              ; preds = %167, %136
  %169 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %17, i32 0, i32 1
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @is_zero_ether_addr(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %198, label %175

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %17, i32 0, i32 1
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @is_broadcast_ether_addr(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load i32, i32* @I40E_CLOUD_FIELD_IMAC, align 4
  %184 = load i32, i32* %14, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %14, align 4
  br label %197

186:                                              ; preds = %175
  %187 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  %188 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %187, i32 0, i32 0
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %17, i32 0, i32 1
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32*, i8*, ...) @dev_err(i32* %190, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* @I40E_ERR_CONFIG, align 4
  store i32 %196, i32* %4, align 4
  br label %511

197:                                              ; preds = %182
  br label %198

198:                                              ; preds = %197, %168
  %199 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %200 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %17, i32 0, i32 0
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @ether_addr_copy(i32 %201, i32 %205)
  %207 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %208 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 8
  %210 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %17, i32 0, i32 0
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ether_addr_copy(i32 %209, i32 %213)
  br label %215

215:                                              ; preds = %198, %131
  %216 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %217 = load i64, i64* @FLOW_DISSECTOR_KEY_VLAN, align 8
  %218 = call i64 @flow_rule_match_key(%struct.flow_rule* %216, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %259

220:                                              ; preds = %215
  %221 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %222 = call i32 @flow_rule_match_vlan(%struct.flow_rule* %221, %struct.flow_match_vlan* %18)
  %223 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %18, i32 0, i32 1
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %251

228:                                              ; preds = %220
  %229 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %18, i32 0, i32 1
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @VLAN_VID_MASK, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %228
  %236 = load i32, i32* @I40E_CLOUD_FIELD_IVLAN, align 4
  %237 = load i32, i32* %14, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %14, align 4
  br label %250

239:                                              ; preds = %228
  %240 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  %241 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %240, i32 0, i32 0
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %18, i32 0, i32 1
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 (i32*, i8*, ...) @dev_err(i32* %243, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* @I40E_ERR_CONFIG, align 4
  store i32 %249, i32* %4, align 4
  br label %511

250:                                              ; preds = %235
  br label %251

251:                                              ; preds = %250, %220
  %252 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %18, i32 0, i32 0
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i64 @cpu_to_be16(i32 %255)
  %257 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %258 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %257, i32 0, i32 8
  store i64 %256, i64* %258, align 8
  br label %259

259:                                              ; preds = %251, %215
  %260 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %261 = load i64, i64* @FLOW_DISSECTOR_KEY_CONTROL, align 8
  %262 = call i64 @flow_rule_match_key(%struct.flow_rule* %260, i64 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %259
  %265 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %266 = call i32 @flow_rule_match_control(%struct.flow_rule* %265, %struct.flow_match_control* %19)
  %267 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %19, i32 0, i32 0
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %12, align 8
  br label %271

271:                                              ; preds = %264, %259
  %272 = load i64, i64* %12, align 8
  %273 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %358

275:                                              ; preds = %271
  %276 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %277 = call i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule* %276, %struct.flow_match_ipv4_addrs* %20)
  %278 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %20, i32 0, i32 1
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %305

283:                                              ; preds = %275
  %284 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %20, i32 0, i32 1
  %285 = load %struct.TYPE_29__*, %struct.TYPE_29__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = call i64 @cpu_to_be32(i32 -1)
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %283
  %291 = load i32, i32* @I40E_CLOUD_FIELD_IIP, align 4
  %292 = load i32, i32* %14, align 4
  %293 = or i32 %292, %291
  store i32 %293, i32* %14, align 4
  br label %304

294:                                              ; preds = %283
  %295 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  %296 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %295, i32 0, i32 0
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %20, i32 0, i32 1
  %300 = load %struct.TYPE_29__*, %struct.TYPE_29__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %300, i32 0, i32 0
  %302 = call i32 (i32*, i8*, ...) @dev_err(i32* %298, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64* %301)
  %303 = load i32, i32* @I40E_ERR_CONFIG, align 4
  store i32 %303, i32* %4, align 4
  br label %511

304:                                              ; preds = %290
  br label %305

305:                                              ; preds = %304, %275
  %306 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %20, i32 0, i32 1
  %307 = load %struct.TYPE_29__*, %struct.TYPE_29__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %333

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %20, i32 0, i32 1
  %313 = load %struct.TYPE_29__*, %struct.TYPE_29__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = call i64 @cpu_to_be32(i32 -1)
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %311
  %319 = load i32, i32* @I40E_CLOUD_FIELD_IIP, align 4
  %320 = load i32, i32* %14, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %14, align 4
  br label %332

322:                                              ; preds = %311
  %323 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  %324 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %323, i32 0, i32 0
  %325 = load %struct.TYPE_24__*, %struct.TYPE_24__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %20, i32 0, i32 1
  %328 = load %struct.TYPE_29__*, %struct.TYPE_29__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %328, i32 0, i32 1
  %330 = call i32 (i32*, i8*, ...) @dev_err(i32* %326, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64* %329)
  %331 = load i32, i32* @I40E_ERR_CONFIG, align 4
  store i32 %331, i32* %4, align 4
  br label %511

332:                                              ; preds = %318
  br label %333

333:                                              ; preds = %332, %305
  %334 = load i32, i32* %14, align 4
  %335 = load i32, i32* @I40E_CLOUD_FIELD_TEN_ID, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %345

338:                                              ; preds = %333
  %339 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  %340 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %339, i32 0, i32 0
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 0
  %343 = call i32 (i32*, i8*, ...) @dev_err(i32* %342, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %344 = load i32, i32* @I40E_ERR_CONFIG, align 4
  store i32 %344, i32* %4, align 4
  br label %511

345:                                              ; preds = %333
  %346 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %20, i32 0, i32 0
  %347 = load %struct.TYPE_30__*, %struct.TYPE_30__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %351 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %350, i32 0, i32 7
  store i32 %349, i32* %351, align 4
  %352 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %20, i32 0, i32 0
  %353 = load %struct.TYPE_30__*, %struct.TYPE_30__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %357 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %356, i32 0, i32 6
  store i32 %355, i32* %357, align 8
  br label %358

358:                                              ; preds = %345, %271
  %359 = load i64, i64* %12, align 8
  %360 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %414

362:                                              ; preds = %358
  %363 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %364 = call i32 @flow_rule_match_ipv6_addrs(%struct.flow_rule* %363, %struct.flow_match_ipv6_addrs* %21)
  %365 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %21, i32 0, i32 0
  %366 = load %struct.TYPE_32__*, %struct.TYPE_32__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %366, i32 0, i32 0
  %368 = call i64 @ipv6_addr_loopback(%struct.TYPE_27__* %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %376, label %370

370:                                              ; preds = %362
  %371 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %21, i32 0, i32 0
  %372 = load %struct.TYPE_32__*, %struct.TYPE_32__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %372, i32 0, i32 1
  %374 = call i64 @ipv6_addr_loopback(%struct.TYPE_27__* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %383

376:                                              ; preds = %370, %362
  %377 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  %378 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %377, i32 0, i32 0
  %379 = load %struct.TYPE_24__*, %struct.TYPE_24__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %379, i32 0, i32 0
  %381 = call i32 (i32*, i8*, ...) @dev_err(i32* %380, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %382 = load i32, i32* @I40E_ERR_CONFIG, align 4
  store i32 %382, i32* %4, align 4
  br label %511

383:                                              ; preds = %370
  %384 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %21, i32 0, i32 1
  %385 = load %struct.TYPE_31__*, %struct.TYPE_31__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %385, i32 0, i32 1
  %387 = call i32 @ipv6_addr_any(i32* %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %395

389:                                              ; preds = %383
  %390 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %21, i32 0, i32 1
  %391 = load %struct.TYPE_31__*, %struct.TYPE_31__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %391, i32 0, i32 0
  %393 = call i32 @ipv6_addr_any(i32* %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %399, label %395

395:                                              ; preds = %389, %383
  %396 = load i32, i32* @I40E_CLOUD_FIELD_IIP, align 4
  %397 = load i32, i32* %14, align 4
  %398 = or i32 %397, %396
  store i32 %398, i32* %14, align 4
  br label %399

399:                                              ; preds = %395, %389
  %400 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %401 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %400, i32 0, i32 5
  %402 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %21, i32 0, i32 0
  %403 = load %struct.TYPE_32__*, %struct.TYPE_32__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %404, i32 0, i32 0
  %406 = call i32 @memcpy(i32* %401, i32* %405, i32 4)
  %407 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %408 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %407, i32 0, i32 4
  %409 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %21, i32 0, i32 0
  %410 = load %struct.TYPE_32__*, %struct.TYPE_32__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %411, i32 0, i32 0
  %413 = call i32 @memcpy(i32* %408, i32* %412, i32 4)
  br label %414

414:                                              ; preds = %399, %358
  %415 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %416 = load i64, i64* @FLOW_DISSECTOR_KEY_PORTS, align 8
  %417 = call i64 @flow_rule_match_key(%struct.flow_rule* %415, i64 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %507

419:                                              ; preds = %414
  %420 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %421 = call i32 @flow_rule_match_ports(%struct.flow_rule* %420, %struct.flow_match_ports* %22)
  %422 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %22, i32 0, i32 1
  %423 = load %struct.TYPE_33__*, %struct.TYPE_33__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %451

427:                                              ; preds = %419
  %428 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %22, i32 0, i32 1
  %429 = load %struct.TYPE_33__*, %struct.TYPE_33__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = call i64 @cpu_to_be16(i32 65535)
  %433 = icmp eq i64 %431, %432
  br i1 %433, label %434, label %438

434:                                              ; preds = %427
  %435 = load i32, i32* @I40E_CLOUD_FIELD_IIP, align 4
  %436 = load i32, i32* %14, align 4
  %437 = or i32 %436, %435
  store i32 %437, i32* %14, align 4
  br label %450

438:                                              ; preds = %427
  %439 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  %440 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %439, i32 0, i32 0
  %441 = load %struct.TYPE_24__*, %struct.TYPE_24__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %22, i32 0, i32 1
  %444 = load %struct.TYPE_33__*, %struct.TYPE_33__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = call i32 @be16_to_cpu(i64 %446)
  %448 = call i32 (i32*, i8*, ...) @dev_err(i32* %442, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %447)
  %449 = load i32, i32* @I40E_ERR_CONFIG, align 4
  store i32 %449, i32* %4, align 4
  br label %511

450:                                              ; preds = %434
  br label %451

451:                                              ; preds = %450, %419
  %452 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %22, i32 0, i32 1
  %453 = load %struct.TYPE_33__*, %struct.TYPE_33__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %481

457:                                              ; preds = %451
  %458 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %22, i32 0, i32 1
  %459 = load %struct.TYPE_33__*, %struct.TYPE_33__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %459, i32 0, i32 1
  %461 = load i64, i64* %460, align 8
  %462 = call i64 @cpu_to_be16(i32 65535)
  %463 = icmp eq i64 %461, %462
  br i1 %463, label %464, label %468

464:                                              ; preds = %457
  %465 = load i32, i32* @I40E_CLOUD_FIELD_IIP, align 4
  %466 = load i32, i32* %14, align 4
  %467 = or i32 %466, %465
  store i32 %467, i32* %14, align 4
  br label %480

468:                                              ; preds = %457
  %469 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  %470 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %469, i32 0, i32 0
  %471 = load %struct.TYPE_24__*, %struct.TYPE_24__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %22, i32 0, i32 1
  %474 = load %struct.TYPE_33__*, %struct.TYPE_33__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %474, i32 0, i32 1
  %476 = load i64, i64* %475, align 8
  %477 = call i32 @be16_to_cpu(i64 %476)
  %478 = call i32 (i32*, i8*, ...) @dev_err(i32* %472, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %477)
  %479 = load i32, i32* @I40E_ERR_CONFIG, align 4
  store i32 %479, i32* %4, align 4
  br label %511

480:                                              ; preds = %464
  br label %481

481:                                              ; preds = %480, %451
  %482 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %22, i32 0, i32 0
  %483 = load %struct.TYPE_34__*, %struct.TYPE_34__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %487 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %486, i32 0, i32 3
  store i32 %485, i32* %487, align 4
  %488 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %22, i32 0, i32 0
  %489 = load %struct.TYPE_34__*, %struct.TYPE_34__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %493 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %492, i32 0, i32 2
  store i32 %491, i32* %493, align 8
  %494 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %495 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  switch i32 %496, label %498 [
    i32 129, label %497
    i32 128, label %497
  ]

497:                                              ; preds = %481, %481
  br label %506

498:                                              ; preds = %481
  %499 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  %500 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %499, i32 0, i32 0
  %501 = load %struct.TYPE_24__*, %struct.TYPE_24__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %501, i32 0, i32 0
  %503 = call i32 (i32*, i8*, ...) @dev_err(i32* %502, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %504 = load i32, i32* @EINVAL, align 4
  %505 = sub nsw i32 0, %504
  store i32 %505, i32* %4, align 4
  br label %511

506:                                              ; preds = %497
  br label %507

507:                                              ; preds = %506, %414
  %508 = load i32, i32* %14, align 4
  %509 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %510 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %509, i32 0, i32 1
  store i32 %508, i32* %510, align 4
  store i32 0, i32* %4, align 4
  br label %511

511:                                              ; preds = %507, %498, %468, %438, %376, %338, %322, %294, %239, %186, %156, %61
  %512 = load i32, i32* %4, align 4
  ret i32 %512
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i64) #1

declare dso_local i32 @flow_rule_match_enc_keyid(%struct.flow_rule*, %struct.flow_match_enc_keyid*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @flow_rule_match_eth_addrs(%struct.flow_rule*, %struct.flow_match_eth_addrs*) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @flow_rule_match_vlan(%struct.flow_rule*, %struct.flow_match_vlan*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @flow_rule_match_control(%struct.flow_rule*, %struct.flow_match_control*) #1

declare dso_local i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule*, %struct.flow_match_ipv4_addrs*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @flow_rule_match_ipv6_addrs(%struct.flow_rule*, %struct.flow_match_ipv6_addrs*) #1

declare dso_local i64 @ipv6_addr_loopback(%struct.TYPE_27__*) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @flow_rule_match_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

declare dso_local i32 @be16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
