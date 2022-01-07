; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.ionic_lif = type { %struct.ionic* }
%struct.ionic = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IONIC_PORT_PAUSE_TYPE_LINK = common dso_local global i32 0, align 4
@IONIC_PAUSE_F_RX = common dso_local global i32 0, align 4
@IONIC_PAUSE_F_TX = common dso_local global i32 0, align 4
@DEVCMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @ionic_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.ionic_lif*, align 8
  %7 = alloca %struct.ionic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ionic_lif* @netdev_priv(%struct.net_device* %10)
  store %struct.ionic_lif* %11, %struct.ionic_lif** %6, align 8
  %12 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %13 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %12, i32 0, i32 0
  %14 = load %struct.ionic*, %struct.ionic** %13, align 8
  store %struct.ionic* %14, %struct.ionic** %7, align 8
  %15 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %75

22:                                               ; preds = %2
  %23 = load i32, i32* @IONIC_PORT_PAUSE_TYPE_LINK, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @IONIC_PAUSE_F_RX, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @IONIC_PAUSE_F_TX, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %44 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %43, i32 0, i32 0
  %45 = load %struct.ionic*, %struct.ionic** %44, align 8
  %46 = getelementptr inbounds %struct.ionic, %struct.ionic* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %42, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %75

54:                                               ; preds = %41
  %55 = load %struct.ionic*, %struct.ionic** %7, align 8
  %56 = getelementptr inbounds %struct.ionic, %struct.ionic* %55, i32 0, i32 0
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %59 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %58, i32 0, i32 0
  %60 = load %struct.ionic*, %struct.ionic** %59, align 8
  %61 = getelementptr inbounds %struct.ionic, %struct.ionic* %60, i32 0, i32 1
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @ionic_dev_cmd_port_pause(%struct.TYPE_6__* %61, i32 %62)
  %64 = load %struct.ionic*, %struct.ionic** %7, align 8
  %65 = load i32, i32* @DEVCMD_TIMEOUT, align 4
  %66 = call i32 @ionic_dev_cmd_wait(%struct.ionic* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.ionic*, %struct.ionic** %7, align 8
  %68 = getelementptr inbounds %struct.ionic, %struct.ionic* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %54
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %72, %53, %19
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.ionic_lif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ionic_dev_cmd_port_pause(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ionic_dev_cmd_wait(%struct.ionic*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
