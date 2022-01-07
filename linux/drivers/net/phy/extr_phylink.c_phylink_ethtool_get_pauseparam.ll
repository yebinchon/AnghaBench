; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_ethtool_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_ethtool_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }

@MLO_PAUSE_AN = common dso_local global i32 0, align 4
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phylink_ethtool_get_pauseparam(%struct.phylink* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.phylink*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  store %struct.phylink* %0, %struct.phylink** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %5 = call i32 (...) @ASSERT_RTNL()
  %6 = load %struct.phylink*, %struct.phylink** %3, align 8
  %7 = getelementptr inbounds %struct.phylink, %struct.phylink* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MLO_PAUSE_AN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.phylink*, %struct.phylink** %3, align 8
  %19 = getelementptr inbounds %struct.phylink, %struct.phylink* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MLO_PAUSE_RX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.phylink*, %struct.phylink** %3, align 8
  %31 = getelementptr inbounds %struct.phylink, %struct.phylink* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MLO_PAUSE_TX, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
