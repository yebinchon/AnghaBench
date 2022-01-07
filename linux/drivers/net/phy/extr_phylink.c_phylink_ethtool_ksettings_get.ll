; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_ethtool_ksettings_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_ethtool_ksettings_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i32, i64, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.phylink_link_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phylink_ethtool_ksettings_get(%struct.phylink* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.phylink*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.phylink_link_state, align 4
  store %struct.phylink* %0, %struct.phylink** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %6 = call i32 (...) @ASSERT_RTNL()
  %7 = load %struct.phylink*, %struct.phylink** %3, align 8
  %8 = getelementptr inbounds %struct.phylink, %struct.phylink* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.phylink*, %struct.phylink** %3, align 8
  %13 = getelementptr inbounds %struct.phylink, %struct.phylink* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %16 = call i32 @phy_ethtool_ksettings_get(i64 %14, %struct.ethtool_link_ksettings* %15)
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.phylink*, %struct.phylink** %3, align 8
  %19 = getelementptr inbounds %struct.phylink, %struct.phylink* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %17, %11
  %25 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.phylink*, %struct.phylink** %3, align 8
  %30 = getelementptr inbounds %struct.phylink, %struct.phylink* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @linkmode_copy(i32 %28, i32 %31)
  %33 = load %struct.phylink*, %struct.phylink** %3, align 8
  %34 = getelementptr inbounds %struct.phylink, %struct.phylink* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %52 [
    i32 129, label %36
    i32 128, label %41
  ]

36:                                               ; preds = %24
  %37 = load %struct.phylink*, %struct.phylink** %3, align 8
  %38 = call i32 @phylink_get_fixed_state(%struct.phylink* %37, %struct.phylink_link_state* %5)
  %39 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %40 = call i32 @phylink_get_ksettings(%struct.phylink_link_state* %5, %struct.ethtool_link_ksettings* %39)
  br label %52

41:                                               ; preds = %24
  %42 = load %struct.phylink*, %struct.phylink** %3, align 8
  %43 = getelementptr inbounds %struct.phylink, %struct.phylink* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %52

47:                                               ; preds = %41
  %48 = load %struct.phylink*, %struct.phylink** %3, align 8
  %49 = call i32 @phylink_get_mac_state(%struct.phylink* %48, %struct.phylink_link_state* %5)
  %50 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %51 = call i32 @phylink_get_ksettings(%struct.phylink_link_state* %5, %struct.ethtool_link_ksettings* %50)
  br label %52

52:                                               ; preds = %24, %47, %46, %36
  ret i32 0
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @phy_ethtool_ksettings_get(i64, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @linkmode_copy(i32, i32) #1

declare dso_local i32 @phylink_get_fixed_state(%struct.phylink*, %struct.phylink_link_state*) #1

declare dso_local i32 @phylink_get_ksettings(%struct.phylink_link_state*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @phylink_get_mac_state(%struct.phylink*, %struct.phylink_link_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
