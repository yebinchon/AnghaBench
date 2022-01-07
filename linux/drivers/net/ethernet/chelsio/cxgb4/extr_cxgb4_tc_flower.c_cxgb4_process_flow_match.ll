; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_flower.c_cxgb4_process_flow_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_flower.c_cxgb4_process_flow_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.ch_filter_specification = type { i32, %struct.TYPE_31__, %struct.TYPE_35__, i8*, i8*, i32*, i32* }
%struct.TYPE_31__ = type { i32, i32, i32, i64, i64, i8*, i32, i8*, i8*, i32*, i32*, i32 }
%struct.TYPE_35__ = type { i64, i32, i32, i32, i64, i8*, i32, i8*, i8*, i32*, i32*, i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_control = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.flow_match_basic = type { %struct.TYPE_30__*, %struct.TYPE_29__* }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.flow_match_ipv4_addrs = type { %struct.TYPE_34__*, %struct.TYPE_32__* }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.flow_match_ipv6_addrs = type { %struct.TYPE_41__*, %struct.TYPE_38__* }
%struct.TYPE_41__ = type { %struct.TYPE_40__, %struct.TYPE_39__ }
%struct.TYPE_40__ = type { i32* }
%struct.TYPE_39__ = type { i32* }
%struct.TYPE_38__ = type { %struct.TYPE_37__, %struct.TYPE_33__ }
%struct.TYPE_37__ = type { i32* }
%struct.TYPE_33__ = type { i32* }
%struct.flow_match_ports = type { %struct.TYPE_43__*, %struct.TYPE_42__* }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_42__ = type { i32, i32 }
%struct.flow_match_ip = type { %struct.TYPE_23__*, %struct.TYPE_44__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_44__ = type { i32 }
%struct.flow_match_enc_keyid = type { %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.flow_match_vlan = type { %struct.TYPE_27__*, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_36__ = type { i32 }

@FLOW_DISSECTOR_KEY_CONTROL = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i32 0, align 4
@ETH_P_ALL = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IP = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_KEYID = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_VLAN = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.flow_cls_offload*, %struct.ch_filter_specification*)* @cxgb4_process_flow_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb4_process_flow_match(%struct.net_device* %0, %struct.flow_cls_offload* %1, %struct.ch_filter_specification* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.ch_filter_specification*, align 8
  %7 = alloca %struct.flow_rule*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.flow_match_control, align 8
  %10 = alloca %struct.flow_match_basic, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.flow_match_ipv4_addrs, align 8
  %14 = alloca %struct.flow_match_ipv6_addrs, align 8
  %15 = alloca %struct.flow_match_ports, align 8
  %16 = alloca %struct.flow_match_ip, align 8
  %17 = alloca %struct.flow_match_enc_keyid, align 8
  %18 = alloca %struct.flow_match_vlan, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  store %struct.ch_filter_specification* %2, %struct.ch_filter_specification** %6, align 8
  %21 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %22 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %21)
  store %struct.flow_rule* %22, %struct.flow_rule** %7, align 8
  store i64 0, i64* %8, align 8
  %23 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %24 = load i32, i32* @FLOW_DISSECTOR_KEY_CONTROL, align 4
  %25 = call i64 @flow_rule_match_key(%struct.flow_rule* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %29 = call i32 @flow_rule_match_control(%struct.flow_rule* %28, %struct.flow_match_control* %9)
  %30 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %9, i32 0, i32 0
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %27, %3
  %35 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %36 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %37 = call i64 @flow_rule_match_key(%struct.flow_rule* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %86

39:                                               ; preds = %34
  %40 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %41 = call i32 @flow_rule_match_basic(%struct.flow_rule* %40, %struct.flow_match_basic* %10)
  %42 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %10, i32 0, i32 1
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ntohs(i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %10, i32 0, i32 0
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ntohs(i32 %50)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @ETH_P_ALL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @ETH_P_IPV6, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %62 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %66 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %70 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 3
  store i64 %68, i64* %71, align 8
  %72 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %10, i32 0, i32 1
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %77 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %77, i32 0, i32 11
  store i32 %75, i32* %78, align 8
  %79 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %10, i32 0, i32 0
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %84 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 11
  store i32 %82, i32* %85, align 8
  br label %86

86:                                               ; preds = %63, %34
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %147

90:                                               ; preds = %86
  %91 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %92 = call i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule* %91, %struct.flow_match_ipv4_addrs* %13)
  %93 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %94 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %96 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %96, i32 0, i32 10
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %13, i32 0, i32 0
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 1
  %103 = call i32 @memcpy(i32* %99, i32* %102, i32 4)
  %104 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %105 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %105, i32 0, i32 9
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %13, i32 0, i32 0
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 0
  %112 = call i32 @memcpy(i32* %108, i32* %111, i32 4)
  %113 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %114 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 10
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %13, i32 0, i32 1
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 1
  %121 = call i32 @memcpy(i32* %117, i32* %120, i32 4)
  %122 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %123 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 9
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %13, i32 0, i32 1
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 0
  %130 = call i32 @memcpy(i32* %126, i32* %129, i32 4)
  %131 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %132 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %13, i32 0, i32 0
  %136 = load %struct.TYPE_34__*, %struct.TYPE_34__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %136, i32 0, i32 1
  %138 = call i32 @memcpy(i32* %134, i32* %137, i32 4)
  %139 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %140 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %13, i32 0, i32 0
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 0
  %146 = call i32 @memcpy(i32* %142, i32* %145, i32 4)
  br label %147

147:                                              ; preds = %90, %86
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %220

151:                                              ; preds = %147
  %152 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %153 = call i32 @flow_rule_match_ipv6_addrs(%struct.flow_rule* %152, %struct.flow_match_ipv6_addrs* %14)
  %154 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %155 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %157 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %157, i32 0, i32 10
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %14, i32 0, i32 0
  %162 = load %struct.TYPE_41__*, %struct.TYPE_41__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @memcpy(i32* %160, i32* %165, i32 8)
  %167 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %168 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %168, i32 0, i32 9
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %14, i32 0, i32 0
  %173 = load %struct.TYPE_41__*, %struct.TYPE_41__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @memcpy(i32* %171, i32* %176, i32 8)
  %178 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %179 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 10
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %14, i32 0, i32 1
  %184 = load %struct.TYPE_38__*, %struct.TYPE_38__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @memcpy(i32* %182, i32* %187, i32 8)
  %189 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %190 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 9
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %14, i32 0, i32 1
  %195 = load %struct.TYPE_38__*, %struct.TYPE_38__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @memcpy(i32* %193, i32* %198, i32 8)
  %200 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %201 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %200, i32 0, i32 6
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %14, i32 0, i32 0
  %205 = load %struct.TYPE_41__*, %struct.TYPE_41__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @memcpy(i32* %203, i32* %208, i32 8)
  %210 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %211 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %14, i32 0, i32 0
  %215 = load %struct.TYPE_41__*, %struct.TYPE_41__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @memcpy(i32* %213, i32* %218, i32 8)
  br label %220

220:                                              ; preds = %151, %147
  %221 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %222 = load i32, i32* @FLOW_DISSECTOR_KEY_PORTS, align 4
  %223 = call i64 @flow_rule_match_key(%struct.flow_rule* %221, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %274

225:                                              ; preds = %220
  %226 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %227 = call i32 @flow_rule_match_ports(%struct.flow_rule* %226, %struct.flow_match_ports* %15)
  %228 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %15, i32 0, i32 0
  %229 = load %struct.TYPE_43__*, %struct.TYPE_43__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @cpu_to_be16(i32 %231)
  %233 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %234 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %234, i32 0, i32 8
  store i8* %232, i8** %235, align 8
  %236 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %15, i32 0, i32 1
  %237 = load %struct.TYPE_42__*, %struct.TYPE_42__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i8* @cpu_to_be16(i32 %239)
  %241 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %242 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %242, i32 0, i32 8
  store i8* %240, i8** %243, align 8
  %244 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %15, i32 0, i32 0
  %245 = load %struct.TYPE_43__*, %struct.TYPE_43__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i8* @cpu_to_be16(i32 %247)
  %249 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %250 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %250, i32 0, i32 7
  store i8* %248, i8** %251, align 8
  %252 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %15, i32 0, i32 1
  %253 = load %struct.TYPE_42__*, %struct.TYPE_42__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @cpu_to_be16(i32 %255)
  %257 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %258 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %258, i32 0, i32 7
  store i8* %256, i8** %259, align 8
  %260 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %15, i32 0, i32 0
  %261 = load %struct.TYPE_43__*, %struct.TYPE_43__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i8* @cpu_to_be16(i32 %263)
  %265 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %266 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %265, i32 0, i32 4
  store i8* %264, i8** %266, align 8
  %267 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %15, i32 0, i32 0
  %268 = load %struct.TYPE_43__*, %struct.TYPE_43__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i8* @cpu_to_be16(i32 %270)
  %272 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %273 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %272, i32 0, i32 3
  store i8* %271, i8** %273, align 8
  br label %274

274:                                              ; preds = %225, %220
  %275 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %276 = load i32, i32* @FLOW_DISSECTOR_KEY_IP, align 4
  %277 = call i64 @flow_rule_match_key(%struct.flow_rule* %275, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %296

279:                                              ; preds = %274
  %280 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %281 = call i32 @flow_rule_match_ip(%struct.flow_rule* %280, %struct.flow_match_ip* %16)
  %282 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %16, i32 0, i32 1
  %283 = load %struct.TYPE_44__*, %struct.TYPE_44__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %287 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %287, i32 0, i32 6
  store i32 %285, i32* %288, align 8
  %289 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %16, i32 0, i32 0
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %294 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %294, i32 0, i32 6
  store i32 %292, i32* %295, align 8
  br label %296

296:                                              ; preds = %279, %274
  %297 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %298 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 4
  %299 = call i64 @flow_rule_match_key(%struct.flow_rule* %297, i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %333

301:                                              ; preds = %296
  %302 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %303 = call i32 @flow_rule_match_enc_keyid(%struct.flow_rule* %302, %struct.flow_match_enc_keyid* %17)
  %304 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %17, i32 0, i32 1
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i8* @be32_to_cpu(i32 %307)
  %309 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %310 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %310, i32 0, i32 5
  store i8* %308, i8** %311, align 8
  %312 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %17, i32 0, i32 0
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i8* @be32_to_cpu(i32 %315)
  %317 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %318 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %318, i32 0, i32 5
  store i8* %316, i8** %319, align 8
  %320 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %321 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %321, i32 0, i32 5
  %323 = load i8*, i8** %322, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %332

325:                                              ; preds = %301
  %326 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %327 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %327, i32 0, i32 1
  store i32 1, i32* %328, align 8
  %329 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %330 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %330, i32 0, i32 0
  store i32 1, i32* %331, align 8
  br label %332

332:                                              ; preds = %325, %301
  br label %333

333:                                              ; preds = %332, %296
  %334 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %335 = load i32, i32* @FLOW_DISSECTOR_KEY_VLAN, align 4
  %336 = call i64 @flow_rule_match_key(%struct.flow_rule* %334, i32 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %391

338:                                              ; preds = %333
  %339 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %340 = call i32 @flow_rule_match_vlan(%struct.flow_rule* %339, %struct.flow_match_vlan* %18)
  %341 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %18, i32 0, i32 1
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %18, i32 0, i32 1
  %346 = load %struct.TYPE_26__*, %struct.TYPE_26__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @VLAN_PRIO_SHIFT, align 8
  %350 = shl i64 %348, %349
  %351 = or i64 %344, %350
  store i64 %351, i64* %19, align 8
  %352 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %18, i32 0, i32 0
  %353 = load %struct.TYPE_27__*, %struct.TYPE_27__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %18, i32 0, i32 0
  %357 = load %struct.TYPE_27__*, %struct.TYPE_27__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @VLAN_PRIO_SHIFT, align 8
  %361 = shl i64 %359, %360
  %362 = or i64 %355, %361
  store i64 %362, i64* %20, align 8
  %363 = load i64, i64* %19, align 8
  %364 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %365 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %365, i32 0, i32 4
  store i64 %363, i64* %366, align 8
  %367 = load i64, i64* %20, align 8
  %368 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %369 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %369, i32 0, i32 4
  store i64 %367, i64* %370, align 8
  %371 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %372 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %372, i32 0, i32 2
  store i32 1, i32* %373, align 4
  %374 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %375 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %375, i32 0, i32 1
  store i32 1, i32* %376, align 4
  %377 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %378 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @ETH_P_8021Q, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %390

383:                                              ; preds = %338
  %384 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %385 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %385, i32 0, i32 0
  store i64 0, i64* %386, align 8
  %387 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %388 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %388, i32 0, i32 3
  store i64 0, i64* %389, align 8
  br label %390

390:                                              ; preds = %383, %338
  br label %391

391:                                              ; preds = %390, %333
  %392 = load %struct.net_device*, %struct.net_device** %4, align 8
  %393 = call %struct.TYPE_36__* @netdev2pinfo(%struct.net_device* %392)
  %394 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %397 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %397, i32 0, i32 3
  store i32 %395, i32* %398, align 8
  %399 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %400 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %400, i32 0, i32 2
  store i32 -1, i32* %401, align 8
  ret void
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_control(%struct.flow_rule*, %struct.flow_match_control*) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule*, %struct.flow_match_ipv4_addrs*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @flow_rule_match_ipv6_addrs(%struct.flow_rule*, %struct.flow_match_ipv6_addrs*) #1

declare dso_local i32 @flow_rule_match_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @flow_rule_match_ip(%struct.flow_rule*, %struct.flow_match_ip*) #1

declare dso_local i32 @flow_rule_match_enc_keyid(%struct.flow_rule*, %struct.flow_match_enc_keyid*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @flow_rule_match_vlan(%struct.flow_rule*, %struct.flow_match_vlan*) #1

declare dso_local %struct.TYPE_36__* @netdev2pinfo(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
