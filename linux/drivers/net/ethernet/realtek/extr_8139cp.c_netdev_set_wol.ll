; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_netdev_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_netdev_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i32 }
%struct.ethtool_wolinfo = type { i32 }

@Config3 = common dso_local global i32 0, align 4
@LinkUp = common dso_local global i32 0, align 4
@MagicPacket = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@Cfg9346 = common dso_local global i32 0, align 4
@Cfg9346_Unlock = common dso_local global i32 0, align 4
@Cfg9346_Lock = common dso_local global i32 0, align 4
@Config5 = common dso_local global i32 0, align 4
@UWF = common dso_local global i32 0, align 4
@MWF = common dso_local global i32 0, align 4
@BWF = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cp_private*, %struct.ethtool_wolinfo*)* @netdev_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_set_wol(%struct.cp_private* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.cp_private*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.cp_private* %0, %struct.cp_private** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load i32, i32* @Config3, align 4
  %7 = call i32 @cpr8(i32 %6)
  %8 = load i32, i32* @LinkUp, align 4
  %9 = load i32, i32* @MagicPacket, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %7, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @WAKE_PHY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @LinkUp, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WAKE_MAGIC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @MagicPacket, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* @Cfg9346, align 4
  %42 = load i32, i32* @Cfg9346_Unlock, align 4
  %43 = call i32 @cpw8(i32 %41, i32 %42)
  %44 = load i32, i32* @Config3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @cpw8(i32 %44, i32 %45)
  %47 = load i32, i32* @Cfg9346, align 4
  %48 = load i32, i32* @Cfg9346_Lock, align 4
  %49 = call i32 @cpw8(i32 %47, i32 %48)
  store i32 0, i32* %5, align 4
  %50 = load i32, i32* @Config5, align 4
  %51 = call i32 @cpr8(i32 %50)
  %52 = load i32, i32* @UWF, align 4
  %53 = load i32, i32* @MWF, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @BWF, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %51, %57
  store i32 %58, i32* %5, align 4
  %59 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %40
  %64 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %65 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @WAKE_UCAST, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @UWF, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %63
  %75 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @WAKE_BCAST, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* @BWF, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %74
  %86 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %87 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @WAKE_MCAST, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @MWF, align 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %85
  br label %97

97:                                               ; preds = %96, %40
  %98 = load i32, i32* @Config5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @cpw8(i32 %98, i32 %99)
  %101 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %102 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  %107 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %108 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  ret i32 0
}

declare dso_local i32 @cpr8(i32) #1

declare dso_local i32 @cpw8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
