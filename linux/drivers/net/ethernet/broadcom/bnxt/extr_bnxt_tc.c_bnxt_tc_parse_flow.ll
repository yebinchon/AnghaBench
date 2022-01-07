; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_parse_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_parse_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.bnxt_tc_flow = type { i32, %struct.TYPE_65__, %struct.TYPE_62__, i32, %struct.TYPE_70__, %struct.TYPE_68__, %struct.TYPE_45__, %struct.TYPE_42__, %struct.TYPE_76__, %struct.TYPE_73__ }
%struct.TYPE_65__ = type { i32, i32, i8*, %struct.TYPE_58__ }
%struct.TYPE_58__ = type { %struct.TYPE_57__ }
%struct.TYPE_57__ = type { i32, i32 }
%struct.TYPE_62__ = type { i32, i32, i8*, %struct.TYPE_55__ }
%struct.TYPE_55__ = type { %struct.TYPE_54__ }
%struct.TYPE_54__ = type { i32, i32 }
%struct.TYPE_70__ = type { %struct.TYPE_51__, %struct.TYPE_48__, i32 }
%struct.TYPE_51__ = type { i32, i32 }
%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_68__ = type { %struct.TYPE_49__, %struct.TYPE_47__, i32 }
%struct.TYPE_49__ = type { i32, i32 }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__, %struct.TYPE_81__ }
%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_81__ = type { %struct.TYPE_80__, %struct.TYPE_77__ }
%struct.TYPE_80__ = type { i32 }
%struct.TYPE_77__ = type { i32 }
%struct.TYPE_42__ = type { %struct.TYPE_82__, %struct.TYPE_79__ }
%struct.TYPE_82__ = type { i32, i32 }
%struct.TYPE_79__ = type { %struct.TYPE_78__, %struct.TYPE_74__ }
%struct.TYPE_78__ = type { i32 }
%struct.TYPE_74__ = type { i32 }
%struct.TYPE_76__ = type { i64, i32, i64, i8*, i32, i32 }
%struct.TYPE_73__ = type { i64, i8*, i32, i32, i32 }
%struct.flow_rule = type { i32, %struct.TYPE_67__ }
%struct.TYPE_67__ = type { %struct.flow_dissector* }
%struct.flow_dissector = type { i32 }
%struct.flow_match_basic = type { %struct.TYPE_71__*, %struct.TYPE_69__* }
%struct.TYPE_71__ = type { i32, i32 }
%struct.TYPE_69__ = type { i64, i32 }
%struct.flow_match_eth_addrs = type { %struct.TYPE_75__*, %struct.TYPE_72__* }
%struct.TYPE_75__ = type { i32, i32 }
%struct.TYPE_72__ = type { i32, i32 }
%struct.flow_match_vlan = type { %struct.TYPE_63__*, %struct.TYPE_52__* }
%struct.TYPE_63__ = type { i32, i32 }
%struct.TYPE_52__ = type { i32, i32 }
%struct.flow_match_ipv4_addrs = type { %struct.TYPE_59__*, %struct.TYPE_56__* }
%struct.TYPE_59__ = type { i32, i32 }
%struct.TYPE_56__ = type { i32, i32 }
%struct.flow_match_ipv6_addrs = type { %struct.TYPE_46__*, %struct.TYPE_43__* }
%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_43__ = type { i32, i32 }
%struct.flow_match_ports = type { %struct.TYPE_66__*, %struct.TYPE_64__* }
%struct.TYPE_66__ = type { i32, i32 }
%struct.TYPE_64__ = type { i32, i32 }
%struct.flow_match_icmp = type { %struct.TYPE_53__*, %struct.TYPE_50__* }
%struct.TYPE_53__ = type { i32, i32 }
%struct.TYPE_50__ = type { i32, i32 }
%struct.flow_match_enc_keyid = type { %struct.TYPE_61__*, %struct.TYPE_60__* }
%struct.TYPE_61__ = type { i32 }
%struct.TYPE_60__ = type { i32 }

