; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_parse_v6_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_parse_v6_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.flow_rule = type { i32 }
%struct.qede_arfs_tuple = type { i32, i32 }
%struct.in6_addr = type { i32 }
%struct.flow_match_ipv6_addrs = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Do not support IPv6 address prefix/mask\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.flow_rule*, %struct.qede_arfs_tuple*)* @qede_flow_parse_v6_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_flow_parse_v6_common(%struct.qede_dev* %0, %struct.flow_rule* %1, %struct.qede_arfs_tuple* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.flow_rule*, align 8
  %7 = alloca %struct.qede_arfs_tuple*, align 8
  %8 = alloca %struct.in6_addr, align 4
  %9 = alloca %struct.in6_addr, align 4
  %10 = alloca %struct.flow_match_ipv6_addrs, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %5, align 8
  store %struct.flow_rule* %1, %struct.flow_rule** %6, align 8
  store %struct.qede_arfs_tuple* %2, %struct.qede_arfs_tuple** %7, align 8
  %11 = call i32 @memset(%struct.in6_addr* %8, i32 0, i32 4)
  %12 = call i32 @memset(%struct.in6_addr* %9, i32 255, i32 4)
  %13 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %14 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 4
  %15 = call i64 @flow_rule_match_key(%struct.flow_rule* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %61

17:                                               ; preds = %3
  %18 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %19 = call i32 @flow_rule_match_ipv6_addrs(%struct.flow_rule* %18, %struct.flow_match_ipv6_addrs* %10)
  %20 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %10, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = call i64 @memcmp(i32* %22, %struct.in6_addr* %8, i32 4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %10, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = call i64 @memcmp(i32* %28, %struct.in6_addr* %9, i32 4)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %25, %17
  %32 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %10, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i64 @memcmp(i32* %34, %struct.in6_addr* %8, i32 4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %10, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i64 @memcmp(i32* %40, %struct.in6_addr* %9, i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37, %25
  %44 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %45 = call i32 @DP_NOTICE(%struct.qede_dev* %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %74

48:                                               ; preds = %37, %31
  %49 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %7, align 8
  %50 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %10, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = call i32 @memcpy(i32* %50, i32* %53, i32 4)
  %55 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %7, align 8
  %56 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %10, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @memcpy(i32* %56, i32* %59, i32 4)
  br label %61

61:                                               ; preds = %48, %3
  %62 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %63 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %64 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %7, align 8
  %65 = call i64 @qede_flow_parse_ports(%struct.qede_dev* %62, %struct.flow_rule* %63, %struct.qede_arfs_tuple* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %74

70:                                               ; preds = %61
  %71 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %72 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %7, align 8
  %73 = call i32 @qede_set_v6_tuple_to_profile(%struct.qede_dev* %71, %struct.qede_arfs_tuple* %72, %struct.in6_addr* %8)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %67, %43
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @memset(%struct.in6_addr*, i32, i32) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_ipv6_addrs(%struct.flow_rule*, %struct.flow_match_ipv6_addrs*) #1

declare dso_local i64 @memcmp(i32*, %struct.in6_addr*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @qede_flow_parse_ports(%struct.qede_dev*, %struct.flow_rule*, %struct.qede_arfs_tuple*) #1

declare dso_local i32 @qede_set_v6_tuple_to_profile(%struct.qede_dev*, %struct.qede_arfs_tuple*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
