; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-core.c_phy_resolve_aneg_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-core.c_phy_resolve_aneg_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32, i8*, i8* }

@DUPLEX_FULL = common dso_local global i64 0, align 8
@ETHTOOL_LINK_MODE_Pause_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Asym_Pause_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_resolve_aneg_pause(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %3 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %4 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DUPLEX_FULL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load i32, i32* @ETHTOOL_LINK_MODE_Pause_BIT, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @linkmode_test_bit(i32 %9, i32 %12)
  %14 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @ETHTOOL_LINK_MODE_Asym_Pause_BIT, align 4
  %17 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @linkmode_test_bit(i32 %16, i32 %19)
  %21 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %8, %1
  ret void
}

declare dso_local i8* @linkmode_test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
