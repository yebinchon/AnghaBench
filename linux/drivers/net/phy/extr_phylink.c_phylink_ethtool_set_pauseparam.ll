; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_ethtool_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_ethtool_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i32, i32, i32, i32, %struct.phylink_link_state }
%struct.phylink_link_state = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }

@Pause = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLO_PAUSE_AN = common dso_local global i32 0, align 4
@MLO_PAUSE_TXRX_MASK = common dso_local global i32 0, align 4
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4
@PHYLINK_DISABLE_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phylink_ethtool_set_pauseparam(%struct.phylink* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phylink*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.phylink_link_state*, align 8
  store %struct.phylink* %0, %struct.phylink** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %7 = load %struct.phylink*, %struct.phylink** %4, align 8
  %8 = getelementptr inbounds %struct.phylink, %struct.phylink* %7, i32 0, i32 4
  store %struct.phylink_link_state* %8, %struct.phylink_link_state** %6, align 8
  %9 = call i32 (...) @ASSERT_RTNL()
  %10 = load %struct.phylink*, %struct.phylink** %4, align 8
  %11 = getelementptr inbounds %struct.phylink, %struct.phylink* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @Pause, align 4
  %14 = call i32 @phylink_test(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load %struct.phylink*, %struct.phylink** %4, align 8
  %18 = getelementptr inbounds %struct.phylink, %struct.phylink* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @Asym_Pause, align 4
  %21 = call i32 @phylink_test(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %128

26:                                               ; preds = %16, %2
  %27 = load %struct.phylink*, %struct.phylink** %4, align 8
  %28 = getelementptr inbounds %struct.phylink, %struct.phylink* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @Asym_Pause, align 4
  %31 = call i32 @phylink_test(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %26
  %34 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %128

49:                                               ; preds = %38, %33, %26
  %50 = load i32, i32* @MLO_PAUSE_AN, align 4
  %51 = load i32, i32* @MLO_PAUSE_TXRX_MASK, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %55 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %49
  %63 = load i32, i32* @MLO_PAUSE_AN, align 4
  %64 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %65 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %49
  %69 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @MLO_PAUSE_RX, align 4
  %75 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %76 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @MLO_PAUSE_TX, align 4
  %86 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %87 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* @PHYLINK_DISABLE_STOPPED, align 4
  %92 = load %struct.phylink*, %struct.phylink** %4, align 8
  %93 = getelementptr inbounds %struct.phylink, %struct.phylink* %92, i32 0, i32 2
  %94 = call i32 @test_bit(i32 %91, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %127, label %96

96:                                               ; preds = %90
  %97 = load %struct.phylink*, %struct.phylink** %4, align 8
  %98 = getelementptr inbounds %struct.phylink, %struct.phylink* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %126 [
    i32 128, label %100
    i32 130, label %113
    i32 129, label %120
  ]

100:                                              ; preds = %96
  %101 = load %struct.phylink*, %struct.phylink** %4, align 8
  %102 = getelementptr inbounds %struct.phylink, %struct.phylink* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.phylink*, %struct.phylink** %4, align 8
  %107 = getelementptr inbounds %struct.phylink, %struct.phylink* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @netif_carrier_off(i32 %108)
  br label %110

110:                                              ; preds = %105, %100
  %111 = load %struct.phylink*, %struct.phylink** %4, align 8
  %112 = call i32 @phylink_run_resolve(%struct.phylink* %111)
  br label %126

113:                                              ; preds = %96
  %114 = load %struct.phylink*, %struct.phylink** %4, align 8
  %115 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %116 = call i32 @phylink_resolve_flow(%struct.phylink* %114, %struct.phylink_link_state* %115)
  %117 = load %struct.phylink*, %struct.phylink** %4, align 8
  %118 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %119 = call i32 @phylink_mac_config(%struct.phylink* %117, %struct.phylink_link_state* %118)
  br label %126

120:                                              ; preds = %96
  %121 = load %struct.phylink*, %struct.phylink** %4, align 8
  %122 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %123 = call i32 @phylink_mac_config(%struct.phylink* %121, %struct.phylink_link_state* %122)
  %124 = load %struct.phylink*, %struct.phylink** %4, align 8
  %125 = call i32 @phylink_mac_an_restart(%struct.phylink* %124)
  br label %126

126:                                              ; preds = %96, %120, %113, %110
  br label %127

127:                                              ; preds = %126, %90
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %46, %23
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @phylink_test(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @phylink_run_resolve(%struct.phylink*) #1

declare dso_local i32 @phylink_resolve_flow(%struct.phylink*, %struct.phylink_link_state*) #1

declare dso_local i32 @phylink_mac_config(%struct.phylink*, %struct.phylink_link_state*) #1

declare dso_local i32 @phylink_mac_an_restart(%struct.phylink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
