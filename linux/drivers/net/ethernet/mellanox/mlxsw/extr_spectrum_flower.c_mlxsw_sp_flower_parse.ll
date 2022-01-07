; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.mlxsw_sp_acl_block = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }
%struct.flow_cls_offload = type { %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.flow_rule = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.flow_dissector* }
%struct.flow_dissector = type { i32 }
%struct.flow_match_control = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.flow_match_basic = type { %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.flow_match_eth_addrs = type { %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.flow_match_vlan = type { %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_21__ = type { i64, i64 }

@FLOW_DISSECTOR_KEY_META = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_CONTROL = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_ETH_ADDRS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_TCP = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IP = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_VLAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Unsupported key\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Unsupported key\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_P_ALL = common dso_local global i64 0, align 8
@MLXSW_AFK_ELEMENT_ETHERTYPE = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_IP_PROTO = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_DMAC_32_47 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_DMAC_0_31 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_SMAC_32_47 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_SMAC_0_31 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"vlan_id key is not supported on egress\00", align 1
@MLXSW_AFK_ELEMENT_VID = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_PCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*)* @mlxsw_sp_flower_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_flower_parse(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_rule_info* %2, %struct.flow_cls_offload* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %9 = alloca %struct.flow_cls_offload*, align 8
  %10 = alloca %struct.flow_rule*, align 8
  %11 = alloca %struct.flow_dissector*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.flow_match_control, align 8
  %18 = alloca %struct.flow_match_basic, align 8
  %19 = alloca %struct.flow_match_eth_addrs, align 8
  %20 = alloca %struct.flow_match_vlan, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_block** %7, align 8
  store %struct.mlxsw_sp_acl_rule_info* %2, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  store %struct.flow_cls_offload* %3, %struct.flow_cls_offload** %9, align 8
  %21 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %22 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %21)
  store %struct.flow_rule* %22, %struct.flow_rule** %10, align 8
  %23 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %24 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.flow_dissector*, %struct.flow_dissector** %25, align 8
  store %struct.flow_dissector* %26, %struct.flow_dissector** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %27 = load %struct.flow_dissector*, %struct.flow_dissector** %11, align 8
  %28 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @FLOW_DISSECTOR_KEY_META, align 8
  %31 = call i32 @BIT(i64 %30)
  %32 = load i64, i64* @FLOW_DISSECTOR_KEY_CONTROL, align 8
  %33 = call i32 @BIT(i64 %32)
  %34 = or i32 %31, %33
  %35 = load i64, i64* @FLOW_DISSECTOR_KEY_BASIC, align 8
  %36 = call i32 @BIT(i64 %35)
  %37 = or i32 %34, %36
  %38 = load i64, i64* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 8
  %39 = call i32 @BIT(i64 %38)
  %40 = or i32 %37, %39
  %41 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %42 = call i32 @BIT(i64 %41)
  %43 = or i32 %40, %42
  %44 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %45 = call i32 @BIT(i64 %44)
  %46 = or i32 %43, %45
  %47 = load i64, i64* @FLOW_DISSECTOR_KEY_PORTS, align 8
  %48 = call i32 @BIT(i64 %47)
  %49 = or i32 %46, %48
  %50 = load i64, i64* @FLOW_DISSECTOR_KEY_TCP, align 8
  %51 = call i32 @BIT(i64 %50)
  %52 = or i32 %49, %51
  %53 = load i64, i64* @FLOW_DISSECTOR_KEY_IP, align 8
  %54 = call i32 @BIT(i64 %53)
  %55 = or i32 %52, %54
  %56 = load i64, i64* @FLOW_DISSECTOR_KEY_VLAN, align 8
  %57 = call i32 @BIT(i64 %56)
  %58 = or i32 %55, %57
  %59 = xor i32 %58, -1
  %60 = and i32 %29, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %4
  %63 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %63, i32 0, i32 0
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %70 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @NL_SET_ERR_MSG_MOD(i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @EOPNOTSUPP, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %321

76:                                               ; preds = %4
  %77 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %78 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %79 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @mlxsw_sp_acl_rulei_priority(%struct.mlxsw_sp_acl_rule_info* %77, i32 %81)
  %83 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %84 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %85 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %7, align 8
  %86 = call i32 @mlxsw_sp_flower_parse_meta(%struct.mlxsw_sp_acl_rule_info* %83, %struct.flow_cls_offload* %84, %struct.mlxsw_sp_acl_block* %85)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %76
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %5, align 4
  br label %321

91:                                               ; preds = %76
  %92 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %93 = load i64, i64* @FLOW_DISSECTOR_KEY_CONTROL, align 8
  %94 = call i64 @flow_rule_match_key(%struct.flow_rule* %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %98 = call i32 @flow_rule_match_control(%struct.flow_rule* %97, %struct.flow_match_control* %17)
  %99 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %17, i32 0, i32 0
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %14, align 8
  br label %103

103:                                              ; preds = %96, %91
  %104 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %105 = load i64, i64* @FLOW_DISSECTOR_KEY_BASIC, align 8
  %106 = call i64 @flow_rule_match_key(%struct.flow_rule* %104, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %146

108:                                              ; preds = %103
  %109 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %110 = call i32 @flow_rule_match_basic(%struct.flow_rule* %109, %struct.flow_match_basic* %18)
  %111 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %18, i32 0, i32 1
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @ntohs(i32 %114)
  store i64 %115, i64* %13, align 8
  %116 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %18, i32 0, i32 0
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @ntohs(i32 %119)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %13, align 8
  %122 = load i64, i64* @ETH_P_ALL, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %108
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %125

125:                                              ; preds = %124, %108
  %126 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %127 = load i32, i32* @MLXSW_AFK_ELEMENT_ETHERTYPE, align 4
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %12, align 8
  %130 = call i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info* %126, i32 %127, i64 %128, i64 %129)
  %131 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %18, i32 0, i32 1
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %15, align 8
  %135 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %136 = load i32, i32* @MLXSW_AFK_ELEMENT_IP_PROTO, align 4
  %137 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %18, i32 0, i32 1
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %18, i32 0, i32 0
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info* %135, i32 %136, i64 %140, i64 %144)
  br label %146

146:                                              ; preds = %125, %103
  %147 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %148 = load i64, i64* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 8
  %149 = call i64 @flow_rule_match_key(%struct.flow_rule* %147, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %202

151:                                              ; preds = %146
  %152 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %153 = call i32 @flow_rule_match_eth_addrs(%struct.flow_rule* %152, %struct.flow_match_eth_addrs* %19)
  %154 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %155 = load i32, i32* @MLXSW_AFK_ELEMENT_DMAC_32_47, align 4
  %156 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 1
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 0
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %154, i32 %155, i64 %159, i64 %163, i32 2)
  %165 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %166 = load i32, i32* @MLXSW_AFK_ELEMENT_DMAC_0_31, align 4
  %167 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 1
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 2
  %172 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 0
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, 2
  %177 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %165, i32 %166, i64 %171, i64 %176, i32 4)
  %178 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %179 = load i32, i32* @MLXSW_AFK_ELEMENT_SMAC_32_47, align 4
  %180 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 1
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 0
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %178, i32 %179, i64 %183, i64 %187, i32 2)
  %189 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %190 = load i32, i32* @MLXSW_AFK_ELEMENT_SMAC_0_31, align 4
  %191 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 1
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, 2
  %196 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %19, i32 0, i32 0
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 2
  %201 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %189, i32 %190, i64 %195, i64 %200, i32 4)
  br label %202

