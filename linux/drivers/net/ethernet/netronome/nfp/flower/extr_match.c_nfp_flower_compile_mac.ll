; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_mac_mpls = type { i8*, i32, i32 }
%struct.flow_cls_offload = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_eth_addrs = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.flow_match_mpls = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.flow_match_basic = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@FLOW_DISSECTOR_KEY_ETH_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_MPLS = common dso_local global i32 0, align 4
@NFP_FLOWER_MASK_MPLS_LB = common dso_local global i32 0, align 4
@NFP_FLOWER_MASK_MPLS_TC = common dso_local global i32 0, align 4
@NFP_FLOWER_MASK_MPLS_BOS = common dso_local global i32 0, align 4
@NFP_FLOWER_MASK_MPLS_Q = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i32 0, align 4
@ETH_P_MPLS_UC = common dso_local global i32 0, align 4
@ETH_P_MPLS_MC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_flower_mac_mpls*, %struct.nfp_flower_mac_mpls*, %struct.flow_cls_offload*)* @nfp_flower_compile_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_compile_mac(%struct.nfp_flower_mac_mpls* %0, %struct.nfp_flower_mac_mpls* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca %struct.nfp_flower_mac_mpls*, align 8
  %5 = alloca %struct.nfp_flower_mac_mpls*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.flow_rule*, align 8
  %8 = alloca %struct.flow_match_eth_addrs, align 8
  %9 = alloca %struct.flow_match_mpls, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.flow_match_basic, align 8
  store %struct.nfp_flower_mac_mpls* %0, %struct.nfp_flower_mac_mpls** %4, align 8
  store %struct.nfp_flower_mac_mpls* %1, %struct.nfp_flower_mac_mpls** %5, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %6, align 8
  %12 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %13 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %12)
  store %struct.flow_rule* %13, %struct.flow_rule** %7, align 8
  %14 = load %struct.nfp_flower_mac_mpls*, %struct.nfp_flower_mac_mpls** %4, align 8
  %15 = call i32 @memset(%struct.nfp_flower_mac_mpls* %14, i32 0, i32 16)
  %16 = load %struct.nfp_flower_mac_mpls*, %struct.nfp_flower_mac_mpls** %5, align 8
  %17 = call i32 @memset(%struct.nfp_flower_mac_mpls* %16, i32 0, i32 16)
  %18 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %19 = load i32, i32* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 4
  %20 = call i64 @flow_rule_match_key(%struct.flow_rule* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %3
  %23 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %24 = call i32 @flow_rule_match_eth_addrs(%struct.flow_rule* %23, %struct.flow_match_eth_addrs* %8)
  %25 = load %struct.nfp_flower_mac_mpls*, %struct.nfp_flower_mac_mpls** %4, align 8
  %26 = getelementptr inbounds %struct.nfp_flower_mac_mpls, %struct.nfp_flower_mac_mpls* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %8, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @ether_addr_copy(i32 %27, i32* %32)
  %34 = load %struct.nfp_flower_mac_mpls*, %struct.nfp_flower_mac_mpls** %4, align 8
  %35 = getelementptr inbounds %struct.nfp_flower_mac_mpls, %struct.nfp_flower_mac_mpls* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %8, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i32 @ether_addr_copy(i32 %36, i32* %41)
  %43 = load %struct.nfp_flower_mac_mpls*, %struct.nfp_flower_mac_mpls** %5, align 8
  %44 = getelementptr inbounds %struct.nfp_flower_mac_mpls, %struct.nfp_flower_mac_mpls* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %8, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = call i32 @ether_addr_copy(i32 %45, i32* %50)
  %52 = load %struct.nfp_flower_mac_mpls*, %struct.nfp_flower_mac_mpls** %5, align 8
  %53 = getelementptr inbounds %struct.nfp_flower_mac_mpls, %struct.nfp_flower_mac_mpls* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %8, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = call i32 @ether_addr_copy(i32 %54, i32* %59)
  br label %61

61:                                               ; preds = %22, %3
  %62 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %63 = load i32, i32* @FLOW_DISSECTOR_KEY_MPLS, align 4
  %64 = call i64 @flow_rule_match_key(%struct.flow_rule* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %121

66:                                               ; preds = %61
  %67 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %68 = call i32 @flow_rule_match_mpls(%struct.flow_rule* %67, %struct.flow_match_mpls* %9)
  %69 = load i32, i32* @NFP_FLOWER_MASK_MPLS_LB, align 4
  %70 = getelementptr inbounds %struct.flow_match_mpls, %struct.flow_match_mpls* %9, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @FIELD_PREP(i32 %69, i32 %73)
  %75 = load i32, i32* @NFP_FLOWER_MASK_MPLS_TC, align 4
  %76 = getelementptr inbounds %struct.flow_match_mpls, %struct.flow_match_mpls* %9, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @FIELD_PREP(i32 %75, i32 %79)
  %81 = or i32 %74, %80
  %82 = load i32, i32* @NFP_FLOWER_MASK_MPLS_BOS, align 4
  %83 = getelementptr inbounds %struct.flow_match_mpls, %struct.flow_match_mpls* %9, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @FIELD_PREP(i32 %82, i32 %86)
  %88 = or i32 %81, %87
  %89 = load i32, i32* @NFP_FLOWER_MASK_MPLS_Q, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i8* @cpu_to_be32(i32 %91)
  %93 = load %struct.nfp_flower_mac_mpls*, %struct.nfp_flower_mac_mpls** %4, align 8
  %94 = getelementptr inbounds %struct.nfp_flower_mac_mpls, %struct.nfp_flower_mac_mpls* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @NFP_FLOWER_MASK_MPLS_LB, align 4
  %96 = getelementptr inbounds %struct.flow_match_mpls, %struct.flow_match_mpls* %9, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @FIELD_PREP(i32 %95, i32 %99)
  %101 = load i32, i32* @NFP_FLOWER_MASK_MPLS_TC, align 4
  %102 = getelementptr inbounds %struct.flow_match_mpls, %struct.flow_match_mpls* %9, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @FIELD_PREP(i32 %101, i32 %105)
  %107 = or i32 %100, %106
  %108 = load i32, i32* @NFP_FLOWER_MASK_MPLS_BOS, align 4
  %109 = getelementptr inbounds %struct.flow_match_mpls, %struct.flow_match_mpls* %9, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @FIELD_PREP(i32 %108, i32 %112)
  %114 = or i32 %107, %113
  %115 = load i32, i32* @NFP_FLOWER_MASK_MPLS_Q, align 4
  %116 = or i32 %114, %115
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i8* @cpu_to_be32(i32 %117)
  %119 = load %struct.nfp_flower_mac_mpls*, %struct.nfp_flower_mac_mpls** %5, align 8
  %120 = getelementptr inbounds %struct.nfp_flower_mac_mpls, %struct.nfp_flower_mac_mpls* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  br label %155

121:                                              ; preds = %61
  %122 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %123 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %124 = call i64 @flow_rule_match_key(%struct.flow_rule* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %154

126:                                              ; preds = %121
  %127 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %128 = call i32 @flow_rule_match_basic(%struct.flow_rule* %127, %struct.flow_match_basic* %11)
  %129 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %11, i32 0, i32 0
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @ETH_P_MPLS_UC, align 4
  %134 = call i64 @cpu_to_be16(i32 %133)
  %135 = icmp eq i64 %132, %134
  br i1 %135, label %144, label %136

136:                                              ; preds = %126
  %137 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %11, i32 0, i32 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @ETH_P_MPLS_MC, align 4
  %142 = call i64 @cpu_to_be16(i32 %141)
  %143 = icmp eq i64 %140, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %136, %126
  %145 = load i32, i32* @NFP_FLOWER_MASK_MPLS_Q, align 4
  %146 = call i8* @cpu_to_be32(i32 %145)
  %147 = load %struct.nfp_flower_mac_mpls*, %struct.nfp_flower_mac_mpls** %4, align 8
  %148 = getelementptr inbounds %struct.nfp_flower_mac_mpls, %struct.nfp_flower_mac_mpls* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* @NFP_FLOWER_MASK_MPLS_Q, align 4
  %150 = call i8* @cpu_to_be32(i32 %149)
  %151 = load %struct.nfp_flower_mac_mpls*, %struct.nfp_flower_mac_mpls** %5, align 8
  %152 = getelementptr inbounds %struct.nfp_flower_mac_mpls, %struct.nfp_flower_mac_mpls* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %144, %136
  br label %154

154:                                              ; preds = %153, %121
  br label %155

155:                                              ; preds = %154, %66
  ret void
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @memset(%struct.nfp_flower_mac_mpls*, i32, i32) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_eth_addrs(%struct.flow_rule*, %struct.flow_match_eth_addrs*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @flow_rule_match_mpls(%struct.flow_rule*, %struct.flow_match_mpls*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
