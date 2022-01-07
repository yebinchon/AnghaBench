; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rule_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rule_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ethtool_rx_flow_spec = type { i32, i32 }
%struct.bcm_sf2_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@RX_CLS_FLOW_WAKE = common dso_local global i32 0, align 4
@SF2_NUM_EGRESS_QUEUES = common dso_local global i32 0, align 4
@RX_CLS_FLOW_DISC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FLOW_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.ethtool_rx_flow_spec*)* @bcm_sf2_cfp_rule_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_cfp_rule_insert(%struct.dsa_switch* %0, i32 %1, %struct.ethtool_rx_flow_spec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %8 = alloca %struct.bcm_sf2_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ethtool_rx_flow_spec* %2, %struct.ethtool_rx_flow_spec** %7, align 8
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %15 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %14)
  store %struct.bcm_sf2_priv* %15, %struct.bcm_sf2_priv** %8, align 8
  %16 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %17 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %27 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @RX_CLS_FLOW_WAKE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SF2_NUM_EGRESS_QUEUES, align 4
  %35 = mul i32 %33, %34
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %32, %3
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @SF2_NUM_EGRESS_QUEUES, align 4
  %39 = udiv i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @RX_CLS_FLOW_DISC, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %60, label %43

43:                                               ; preds = %36
  %44 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @dsa_is_user_port(%struct.dsa_switch* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %56 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp uge i32 %54, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53, %48, %36
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %98

63:                                               ; preds = %53
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @SF2_NUM_EGRESS_QUEUES, align 4
  %66 = urem i32 %64, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp uge i32 %67, 7
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  %71 = sub i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %74 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @FLOW_EXT, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  switch i32 %78, label %93 [
    i32 131, label %79
    i32 129, label %79
    i32 130, label %86
    i32 128, label %86
  ]

79:                                               ; preds = %72, %72
  %80 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %85 = call i32 @bcm_sf2_cfp_ipv4_rule_set(%struct.bcm_sf2_priv* %80, i32 %81, i32 %82, i32 %83, %struct.ethtool_rx_flow_spec* %84)
  store i32 %85, i32* %13, align 4
  br label %96

86:                                               ; preds = %72, %72
  %87 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %92 = call i32 @bcm_sf2_cfp_ipv6_rule_set(%struct.bcm_sf2_priv* %87, i32 %88, i32 %89, i32 %90, %struct.ethtool_rx_flow_spec* %91)
  store i32 %92, i32* %13, align 4
  br label %96

93:                                               ; preds = %72
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %93, %86, %79
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %60
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i64 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @bcm_sf2_cfp_ipv4_rule_set(%struct.bcm_sf2_priv*, i32, i32, i32, %struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @bcm_sf2_cfp_ipv6_rule_set(%struct.bcm_sf2_priv*, i32, i32, i32, %struct.ethtool_rx_flow_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
