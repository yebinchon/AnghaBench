; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_flower_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_flower_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_cls_offload = type { i32, %struct.TYPE_48__ }
%struct.TYPE_48__ = type { i32, i32 }
%struct.ocelot_ace_rule = type { i32, i32, %struct.TYPE_34__, i32, %struct.TYPE_55__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__, %struct.TYPE_62__ }
%struct.TYPE_33__ = type { i32*, i32* }
%struct.TYPE_62__ = type { i32, i32 }
%struct.TYPE_55__ = type { %struct.TYPE_54__, %struct.TYPE_46__, %struct.TYPE_40__ }
%struct.TYPE_54__ = type { %struct.TYPE_60__, %struct.TYPE_58__, %struct.TYPE_56__, %struct.TYPE_52__, %struct.TYPE_43__ }
%struct.TYPE_60__ = type { i64, i64 }
%struct.TYPE_58__ = type { i64, i64 }
%struct.TYPE_56__ = type { %struct.TYPE_53__, %struct.TYPE_42__ }
%struct.TYPE_53__ = type { i32* }
%struct.TYPE_42__ = type { i32* }
%struct.TYPE_52__ = type { %struct.TYPE_51__, %struct.TYPE_49__ }
%struct.TYPE_51__ = type { i32* }
%struct.TYPE_49__ = type { i32* }
%struct.TYPE_43__ = type { i32*, i32* }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32*, i32* }
%struct.TYPE_40__ = type { %struct.TYPE_39__, %struct.TYPE_38__ }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32, i32 }
%struct.flow_rule = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { %struct.flow_dissector* }
%struct.flow_dissector = type { i32 }
%struct.flow_match_control = type { i32 }
%struct.flow_match_eth_addrs = type { %struct.TYPE_41__*, %struct.TYPE_37__* }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.flow_match_basic = type { %struct.TYPE_47__*, %struct.TYPE_44__* }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_44__ = type { i32, i32 }
%struct.flow_match_ipv4_addrs = type { %struct.TYPE_57__*, %struct.TYPE_50__* }
%struct.TYPE_57__ = type { i32, i32 }
%struct.TYPE_50__ = type { i32, i32 }
%struct.flow_match_ports = type { %struct.TYPE_61__*, %struct.TYPE_59__* }
%struct.TYPE_61__ = type { i32, i32 }
%struct.TYPE_59__ = type { i32, i32 }
%struct.flow_match_vlan = type { %struct.TYPE_35__*, %struct.TYPE_32__* }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }

@FLOW_DISSECTOR_KEY_CONTROL = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_VLAN = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ETH_ADDRS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@ETH_P_ARP = common dso_local global i64 0, align 8
@OCELOT_ACE_TYPE_ETYPE = common dso_local global i32 0, align 4
@OCELOT_ACE_TYPE_IPV4 = common dso_local global i32 0, align 4
@OCELOT_ACE_TYPE_IPV6 = common dso_local global i32 0, align 4
@OCELOT_ACE_TYPE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_cls_offload*, %struct.ocelot_ace_rule*)* @ocelot_flower_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_flower_parse(%struct.flow_cls_offload* %0, %struct.ocelot_ace_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.flow_cls_offload*, align 8
  %5 = alloca %struct.ocelot_ace_rule*, align 8
  %6 = alloca %struct.flow_rule*, align 8
  %7 = alloca %struct.flow_dissector*, align 8
  %8 = alloca %struct.flow_match_control, align 4
  %9 = alloca %struct.flow_match_eth_addrs, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.flow_match_basic, align 8
  %12 = alloca %struct.flow_match_ipv4_addrs, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.flow_match_ports, align 8
  %15 = alloca %struct.flow_match_vlan, align 8
  store %struct.flow_cls_offload* %0, %struct.flow_cls_offload** %4, align 8
  store %struct.ocelot_ace_rule* %1, %struct.ocelot_ace_rule** %5, align 8
  %16 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %17 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %16)
  store %struct.flow_rule* %17, %struct.flow_rule** %6, align 8
  %18 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %19 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %21 = load %struct.flow_dissector*, %struct.flow_dissector** %20, align 8
  store %struct.flow_dissector* %21, %struct.flow_dissector** %7, align 8
  %22 = load %struct.flow_dissector*, %struct.flow_dissector** %7, align 8
  %23 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FLOW_DISSECTOR_KEY_CONTROL, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = or i32 %26, %28
  %30 = load i32, i32* @FLOW_DISSECTOR_KEY_PORTS, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* @FLOW_DISSECTOR_KEY_VLAN, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = or i32 %32, %34
  %36 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = or i32 %35, %37
  %39 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = or i32 %38, %40
  %42 = load i32, i32* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = or i32 %41, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %24, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %430

