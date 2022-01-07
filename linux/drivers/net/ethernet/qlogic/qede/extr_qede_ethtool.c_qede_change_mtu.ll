; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qede_dev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.qede_reload_args = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Configuring MTU size of %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@NETIF_F_GRO_HW = common dso_local global i32 0, align 4
@qede_update_mtu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qede_reload_args, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.qede_dev* %8, %struct.qede_dev** %5, align 8
  %9 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %10 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %11 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @DP_VERBOSE(%struct.qede_dev* %9, i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds %struct.qede_reload_args, %struct.qede_reload_args* %6, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds %struct.qede_reload_args, %struct.qede_reload_args* %6, i32 0, i32 0
  store i32* @qede_update_mtu, i32** %29, align 8
  %30 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %31 = call i32 @qede_reload(%struct.qede_dev* %30, %struct.qede_reload_args* %6, i32 0)
  %32 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %33 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (i32, i32)*, i32 (i32, i32)** %37, align 8
  %39 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %40 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 %38(i32 %41, i32 %42)
  ret i32 0
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32) #1

declare dso_local i32 @qede_reload(%struct.qede_dev*, %struct.qede_reload_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
