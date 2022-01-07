; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_spec_to_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_spec_to_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.qede_arfs_tuple = type { i32 }
%struct.ethtool_rx_flow_spec = type { i32, i32 }
%struct.ethtool_rx_flow_spec_input = type { %struct.ethtool_rx_flow_spec* }
%struct.ethtool_rx_flow_rule = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@FLOW_EXT = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Can't support flow of type %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_arfs_tuple*, %struct.ethtool_rx_flow_spec*)* @qede_flow_spec_to_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_flow_spec_to_rule(%struct.qede_dev* %0, %struct.qede_arfs_tuple* %1, %struct.ethtool_rx_flow_spec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qede_arfs_tuple*, align 8
  %7 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %8 = alloca %struct.ethtool_rx_flow_spec_input, align 8
  %9 = alloca %struct.ethtool_rx_flow_rule*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %5, align 8
  store %struct.qede_arfs_tuple* %1, %struct.qede_arfs_tuple** %6, align 8
  store %struct.ethtool_rx_flow_spec* %2, %struct.ethtool_rx_flow_spec** %7, align 8
  %12 = bitcast %struct.ethtool_rx_flow_spec_input* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  store i32 0, i32* %11, align 4
  %13 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %14 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %15 = call i64 @qede_flow_spec_validate_unused(%struct.qede_dev* %13, %struct.ethtool_rx_flow_spec* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %22 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FLOW_EXT, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  switch i32 %26, label %33 [
    i32 131, label %27
    i32 129, label %27
    i32 130, label %30
    i32 128, label %30
  ]

27:                                               ; preds = %20, %20
  %28 = load i32, i32* @ETH_P_IP, align 4
  %29 = call i32 @htons(i32 %28)
  store i32 %29, i32* %10, align 4
  br label %42

30:                                               ; preds = %20, %20
  %31 = load i32, i32* @ETH_P_IPV6, align 4
  %32 = call i32 @htons(i32 %31)
  store i32 %32, i32* %10, align 4
  br label %42

33:                                               ; preds = %20
  %34 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %35 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %36 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %37 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DP_VERBOSE(%struct.qede_dev* %34, i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %79

42:                                               ; preds = %30, %27
  %43 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %44 = getelementptr inbounds %struct.ethtool_rx_flow_spec_input, %struct.ethtool_rx_flow_spec_input* %8, i32 0, i32 0
  store %struct.ethtool_rx_flow_spec* %43, %struct.ethtool_rx_flow_spec** %44, align 8
  %45 = call %struct.ethtool_rx_flow_rule* @ethtool_rx_flow_rule_create(%struct.ethtool_rx_flow_spec_input* %8)
  store %struct.ethtool_rx_flow_rule* %45, %struct.ethtool_rx_flow_rule** %9, align 8
  %46 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %9, align 8
  %47 = call i64 @IS_ERR(%struct.ethtool_rx_flow_rule* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %9, align 8
  %51 = call i32 @PTR_ERR(%struct.ethtool_rx_flow_rule* %50)
  store i32 %51, i32* %4, align 4
  br label %79

52:                                               ; preds = %42
  %53 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %9, align 8
  %56 = getelementptr inbounds %struct.ethtool_rx_flow_rule, %struct.ethtool_rx_flow_rule* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %59 = call i64 @qede_parse_flow_attr(%struct.qede_dev* %53, i32 %54, %struct.TYPE_2__* %57, %struct.qede_arfs_tuple* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %75

64:                                               ; preds = %52
  %65 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %66 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %9, align 8
  %67 = getelementptr inbounds %struct.ethtool_rx_flow_rule, %struct.ethtool_rx_flow_rule* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %71 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %72 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @qede_flow_spec_validate(%struct.qede_dev* %65, i32* %69, %struct.qede_arfs_tuple* %70, i32 %73)
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %64, %61
  %76 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %9, align 8
  %77 = call i32 @ethtool_rx_flow_rule_destroy(%struct.ethtool_rx_flow_rule* %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %49, %33, %17
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @qede_flow_spec_validate_unused(%struct.qede_dev*, %struct.ethtool_rx_flow_spec*) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32) #2

declare dso_local %struct.ethtool_rx_flow_rule* @ethtool_rx_flow_rule_create(%struct.ethtool_rx_flow_spec_input*) #2

declare dso_local i64 @IS_ERR(%struct.ethtool_rx_flow_rule*) #2

declare dso_local i32 @PTR_ERR(%struct.ethtool_rx_flow_rule*) #2

declare dso_local i64 @qede_parse_flow_attr(%struct.qede_dev*, i32, %struct.TYPE_2__*, %struct.qede_arfs_tuple*) #2

declare dso_local i32 @qede_flow_spec_validate(%struct.qede_dev*, i32*, %struct.qede_arfs_tuple*, i32) #2

declare dso_local i32 @ethtool_rx_flow_rule_destroy(%struct.ethtool_rx_flow_rule*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
