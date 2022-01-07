; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_parse_v4_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_parse_v4_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.flow_rule = type { i32 }
%struct.qede_arfs_tuple = type { i64, i64 }
%struct.flow_match_ipv4_addrs = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Do not support ipv4 prefix/masks\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.flow_rule*, %struct.qede_arfs_tuple*)* @qede_flow_parse_v4_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_flow_parse_v4_common(%struct.qede_dev* %0, %struct.flow_rule* %1, %struct.qede_arfs_tuple* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.flow_rule*, align 8
  %7 = alloca %struct.qede_arfs_tuple*, align 8
  %8 = alloca %struct.flow_match_ipv4_addrs, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %5, align 8
  store %struct.flow_rule* %1, %struct.flow_rule** %6, align 8
  store %struct.qede_arfs_tuple* %2, %struct.qede_arfs_tuple** %7, align 8
  %9 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %10 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 4
  %11 = call i64 @flow_rule_match_key(%struct.flow_rule* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %3
  %14 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %15 = call i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule* %14, %struct.flow_match_ipv4_addrs* %8)
  %16 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %8, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %8, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @U32_MAX, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %41, label %28

28:                                               ; preds = %21, %13
  %29 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %8, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %8, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @U32_MAX, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34, %21
  %42 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %43 = call i32 @DP_NOTICE(%struct.qede_dev* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %72

46:                                               ; preds = %34, %28
  %47 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %8, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %7, align 8
  %52 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %8, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %7, align 8
  %58 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %46, %3
  %60 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %61 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %62 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %7, align 8
  %63 = call i64 @qede_flow_parse_ports(%struct.qede_dev* %60, %struct.flow_rule* %61, %struct.qede_arfs_tuple* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %72

68:                                               ; preds = %59
  %69 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %70 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %7, align 8
  %71 = call i32 @qede_set_v4_tuple_to_profile(%struct.qede_dev* %69, %struct.qede_arfs_tuple* %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %65, %41
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule*, %struct.flow_match_ipv4_addrs*) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*) #1

declare dso_local i64 @qede_flow_parse_ports(%struct.qede_dev*, %struct.flow_rule*, %struct.qede_arfs_tuple*) #1

declare dso_local i32 @qede_set_v4_tuple_to_profile(%struct.qede_dev*, %struct.qede_arfs_tuple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