202:                                              ; preds = %151, %146
  %203 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %204 = load i64, i64* @FLOW_DISSECTOR_KEY_VLAN, align 8
  %205 = call i64 @flow_rule_match_key(%struct.flow_rule* %203, i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %260

207:                                              ; preds = %202
  %208 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %209 = call i32 @flow_rule_match_vlan(%struct.flow_rule* %208, %struct.flow_match_vlan* %20)
  %210 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %7, align 8
  %211 = call i64 @mlxsw_sp_acl_block_is_egress_bound(%struct.mlxsw_sp_acl_block* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %207
  %214 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %215 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @NL_SET_ERR_MSG_MOD(i32 %217, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %219 = load i32, i32* @EOPNOTSUPP, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %5, align 4
  br label %321

221:                                              ; preds = %207
  %222 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %223 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %222, i32 0, i32 0
  store i32 1, i32* %223, align 4
  %224 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %20, i32 0, i32 0
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %221
  %230 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %231 = load i32, i32* @MLXSW_AFK_ELEMENT_VID, align 4
  %232 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %20, i32 0, i32 1
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %20, i32 0, i32 0
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info* %230, i32 %231, i64 %235, i64 %239)
  br label %241

241:                                              ; preds = %229, %221
  %242 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %20, i32 0, i32 0
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %241
  %248 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %249 = load i32, i32* @MLXSW_AFK_ELEMENT_PCP, align 4
  %250 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %20, i32 0, i32 1
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %20, i32 0, i32 0
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info* %248, i32 %249, i64 %253, i64 %257)
  br label %259

259:                                              ; preds = %247, %241
  br label %260

260:                                              ; preds = %259, %202
  %261 = load i64, i64* %14, align 8
  %262 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %260
  %265 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %266 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %267 = call i32 @mlxsw_sp_flower_parse_ipv4(%struct.mlxsw_sp_acl_rule_info* %265, %struct.flow_cls_offload* %266)
  br label %268

268:                                              ; preds = %264, %260
  %269 = load i64, i64* %14, align 8
  %270 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %268
  %273 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %274 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %275 = call i32 @mlxsw_sp_flower_parse_ipv6(%struct.mlxsw_sp_acl_rule_info* %273, %struct.flow_cls_offload* %274)
  br label %276

276:                                              ; preds = %272, %268
  %277 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %278 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %279 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %280 = load i64, i64* %15, align 8
  %281 = call i32 @mlxsw_sp_flower_parse_ports(%struct.mlxsw_sp* %277, %struct.mlxsw_sp_acl_rule_info* %278, %struct.flow_cls_offload* %279, i64 %280)
  store i32 %281, i32* %16, align 4
  %282 = load i32, i32* %16, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %276
  %285 = load i32, i32* %16, align 4
  store i32 %285, i32* %5, align 4
  br label %321

286:                                              ; preds = %276
  %287 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %288 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %289 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %290 = load i64, i64* %15, align 8
  %291 = call i32 @mlxsw_sp_flower_parse_tcp(%struct.mlxsw_sp* %287, %struct.mlxsw_sp_acl_rule_info* %288, %struct.flow_cls_offload* %289, i64 %290)
  store i32 %291, i32* %16, align 4
  %292 = load i32, i32* %16, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %286
  %295 = load i32, i32* %16, align 4
  store i32 %295, i32* %5, align 4
  br label %321

296:                                              ; preds = %286
  %297 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %298 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %299 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %300 = load i64, i64* %13, align 8
  %301 = load i64, i64* %12, align 8
  %302 = and i64 %300, %301
  %303 = call i32 @mlxsw_sp_flower_parse_ip(%struct.mlxsw_sp* %297, %struct.mlxsw_sp_acl_rule_info* %298, %struct.flow_cls_offload* %299, i64 %302)
  store i32 %303, i32* %16, align 4
  %304 = load i32, i32* %16, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %296
  %307 = load i32, i32* %16, align 4
  store i32 %307, i32* %5, align 4
  br label %321

308:                                              ; preds = %296
  %309 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %310 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %7, align 8
  %311 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %312 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %313 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %312, i32 0, i32 1
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 0
  %316 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %317 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @mlxsw_sp_flower_parse_actions(%struct.mlxsw_sp* %309, %struct.mlxsw_sp_acl_block* %310, %struct.mlxsw_sp_acl_rule_info* %311, i32* %315, i32 %319)
  store i32 %320, i32* %5, align 4
  br label %321

321:                                              ; preds = %308, %306, %294, %284, %213, %89, %62
  %322 = load i32, i32* %5, align 4
  ret i32 %322
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(i32, i8*) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_priority(%struct.mlxsw_sp_acl_rule_info*, i32) #1

declare dso_local i32 @mlxsw_sp_flower_parse_meta(%struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*, %struct.mlxsw_sp_acl_block*) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i64) #1

declare dso_local i32 @flow_rule_match_control(%struct.flow_rule*, %struct.flow_match_control*) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info*, i32, i64, i64) #1

declare dso_local i32 @flow_rule_match_eth_addrs(%struct.flow_rule*, %struct.flow_match_eth_addrs*) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info*, i32, i64, i64, i32) #1

declare dso_local i32 @flow_rule_match_vlan(%struct.flow_rule*, %struct.flow_match_vlan*) #1

declare dso_local i64 @mlxsw_sp_acl_block_is_egress_bound(%struct.mlxsw_sp_acl_block*) #1

declare dso_local i32 @mlxsw_sp_flower_parse_ipv4(%struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*) #1

declare dso_local i32 @mlxsw_sp_flower_parse_ipv6(%struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*) #1

declare dso_local i32 @mlxsw_sp_flower_parse_ports(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*, i64) #1

declare dso_local i32 @mlxsw_sp_flower_parse_tcp(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*, i64) #1

declare dso_local i32 @mlxsw_sp_flower_parse_ip(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*, i64) #1

declare dso_local i32 @mlxsw_sp_flower_parse_actions(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_rule_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
