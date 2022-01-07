; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rule_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rule_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }
%struct.ethtool_rx_flow_spec = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64 }
%struct.bcm_sf2_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cfp_rule = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FLOW_EXT = common dso_local global i32 0, align 4
@RX_CLS_LOC_ANY = common dso_local global i64 0, align 8
@CFP_NUM_RULES = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.ethtool_rx_flow_spec*)* @bcm_sf2_cfp_rule_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_cfp_rule_set(%struct.dsa_switch* %0, i32 %1, %struct.ethtool_rx_flow_spec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %8 = alloca %struct.bcm_sf2_priv*, align 8
  %9 = alloca %struct.cfp_rule*, align 8
  %10 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ethtool_rx_flow_spec* %2, %struct.ethtool_rx_flow_spec** %7, align 8
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %12 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %11)
  store %struct.bcm_sf2_priv* %12, %struct.bcm_sf2_priv** %8, align 8
  store %struct.cfp_rule* null, %struct.cfp_rule** %9, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %16 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FLOW_EXT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %3
  %22 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %23 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  %28 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %29 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27, %21
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %132

38:                                               ; preds = %27, %3
  %39 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %40 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RX_CLS_LOC_ANY, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %46 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CFP_NUM_RULES, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %132

53:                                               ; preds = %44, %38
  %54 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %55 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RX_CLS_LOC_ANY, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %61 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %64 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @test_bit(i64 %62, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %132

72:                                               ; preds = %59, %53
  %73 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %74 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RX_CLS_LOC_ANY, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %80 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %83 = call i64 @bcm_sf2_cfp_rule_size(%struct.bcm_sf2_priv* %82)
  %84 = icmp sgt i64 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %132

88:                                               ; preds = %78, %72
  %89 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %92 = call i32 @bcm_sf2_cfp_rule_cmp(%struct.bcm_sf2_priv* %89, i32 %90, %struct.ethtool_rx_flow_spec* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @EEXIST, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %132

98:                                               ; preds = %88
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call %struct.cfp_rule* @kzalloc(i32 12, i32 %99)
  store %struct.cfp_rule* %100, %struct.cfp_rule** %9, align 8
  %101 = load %struct.cfp_rule*, %struct.cfp_rule** %9, align 8
  %102 = icmp ne %struct.cfp_rule* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %132

106:                                              ; preds = %98
  %107 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %110 = call i32 @bcm_sf2_cfp_rule_insert(%struct.dsa_switch* %107, i32 %108, %struct.ethtool_rx_flow_spec* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load %struct.cfp_rule*, %struct.cfp_rule** %9, align 8
  %115 = call i32 @kfree(%struct.cfp_rule* %114)
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %4, align 4
  br label %132

117:                                              ; preds = %106
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.cfp_rule*, %struct.cfp_rule** %9, align 8
  %120 = getelementptr inbounds %struct.cfp_rule, %struct.cfp_rule* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.cfp_rule*, %struct.cfp_rule** %9, align 8
  %122 = getelementptr inbounds %struct.cfp_rule, %struct.cfp_rule* %121, i32 0, i32 2
  %123 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %124 = call i32 @memcpy(i32* %122, %struct.ethtool_rx_flow_spec* %123, i32 32)
  %125 = load %struct.cfp_rule*, %struct.cfp_rule** %9, align 8
  %126 = getelementptr inbounds %struct.cfp_rule, %struct.cfp_rule* %125, i32 0, i32 1
  %127 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %128 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = call i32 @list_add_tail(i32* %126, i32* %129)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %117, %113, %103, %95, %85, %69, %50, %35
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i64 @bcm_sf2_cfp_rule_size(%struct.bcm_sf2_priv*) #1

declare dso_local i32 @bcm_sf2_cfp_rule_cmp(%struct.bcm_sf2_priv*, i32, %struct.ethtool_rx_flow_spec*) #1

declare dso_local %struct.cfp_rule* @kzalloc(i32, i32) #1

declare dso_local i32 @bcm_sf2_cfp_rule_insert(%struct.dsa_switch*, i32, %struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @kfree(%struct.cfp_rule*) #1

declare dso_local i32 @memcpy(i32*, %struct.ethtool_rx_flow_spec*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
