; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_parse_flow_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_parse_flow_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.flow_rule = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.flow_dissector* }
%struct.flow_dissector = type { i32 }
%struct.qede_arfs_tuple = type { i32 }
%struct.flow_match_basic = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_CONTROL = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported key set:0x%x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported proto=0x%x\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid protocol request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, i32, %struct.flow_rule*, %struct.qede_arfs_tuple*)* @qede_parse_flow_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_parse_flow_attr(%struct.qede_dev* %0, i32 %1, %struct.flow_rule* %2, %struct.qede_arfs_tuple* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.flow_rule*, align 8
  %9 = alloca %struct.qede_arfs_tuple*, align 8
  %10 = alloca %struct.flow_dissector*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.flow_match_basic, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.flow_rule* %2, %struct.flow_rule** %8, align 8
  store %struct.qede_arfs_tuple* %3, %struct.qede_arfs_tuple** %9, align 8
  %14 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %15 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.flow_dissector*, %struct.flow_dissector** %16, align 8
  store %struct.flow_dissector* %17, %struct.flow_dissector** %10, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %20 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %9, align 8
  %21 = call i32 @memset(%struct.qede_arfs_tuple* %20, i32 0, i32 4)
  %22 = load %struct.flow_dissector*, %struct.flow_dissector** %10, align 8
  %23 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FLOW_DISSECTOR_KEY_CONTROL, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = or i32 %26, %28
  %30 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = or i32 %32, %34
  %36 = load i32, i32* @FLOW_DISSECTOR_KEY_PORTS, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = or i32 %35, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %24, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %4
  %43 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %44 = load %struct.flow_dissector*, %struct.flow_dissector** %10, align 8
  %45 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.qede_dev*, i8*, ...) @DP_NOTICE(%struct.qede_dev* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %142

50:                                               ; preds = %4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @ETH_P_IP, align 4
  %53 = call i32 @htons(i32 %52)
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ETH_P_IPV6, align 4
  %58 = call i32 @htons(i32 %57)
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (%struct.qede_dev*, i8*, ...) @DP_NOTICE(%struct.qede_dev* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EPROTONOSUPPORT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %142

66:                                               ; preds = %55, %50
  %67 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %68 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %69 = call i64 @flow_rule_match_key(%struct.flow_rule* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %73 = call i32 @flow_rule_match_basic(%struct.flow_rule* %72, %struct.flow_match_basic* %13)
  %74 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %13, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %12, align 8
  br label %78

78:                                               ; preds = %71, %66
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* @IPPROTO_TCP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @ETH_P_IP, align 4
  %85 = call i32 @htons(i32 %84)
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %89 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %90 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %9, align 8
  %91 = call i32 @qede_flow_parse_tcp_v4(%struct.qede_dev* %88, %struct.flow_rule* %89, %struct.qede_arfs_tuple* %90)
  store i32 %91, i32* %11, align 4
  br label %140

92:                                               ; preds = %82, %78
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @IPPROTO_TCP, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @ETH_P_IPV6, align 4
  %99 = call i32 @htons(i32 %98)
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %103 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %104 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %9, align 8
  %105 = call i32 @qede_flow_parse_tcp_v6(%struct.qede_dev* %102, %struct.flow_rule* %103, %struct.qede_arfs_tuple* %104)
  store i32 %105, i32* %11, align 4
  br label %139

106:                                              ; preds = %96, %92
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* @IPPROTO_UDP, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @ETH_P_IP, align 4
  %113 = call i32 @htons(i32 %112)
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %117 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %118 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %9, align 8
  %119 = call i32 @qede_flow_parse_udp_v4(%struct.qede_dev* %116, %struct.flow_rule* %117, %struct.qede_arfs_tuple* %118)
  store i32 %119, i32* %11, align 4
  br label %138

120:                                              ; preds = %110, %106
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* @IPPROTO_UDP, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %120
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @ETH_P_IPV6, align 4
  %127 = call i32 @htons(i32 %126)
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %131 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %132 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %9, align 8
  %133 = call i32 @qede_flow_parse_udp_v6(%struct.qede_dev* %130, %struct.flow_rule* %131, %struct.qede_arfs_tuple* %132)
  store i32 %133, i32* %11, align 4
  br label %137

134:                                              ; preds = %124, %120
  %135 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %136 = call i32 (%struct.qede_dev*, i8*, ...) @DP_NOTICE(%struct.qede_dev* %135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %129
  br label %138

138:                                              ; preds = %137, %115
  br label %139

139:                                              ; preds = %138, %101
  br label %140

140:                                              ; preds = %139, %87
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %60, %42
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @memset(%struct.qede_arfs_tuple*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*, ...) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

declare dso_local i32 @qede_flow_parse_tcp_v4(%struct.qede_dev*, %struct.flow_rule*, %struct.qede_arfs_tuple*) #1

declare dso_local i32 @qede_flow_parse_tcp_v6(%struct.qede_dev*, %struct.flow_rule*, %struct.qede_arfs_tuple*) #1

declare dso_local i32 @qede_flow_parse_udp_v4(%struct.qede_dev*, %struct.flow_rule*, %struct.qede_arfs_tuple*) #1

declare dso_local i32 @qede_flow_parse_udp_v6(%struct.qede_dev*, %struct.flow_rule*, %struct.qede_arfs_tuple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
