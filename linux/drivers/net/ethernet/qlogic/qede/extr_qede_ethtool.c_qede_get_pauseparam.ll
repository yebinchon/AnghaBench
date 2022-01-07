; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.qede_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct.qed_link_output*)* }
%struct.qed_link_output = type { i32 }

@QED_LINK_PAUSE_AUTONEG_ENABLE = common dso_local global i32 0, align 4
@QED_LINK_PAUSE_RX_ENABLE = common dso_local global i32 0, align 4
@QED_LINK_PAUSE_TX_ENABLE = common dso_local global i32 0, align 4
@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"ethtool_pauseparam: cmd %d  autoneg %d  rx_pause %d  tx_pause %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @qede_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qed_link_output, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.qede_dev* %8, %struct.qede_dev** %5, align 8
  %9 = call i32 @memset(%struct.qed_link_output* %6, i32 0, i32 4)
  %10 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %11 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (i32, %struct.qed_link_output*)*, i32 (i32, %struct.qed_link_output*)** %15, align 8
  %17 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %18 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %16(i32 %19, %struct.qed_link_output* %6)
  %21 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @QED_LINK_PAUSE_AUTONEG_ENABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %2
  %30 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @QED_LINK_PAUSE_RX_ENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %29
  %39 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @QED_LINK_PAUSE_TX_ENABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %45, i32 0, i32 2
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %49 = load i32, i32* @QED_MSG_DEBUG, align 4
  %50 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DP_VERBOSE(%struct.qede_dev* %48, i32 %49, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32 %58, i32 %61)
  ret void
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.qed_link_output*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