51:                                               ; preds = %2
  %52 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %53 = load i32, i32* @FLOW_DISSECTOR_KEY_CONTROL, align 4
  %54 = call i64 @flow_rule_match_key(%struct.flow_rule* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %58 = call i32 @flow_rule_match_control(%struct.flow_rule* %57, %struct.flow_match_control* %8)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %61 = load i32, i32* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 4
  %62 = call i64 @flow_rule_match_key(%struct.flow_rule* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %159

64:                                               ; preds = %59
  %65 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %66 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ntohs(i32 %68)
  store i64 %69, i64* %10, align 8
  %70 = load %struct.flow_dissector*, %struct.flow_dissector** %7, align 8
  %71 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %76 = call i32 @BIT(i32 %75)
  %77 = or i32 %74, %76
  %78 = load i32, i32* @FLOW_DISSECTOR_KEY_CONTROL, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = or i32 %77, %79
  %81 = and i32 %72, %80
  %82 = load i32, i32* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 4
  %83 = call i32 @BIT(i32 %82)
  %84 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %85 = call i32 @BIT(i32 %84)
  %86 = or i32 %83, %85
  %87 = load i32, i32* @FLOW_DISSECTOR_KEY_CONTROL, align 4
  %88 = call i32 @BIT(i32 %87)
  %89 = or i32 %86, %88
  %90 = icmp ne i32 %81, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %64
  %92 = load i32, i32* @EOPNOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %430

94:                                               ; preds = %64
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @ETH_P_IP, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @ETH_P_IPV6, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* @ETH_P_ARP, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102, %98, %94
  %107 = load i32, i32* @EOPNOTSUPP, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %430

109:                                              ; preds = %102
  %110 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %111 = call i32 @flow_rule_match_eth_addrs(%struct.flow_rule* %110, %struct.flow_match_eth_addrs* %9)
  %112 = load i32, i32* @OCELOT_ACE_TYPE_ETYPE, align 4
  %113 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %114 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %116 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %9, i32 0, i32 1
  %122 = load %struct.TYPE_37__*, %struct.TYPE_37__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ether_addr_copy(i32 %120, i32 %124)
  %126 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %127 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %9, i32 0, i32 1
  %133 = load %struct.TYPE_37__*, %struct.TYPE_37__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ether_addr_copy(i32 %131, i32 %135)
  %137 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %138 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %9, i32 0, i32 0
  %144 = load %struct.TYPE_41__*, %struct.TYPE_41__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ether_addr_copy(i32 %142, i32 %146)
  %148 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %149 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %9, i32 0, i32 0
  %155 = load %struct.TYPE_41__*, %struct.TYPE_41__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ether_addr_copy(i32 %153, i32 %157)
  br label %415

159:                                              ; preds = %59
  %160 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %161 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %162 = call i64 @flow_rule_match_key(%struct.flow_rule* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %235

164:                                              ; preds = %159
  %165 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %166 = call i32 @flow_rule_match_basic(%struct.flow_rule* %165, %struct.flow_match_basic* %11)
  %167 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %11, i32 0, i32 1
  %168 = load %struct.TYPE_44__*, %struct.TYPE_44__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @ntohs(i32 %170)
  %172 = load i64, i64* @ETH_P_IP, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %200

174:                                              ; preds = %164
  %175 = load i32, i32* @OCELOT_ACE_TYPE_IPV4, align 4
  %176 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %177 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 8
  %178 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %11, i32 0, i32 1
  %179 = load %struct.TYPE_44__*, %struct.TYPE_44__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %183 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  store i32 %181, i32* %188, align 4
  %189 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %11, i32 0, i32 0
  %190 = load %struct.TYPE_47__*, %struct.TYPE_47__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %194 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 %192, i32* %199, align 4
  br label %200

200:                                              ; preds = %174, %164
  %201 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %11, i32 0, i32 1
  %202 = load %struct.TYPE_44__*, %struct.TYPE_44__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @ntohs(i32 %204)
  %206 = load i64, i64* @ETH_P_IPV6, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %234

208:                                              ; preds = %200
  %209 = load i32, i32* @OCELOT_ACE_TYPE_IPV6, align 4
  %210 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %211 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %210, i32 0, i32 3
  store i32 %209, i32* %211, align 8
  %212 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %11, i32 0, i32 1
  %213 = load %struct.TYPE_44__*, %struct.TYPE_44__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %217 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  store i32 %215, i32* %222, align 4
  %223 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %11, i32 0, i32 0
  %224 = load %struct.TYPE_47__*, %struct.TYPE_47__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %228 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 %226, i32* %233, align 4
  br label %234

234:                                              ; preds = %208, %200
  br label %235

235:                                              ; preds = %234, %159
  %236 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %237 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 4
  %238 = call i64 @flow_rule_match_key(%struct.flow_rule* %236, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %303

240:                                              ; preds = %235
  %241 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %242 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @ntohs(i32 %244)
  %246 = load i64, i64* @ETH_P_IP, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %303

248:                                              ; preds = %240
  %249 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %250 = call i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule* %249, %struct.flow_match_ipv4_addrs* %12)
  %251 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %252 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  store i32* %258, i32** %13, align 8
  %259 = load i32*, i32** %13, align 8
  %260 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %12, i32 0, i32 1
  %261 = load %struct.TYPE_50__*, %struct.TYPE_50__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %261, i32 0, i32 1
  %263 = call i32 @memcpy(i32* %259, i32* %262, i32 4)
  %264 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %265 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %264, i32 0, i32 4
  %266 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  store i32* %271, i32** %13, align 8
  %272 = load i32*, i32** %13, align 8
  %273 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %12, i32 0, i32 0
  %274 = load %struct.TYPE_57__*, %struct.TYPE_57__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %274, i32 0, i32 1
  %276 = call i32 @memcpy(i32* %272, i32* %275, i32 4)
  %277 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %278 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  store i32* %284, i32** %13, align 8
  %285 = load i32*, i32** %13, align 8
  %286 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %12, i32 0, i32 1
  %287 = load %struct.TYPE_50__*, %struct.TYPE_50__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %287, i32 0, i32 0
  %289 = call i32 @memcpy(i32* %285, i32* %288, i32 4)
  %290 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %291 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  store i32* %297, i32** %13, align 8
  %298 = load i32*, i32** %13, align 8
  %299 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %12, i32 0, i32 0
  %300 = load %struct.TYPE_57__*, %struct.TYPE_57__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %300, i32 0, i32 0
  %302 = call i32 @memcpy(i32* %298, i32* %301, i32 4)
  br label %303

303:                                              ; preds = %248, %240, %235
  %304 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %305 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 4
  %306 = call i64 @flow_rule_match_key(%struct.flow_rule* %304, i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %319

308:                                              ; preds = %303
  %309 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %310 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = call i64 @ntohs(i32 %312)
  %314 = load i64, i64* @ETH_P_IPV6, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %308
  %317 = load i32, i32* @EOPNOTSUPP, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %3, align 4
  br label %430

319:                                              ; preds = %308, %303
  %320 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %321 = load i32, i32* @FLOW_DISSECTOR_KEY_PORTS, align 4
  %322 = call i64 @flow_rule_match_key(%struct.flow_rule* %320, i32 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %367

324:                                              ; preds = %319
  %325 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %326 = call i32 @flow_rule_match_ports(%struct.flow_rule* %325, %struct.flow_match_ports* %14)
  %327 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %14, i32 0, i32 1
  %328 = load %struct.TYPE_59__*, %struct.TYPE_59__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = call i64 @ntohs(i32 %330)
  %332 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %333 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %335, i32 0, i32 1
  store i64 %331, i64* %336, align 8
  %337 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %14, i32 0, i32 0
  %338 = load %struct.TYPE_61__*, %struct.TYPE_61__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = call i64 @ntohs(i32 %340)
  %342 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %343 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %342, i32 0, i32 4
  %344 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %345, i32 0, i32 0
  store i64 %341, i64* %346, align 8
  %347 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %14, i32 0, i32 1
  %348 = load %struct.TYPE_59__*, %struct.TYPE_59__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i64 @ntohs(i32 %350)
  %352 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %353 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %352, i32 0, i32 4
  %354 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %355, i32 0, i32 1
  store i64 %351, i64* %356, align 8
  %357 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %14, i32 0, i32 0
  %358 = load %struct.TYPE_61__*, %struct.TYPE_61__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = call i64 @ntohs(i32 %360)
  %362 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %363 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %362, i32 0, i32 4
  %364 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %365, i32 0, i32 0
  store i64 %361, i64* %366, align 8
  br label %367

367:                                              ; preds = %324, %319
  %368 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %369 = load i32, i32* @FLOW_DISSECTOR_KEY_VLAN, align 4
  %370 = call i64 @flow_rule_match_key(%struct.flow_rule* %368, i32 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %414

372:                                              ; preds = %367
  %373 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %374 = call i32 @flow_rule_match_vlan(%struct.flow_rule* %373, %struct.flow_match_vlan* %15)
  %375 = load i32, i32* @OCELOT_ACE_TYPE_ANY, align 4
  %376 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %377 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %376, i32 0, i32 3
  store i32 %375, i32* %377, align 8
  %378 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %15, i32 0, i32 1
  %379 = load %struct.TYPE_32__*, %struct.TYPE_32__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %383 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %382, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %384, i32 0, i32 1
  store i32 %381, i32* %385, align 4
  %386 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %15, i32 0, i32 0
  %387 = load %struct.TYPE_35__*, %struct.TYPE_35__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %391 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %392, i32 0, i32 0
  store i32 %389, i32* %393, align 8
  %394 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %15, i32 0, i32 1
  %395 = load %struct.TYPE_32__*, %struct.TYPE_32__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %399 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %400, i32 0, i32 1
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 0
  store i32 %397, i32* %403, align 4
  %404 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %15, i32 0, i32 0
  %405 = load %struct.TYPE_35__*, %struct.TYPE_35__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %409 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %410, i32 0, i32 0
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 0
  store i32 %407, i32* %413, align 4
  br label %414

414:                                              ; preds = %372, %367
  br label %415

415:                                              ; preds = %414, %109
  %416 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %417 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %421 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %420, i32 0, i32 1
  store i32 %419, i32* %421, align 4
  %422 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %423 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %426 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %425, i32 0, i32 0
  store i32 %424, i32* %426, align 8
  %427 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %428 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %5, align 8
  %429 = call i32 @ocelot_flower_parse_action(%struct.flow_cls_offload* %427, %struct.ocelot_ace_rule* %428)
  store i32 %429, i32* %3, align 4
  br label %430

430:                                              ; preds = %415, %316, %106, %91, %48
  %431 = load i32, i32* %3, align 4
  ret i32 %431
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_control(%struct.flow_rule*, %struct.flow_match_control*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @flow_rule_match_eth_addrs(%struct.flow_rule*, %struct.flow_match_eth_addrs*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

declare dso_local i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule*, %struct.flow_match_ipv4_addrs*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @flow_rule_match_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

declare dso_local i32 @flow_rule_match_vlan(%struct.flow_rule*, %struct.flow_match_vlan*) #1

declare dso_local i32 @ocelot_flower_parse_action(%struct.flow_cls_offload*, %struct.ocelot_ace_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
