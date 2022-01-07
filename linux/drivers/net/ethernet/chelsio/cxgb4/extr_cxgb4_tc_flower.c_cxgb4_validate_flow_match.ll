; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_flower.c_cxgb4_validate_flow_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_flower.c_cxgb4_validate_flow_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.flow_rule = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.flow_dissector* }
%struct.flow_dissector = type { i32 }
%struct.flow_match_basic = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.flow_match_ip = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@FLOW_DISSECTOR_KEY_CONTROL = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_KEYID = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_VLAN = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported key used: 0x%x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"IP Key supported only with IPv4/v6\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"ttl match unsupported for offload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.flow_cls_offload*)* @cxgb4_validate_flow_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_validate_flow_match(%struct.net_device* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.flow_rule*, align 8
  %7 = alloca %struct.flow_dissector*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.flow_match_basic, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.flow_match_ip, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  %13 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %14 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %13)
  store %struct.flow_rule* %14, %struct.flow_rule** %6, align 8
  %15 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %16 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.flow_dissector*, %struct.flow_dissector** %17, align 8
  store %struct.flow_dissector* %18, %struct.flow_dissector** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %19 = load %struct.flow_dissector*, %struct.flow_dissector** %7, align 8
  %20 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FLOW_DISSECTOR_KEY_CONTROL, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = or i32 %26, %28
  %30 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* @FLOW_DISSECTOR_KEY_PORTS, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = or i32 %32, %34
  %36 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = or i32 %35, %37
  %39 = load i32, i32* @FLOW_DISSECTOR_KEY_VLAN, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = or i32 %38, %40
  %42 = load i32, i32* @FLOW_DISSECTOR_KEY_IP, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = or i32 %41, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %21, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %2
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = load %struct.flow_dissector*, %struct.flow_dissector** %7, align 8
  %51 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %110

56:                                               ; preds = %2
  %57 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %58 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %59 = call i64 @flow_rule_match_key(%struct.flow_rule* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %63 = call i32 @flow_rule_match_basic(%struct.flow_rule* %62, %struct.flow_match_basic* %10)
  %64 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %10, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ntohs(i32 %67)
  store i64 %68, i64* %9, align 8
  %69 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %10, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ntohs(i32 %72)
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %61, %56
  %75 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %76 = load i32, i32* @FLOW_DISSECTOR_KEY_IP, align 4
  %77 = call i64 @flow_rule_match_key(%struct.flow_rule* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %74
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %8, align 8
  %82 = and i64 %80, %81
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* @ETH_P_IP, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* @ETH_P_IPV6, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i32 @netdev_err(%struct.net_device* %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %110

95:                                               ; preds = %86, %79
  %96 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %97 = call i32 @flow_rule_match_ip(%struct.flow_rule* %96, %struct.flow_match_ip* %12)
  %98 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %12, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @EOPNOTSUPP, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %110

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %74
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %103, %90, %48
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @flow_rule_match_ip(%struct.flow_rule*, %struct.flow_match_ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
