; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_netdev_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_netdev_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }

@WAKE_PHY = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@Config3 = common dso_local global i32 0, align 4
@LinkUp = common dso_local global i32 0, align 4
@MagicPacket = common dso_local global i32 0, align 4
@Config5 = common dso_local global i32 0, align 4
@UWF = common dso_local global i32 0, align 4
@BWF = common dso_local global i32 0, align 4
@MWF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp_private*, %struct.ethtool_wolinfo*)* @netdev_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_get_wol(%struct.cp_private* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.cp_private*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.cp_private* %0, %struct.cp_private** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %7 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @WAKE_PHY, align 4
  %9 = load i32, i32* @WAKE_BCAST, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WAKE_MAGIC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @WAKE_MCAST, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WAKE_UCAST, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %20 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %83

24:                                               ; preds = %2
  %25 = load i32, i32* @Config3, align 4
  %26 = call i32 @cpr8(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @LinkUp, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @WAKE_PHY, align 4
  %33 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %24
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MagicPacket, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @WAKE_MAGIC, align 4
  %44 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %37
  store i32 0, i32* %5, align 4
  %49 = load i32, i32* @Config5, align 4
  %50 = call i32 @cpr8(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @UWF, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* @WAKE_UCAST, align 4
  %57 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %58 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %48
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @BWF, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @WAKE_BCAST, align 4
  %68 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @MWF, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @WAKE_MCAST, align 4
  %79 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %80 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %23, %77, %72
  ret void
}

declare dso_local i32 @cpr8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