@FLOW_DISSECTOR_KEY_CONTROL = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot form TC key: used_keys = 0x%x\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ETH_ADDRS = common dso_local global i32 0, align 4
@BNXT_TC_FLOW_FLAGS_ETH_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_VLAN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i32 0, align 4
@BNXT_TC_FLOW_FLAGS_IPV4_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i32 0, align 4
@BNXT_TC_FLOW_FLAGS_IPV6_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i32 0, align 4
@BNXT_TC_FLOW_FLAGS_PORTS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ICMP = common dso_local global i32 0, align 4
@BNXT_TC_FLOW_FLAGS_ICMP = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS = common dso_local global i32 0, align 4
@BNXT_TC_FLOW_FLAGS_TUNL_IPV4_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_KEYID = common dso_local global i32 0, align 4
@BNXT_TC_FLOW_FLAGS_TUNL_ID = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_PORTS = common dso_local global i32 0, align 4
@BNXT_TC_FLOW_FLAGS_TUNL_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.flow_cls_offload*, %struct.bnxt_tc_flow*)* @bnxt_tc_parse_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tc_parse_flow(%struct.bnxt* %0, %struct.flow_cls_offload* %1, %struct.bnxt_tc_flow* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.bnxt_tc_flow*, align 8
  %8 = alloca %struct.flow_rule*, align 8
  %9 = alloca %struct.flow_dissector*, align 8
  %10 = alloca %struct.flow_match_basic, align 8
  %11 = alloca %struct.flow_match_eth_addrs, align 8
  %12 = alloca %struct.flow_match_vlan, align 8
  %13 = alloca %struct.flow_match_ipv4_addrs, align 8
  %14 = alloca %struct.flow_match_ipv6_addrs, align 8
  %15 = alloca %struct.flow_match_ports, align 8
  %16 = alloca %struct.flow_match_icmp, align 8
  %17 = alloca %struct.flow_match_ipv4_addrs, align 8
  %18 = alloca %struct.flow_match_enc_keyid, align 8
  %19 = alloca %struct.flow_match_ports, align 8
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %6, align 8
  store %struct.bnxt_tc_flow* %2, %struct.bnxt_tc_flow** %7, align 8
  %20 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %21 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %20)
  store %struct.flow_rule* %21, %struct.flow_rule** %8, align 8
  %22 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %23 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %23, i32 0, i32 0
  %25 = load %struct.flow_dissector*, %struct.flow_dissector** %24, align 8
  store %struct.flow_dissector* %25, %struct.flow_dissector** %9, align 8
  %26 = load %struct.flow_dissector*, %struct.flow_dissector** %9, align 8
  %27 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FLOW_DISSECTOR_KEY_CONTROL, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %3
  %34 = load %struct.flow_dissector*, %struct.flow_dissector** %9, align 8
  %35 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %33, %3
  %42 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %43 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.flow_dissector*, %struct.flow_dissector** %9, align 8
  %46 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @netdev_info(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %519

51:                                               ; preds = %33
  %52 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %53 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %54 = call i64 @flow_rule_match_key(%struct.flow_rule* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %104

56:                                               ; preds = %51
  %57 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %58 = call i32 @flow_rule_match_basic(%struct.flow_rule* %57, %struct.flow_match_basic* %10)
  %59 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %10, i32 0, i32 1
  %60 = load %struct.TYPE_69__*, %struct.TYPE_69__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %64 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %10, i32 0, i32 0
  %67 = load %struct.TYPE_71__*, %struct.TYPE_71__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %71 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 8
  %73 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %10, i32 0, i32 1
  %74 = load %struct.TYPE_69__*, %struct.TYPE_69__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @ETH_P_IP, align 4
  %78 = call i64 @htons(i32 %77)
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %56
  %81 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %10, i32 0, i32 1
  %82 = load %struct.TYPE_69__*, %struct.TYPE_69__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @ETH_P_IPV6, align 4
  %86 = call i64 @htons(i32 %85)
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %80, %56
  %89 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %10, i32 0, i32 1
  %90 = load %struct.TYPE_69__*, %struct.TYPE_69__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %94 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  %96 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %10, i32 0, i32 0
  %97 = load %struct.TYPE_71__*, %struct.TYPE_71__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %101 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %88, %80
  br label %104

104:                                              ; preds = %103, %51
  %105 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %106 = load i32, i32* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 4
  %107 = call i64 @flow_rule_match_key(%struct.flow_rule* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %153

109:                                              ; preds = %104
  %110 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %111 = call i32 @flow_rule_match_eth_addrs(%struct.flow_rule* %110, %struct.flow_match_eth_addrs* %11)
  %112 = load i32, i32* @BNXT_TC_FLOW_FLAGS_ETH_ADDRS, align 4
  %113 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %114 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %118 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %117, i32 0, i32 8
  %119 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %11, i32 0, i32 1
  %122 = load %struct.TYPE_72__*, %struct.TYPE_72__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ether_addr_copy(i32 %120, i32 %124)
  %126 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %127 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %11, i32 0, i32 0
  %131 = load %struct.TYPE_75__*, %struct.TYPE_75__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ether_addr_copy(i32 %129, i32 %133)
  %135 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %136 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %135, i32 0, i32 8
  %137 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %11, i32 0, i32 1
  %140 = load %struct.TYPE_72__*, %struct.TYPE_72__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ether_addr_copy(i32 %138, i32 %142)
  %144 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %145 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %11, i32 0, i32 0
  %149 = load %struct.TYPE_75__*, %struct.TYPE_75__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ether_addr_copy(i32 %147, i32 %151)
  br label %153

153:                                              ; preds = %109, %104
  %154 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %155 = load i32, i32* @FLOW_DISSECTOR_KEY_VLAN, align 4
  %156 = call i64 @flow_rule_match_key(%struct.flow_rule* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %199

158:                                              ; preds = %153
  %159 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %160 = call i32 @flow_rule_match_vlan(%struct.flow_rule* %159, %struct.flow_match_vlan* %12)
  %161 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %12, i32 0, i32 1
  %162 = load %struct.TYPE_52__*, %struct.TYPE_52__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %12, i32 0, i32 1
  %166 = load %struct.TYPE_52__*, %struct.TYPE_52__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @VLAN_TCI(i32 %164, i32 %168)
  %170 = call i8* @cpu_to_be16(i32 %169)
  %171 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %172 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %171, i32 0, i32 8
  %173 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %172, i32 0, i32 3
  store i8* %170, i8** %173, align 8
  %174 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %12, i32 0, i32 0
  %175 = load %struct.TYPE_63__*, %struct.TYPE_63__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %12, i32 0, i32 0
  %179 = load %struct.TYPE_63__*, %struct.TYPE_63__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @VLAN_TCI(i32 %177, i32 %181)
  %183 = call i8* @cpu_to_be16(i32 %182)
  %184 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %185 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %184, i32 0, i32 9
  %186 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %185, i32 0, i32 1
  store i8* %183, i8** %186, align 8
  %187 = load i32, i32* @ETH_P_8021Q, align 4
  %188 = call i64 @htons(i32 %187)
  %189 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %190 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %189, i32 0, i32 8
  %191 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %190, i32 0, i32 2
  store i64 %188, i64* %191, align 8
  %192 = call i64 @htons(i32 65535)
  %193 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %194 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %193, i32 0, i32 9
  %195 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %194, i32 0, i32 0
  store i64 %192, i64* %195, align 8
  %196 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %197 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %196, i32 0, i32 8
  %198 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %197, i32 0, i32 1
  store i32 1, i32* %198, align 8
  br label %199

199:                                              ; preds = %158, %153
  %200 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %201 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 4
  %202 = call i64 @flow_rule_match_key(%struct.flow_rule* %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %248

204:                                              ; preds = %199
  %205 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %206 = call i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule* %205, %struct.flow_match_ipv4_addrs* %13)
  %207 = load i32, i32* @BNXT_TC_FLOW_FLAGS_IPV4_ADDRS, align 4
  %208 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %209 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %13, i32 0, i32 1
  %213 = load %struct.TYPE_56__*, %struct.TYPE_56__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %217 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %216, i32 0, i32 7
  %218 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %219, i32 0, i32 0
  store i32 %215, i32* %220, align 4
  %221 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %13, i32 0, i32 0
  %222 = load %struct.TYPE_59__*, %struct.TYPE_59__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %226 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %225, i32 0, i32 6
  %227 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %228, i32 0, i32 0
  store i32 %224, i32* %229, align 4
  %230 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %13, i32 0, i32 1
  %231 = load %struct.TYPE_56__*, %struct.TYPE_56__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %235 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %237, i32 0, i32 0
  store i32 %233, i32* %238, align 4
  %239 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %13, i32 0, i32 0
  %240 = load %struct.TYPE_59__*, %struct.TYPE_59__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %244 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %243, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %246, i32 0, i32 0
  store i32 %242, i32* %247, align 4
  br label %294

248:                                              ; preds = %199
  %249 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %250 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 4
  %251 = call i64 @flow_rule_match_key(%struct.flow_rule* %249, i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %293

253:                                              ; preds = %248
  %254 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %255 = call i32 @flow_rule_match_ipv6_addrs(%struct.flow_rule* %254, %struct.flow_match_ipv6_addrs* %14)
  %256 = load i32, i32* @BNXT_TC_FLOW_FLAGS_IPV6_ADDRS, align 4
  %257 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %258 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  %261 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %14, i32 0, i32 1
  %262 = load %struct.TYPE_43__*, %struct.TYPE_43__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %266 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %265, i32 0, i32 7
  %267 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %267, i32 0, i32 1
  store i32 %264, i32* %268, align 4
  %269 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %14, i32 0, i32 0
  %270 = load %struct.TYPE_46__*, %struct.TYPE_46__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %274 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %273, i32 0, i32 6
  %275 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %275, i32 0, i32 1
  store i32 %272, i32* %276, align 4
  %277 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %14, i32 0, i32 1
  %278 = load %struct.TYPE_43__*, %struct.TYPE_43__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %282 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %281, i32 0, i32 7
  %283 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %283, i32 0, i32 0
  store i32 %280, i32* %284, align 4
  %285 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %14, i32 0, i32 0
  %286 = load %struct.TYPE_46__*, %struct.TYPE_46__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %290 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %289, i32 0, i32 6
  %291 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %291, i32 0, i32 0
  store i32 %288, i32* %292, align 4
  br label %293

293:                                              ; preds = %253, %248
  br label %294

294:                                              ; preds = %293, %204
  %295 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %296 = load i32, i32* @FLOW_DISSECTOR_KEY_PORTS, align 4
  %297 = call i64 @flow_rule_match_key(%struct.flow_rule* %295, i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %339

299:                                              ; preds = %294
  %300 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %301 = call i32 @flow_rule_match_ports(%struct.flow_rule* %300, %struct.flow_match_ports* %15)
  %302 = load i32, i32* @BNXT_TC_FLOW_FLAGS_PORTS, align 4
  %303 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %304 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 8
  %307 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %15, i32 0, i32 1
  %308 = load %struct.TYPE_64__*, %struct.TYPE_64__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %312 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %311, i32 0, i32 5
  %313 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %313, i32 0, i32 1
  store i32 %310, i32* %314, align 4
  %315 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %15, i32 0, i32 0
  %316 = load %struct.TYPE_66__*, %struct.TYPE_66__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %320 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %319, i32 0, i32 4
  %321 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %321, i32 0, i32 1
  store i32 %318, i32* %322, align 4
  %323 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %15, i32 0, i32 1
  %324 = load %struct.TYPE_64__*, %struct.TYPE_64__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %328 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %327, i32 0, i32 5
  %329 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %329, i32 0, i32 0
  store i32 %326, i32* %330, align 8
  %331 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %15, i32 0, i32 0
  %332 = load %struct.TYPE_66__*, %struct.TYPE_66__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %336 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %335, i32 0, i32 4
  %337 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %337, i32 0, i32 0
  store i32 %334, i32* %338, align 4
  br label %339

339:                                              ; preds = %299, %294
  %340 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %341 = load i32, i32* @FLOW_DISSECTOR_KEY_ICMP, align 4
  %342 = call i64 @flow_rule_match_key(%struct.flow_rule* %340, i32 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %384

344:                                              ; preds = %339
  %345 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %346 = call i32 @flow_rule_match_icmp(%struct.flow_rule* %345, %struct.flow_match_icmp* %16)
  %347 = load i32, i32* @BNXT_TC_FLOW_FLAGS_ICMP, align 4
  %348 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %349 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = or i32 %350, %347
  store i32 %351, i32* %349, align 8
  %352 = getelementptr inbounds %struct.flow_match_icmp, %struct.flow_match_icmp* %16, i32 0, i32 1
  %353 = load %struct.TYPE_50__*, %struct.TYPE_50__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %357 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %358, i32 0, i32 1
  store i32 %355, i32* %359, align 4
  %360 = getelementptr inbounds %struct.flow_match_icmp, %struct.flow_match_icmp* %16, i32 0, i32 1
  %361 = load %struct.TYPE_50__*, %struct.TYPE_50__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %365 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %364, i32 0, i32 5
  %366 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %366, i32 0, i32 0
  store i32 %363, i32* %367, align 8
  %368 = getelementptr inbounds %struct.flow_match_icmp, %struct.flow_match_icmp* %16, i32 0, i32 0
  %369 = load %struct.TYPE_53__*, %struct.TYPE_53__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %373 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %372, i32 0, i32 4
  %374 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %374, i32 0, i32 1
  store i32 %371, i32* %375, align 4
  %376 = getelementptr inbounds %struct.flow_match_icmp, %struct.flow_match_icmp* %16, i32 0, i32 0
  %377 = load %struct.TYPE_53__*, %struct.TYPE_53__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %381 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %380, i32 0, i32 4
  %382 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %382, i32 0, i32 0
  store i32 %379, i32* %383, align 4
  br label %384

384:                                              ; preds = %344, %339
  %385 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %386 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS, align 4
  %387 = call i64 @flow_rule_match_key(%struct.flow_rule* %385, i32 %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %433

389:                                              ; preds = %384
  %390 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %391 = call i32 @flow_rule_match_enc_ipv4_addrs(%struct.flow_rule* %390, %struct.flow_match_ipv4_addrs* %17)
  %392 = load i32, i32* @BNXT_TC_FLOW_FLAGS_TUNL_IPV4_ADDRS, align 4
  %393 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %394 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 8
  %396 = or i32 %395, %392
  store i32 %396, i32* %394, align 8
  %397 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %17, i32 0, i32 1
  %398 = load %struct.TYPE_56__*, %struct.TYPE_56__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %402 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %404, i32 0, i32 1
  store i32 %400, i32* %405, align 4
  %406 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %17, i32 0, i32 0
  %407 = load %struct.TYPE_59__*, %struct.TYPE_59__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %411 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %411, i32 0, i32 3
  %413 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %413, i32 0, i32 1
  store i32 %409, i32* %414, align 4
  %415 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %17, i32 0, i32 1
  %416 = load %struct.TYPE_56__*, %struct.TYPE_56__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %420 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %419, i32 0, i32 2
  %421 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %420, i32 0, i32 3
  %422 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %422, i32 0, i32 0
  store i32 %418, i32* %423, align 8
  %424 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %17, i32 0, i32 0
  %425 = load %struct.TYPE_59__*, %struct.TYPE_59__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %429 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %429, i32 0, i32 3
  %431 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %431, i32 0, i32 0
  store i32 %427, i32* %432, align 8
  br label %442

433:                                              ; preds = %384
  %434 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %435 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS, align 4
  %436 = call i64 @flow_rule_match_key(%struct.flow_rule* %434, i32 %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %433
  %439 = load i32, i32* @EOPNOTSUPP, align 4
  %440 = sub nsw i32 0, %439
  store i32 %440, i32* %4, align 4
  br label %519

441:                                              ; preds = %433
  br label %442

442:                                              ; preds = %441, %389
  %443 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %444 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 4
  %445 = call i64 @flow_rule_match_key(%struct.flow_rule* %443, i32 %444)
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %471

447:                                              ; preds = %442
  %448 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %449 = call i32 @flow_rule_match_enc_keyid(%struct.flow_rule* %448, %struct.flow_match_enc_keyid* %18)
  %450 = load i32, i32* @BNXT_TC_FLOW_FLAGS_TUNL_ID, align 4
  %451 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %452 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 8
  %454 = or i32 %453, %450
  store i32 %454, i32* %452, align 8
  %455 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %18, i32 0, i32 1
  %456 = load %struct.TYPE_60__*, %struct.TYPE_60__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = call i8* @key32_to_tunnel_id(i32 %458)
  %460 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %461 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %460, i32 0, i32 2
  %462 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %461, i32 0, i32 2
  store i8* %459, i8** %462, align 8
  %463 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %18, i32 0, i32 0
  %464 = load %struct.TYPE_61__*, %struct.TYPE_61__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = call i8* @key32_to_tunnel_id(i32 %466)
  %468 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %469 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %469, i32 0, i32 2
  store i8* %467, i8** %470, align 8
  br label %471

471:                                              ; preds = %447, %442
  %472 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %473 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_PORTS, align 4
  %474 = call i64 @flow_rule_match_key(%struct.flow_rule* %472, i32 %473)
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %512

476:                                              ; preds = %471
  %477 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %478 = call i32 @flow_rule_match_enc_ports(%struct.flow_rule* %477, %struct.flow_match_ports* %19)
  %479 = load i32, i32* @BNXT_TC_FLOW_FLAGS_TUNL_PORTS, align 4
  %480 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %481 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 8
  %483 = or i32 %482, %479
  store i32 %483, i32* %481, align 8
  %484 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %19, i32 0, i32 1
  %485 = load %struct.TYPE_64__*, %struct.TYPE_64__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %489 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %488, i32 0, i32 2
  %490 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %489, i32 0, i32 1
  store i32 %487, i32* %490, align 4
  %491 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %19, i32 0, i32 0
  %492 = load %struct.TYPE_66__*, %struct.TYPE_66__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 4
  %495 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %496 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %495, i32 0, i32 1
  %497 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %496, i32 0, i32 1
  store i32 %494, i32* %497, align 4
  %498 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %19, i32 0, i32 1
  %499 = load %struct.TYPE_64__*, %struct.TYPE_64__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %503 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %502, i32 0, i32 2
  %504 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %503, i32 0, i32 0
  store i32 %501, i32* %504, align 8
  %505 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %19, i32 0, i32 0
  %506 = load %struct.TYPE_66__*, %struct.TYPE_66__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %510 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %510, i32 0, i32 0
  store i32 %508, i32* %511, align 8
  br label %512

512:                                              ; preds = %476, %471
  %513 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %514 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %515 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %514, i32 0, i32 0
  %516 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %517 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %516, i32 0, i32 0
  %518 = call i32 @bnxt_tc_parse_actions(%struct.bnxt* %513, i32* %515, i32* %517)
  store i32 %518, i32* %4, align 4
  br label %519

519:                                              ; preds = %512, %438, %41
  %520 = load i32, i32* %4, align 4
  ret i32 %520
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @flow_rule_match_eth_addrs(%struct.flow_rule*, %struct.flow_match_eth_addrs*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @flow_rule_match_vlan(%struct.flow_rule*, %struct.flow_match_vlan*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @VLAN_TCI(i32, i32) #1

declare dso_local i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule*, %struct.flow_match_ipv4_addrs*) #1

declare dso_local i32 @flow_rule_match_ipv6_addrs(%struct.flow_rule*, %struct.flow_match_ipv6_addrs*) #1

declare dso_local i32 @flow_rule_match_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

declare dso_local i32 @flow_rule_match_icmp(%struct.flow_rule*, %struct.flow_match_icmp*) #1

declare dso_local i32 @flow_rule_match_enc_ipv4_addrs(%struct.flow_rule*, %struct.flow_match_ipv4_addrs*) #1

declare dso_local i32 @flow_rule_match_enc_keyid(%struct.flow_rule*, %struct.flow_match_enc_keyid*) #1

declare dso_local i8* @key32_to_tunnel_id(i32) #1

declare dso_local i32 @flow_rule_match_enc_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

declare dso_local i32 @bnxt_tc_parse_actions(%struct.bnxt*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
