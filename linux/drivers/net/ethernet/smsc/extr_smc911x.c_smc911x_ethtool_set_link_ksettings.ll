; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc911x.c_smc911x_ethtool_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc911x.c_smc911x_ethtool_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.smc911x_local = type { i64, i32, i32, i32 }

@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i64 0, align 8
@PORT_AUI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @smc911x_ethtool_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc911x_ethtool_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.smc911x_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.smc911x_local* @netdev_priv(%struct.net_device* %9)
  store %struct.smc911x_local* %10, %struct.smc911x_local** %6, align 8
  %11 = load %struct.smc911x_local*, %struct.smc911x_local** %6, align 8
  %12 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.smc911x_local*, %struct.smc911x_local** %6, align 8
  %17 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %16, i32 0, i32 2
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.smc911x_local*, %struct.smc911x_local** %6, align 8
  %21 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %20, i32 0, i32 3
  %22 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %23 = call i32 @mii_ethtool_set_link_ksettings(i32* %21, %struct.ethtool_link_ksettings* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.smc911x_local*, %struct.smc911x_local** %6, align 8
  %25 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %24, i32 0, i32 2
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %83

28:                                               ; preds = %2
  %29 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AUTONEG_DISABLE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %70, label %35

35:                                               ; preds = %28
  %36 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPEED_10, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %70, label %42

42:                                               ; preds = %35
  %43 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DUPLEX_HALF, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DUPLEX_FULL, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %70, label %56

56:                                               ; preds = %49, %42
  %57 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PORT_TP, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PORT_AUI, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63, %49, %35, %28
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %85

73:                                               ; preds = %63, %56
  %74 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DUPLEX_FULL, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load %struct.smc911x_local*, %struct.smc911x_local** %6, align 8
  %82 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %73, %15
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %70
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.smc911x_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mii_ethtool_set_link_ksettings(i32*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
