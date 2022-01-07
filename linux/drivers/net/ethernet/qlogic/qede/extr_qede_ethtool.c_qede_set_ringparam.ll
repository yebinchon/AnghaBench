; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64 }
%struct.qede_dev = type { i64, i64 }

@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Set ring params command parameters: rx_pending = %d, tx_pending = %d\0A\00", align 1
@NUM_RX_BDS_MAX = common dso_local global i64 0, align 8
@NUM_RX_BDS_MIN = common dso_local global i64 0, align 8
@NUM_TX_BDS_MAX = common dso_local global i64 0, align 8
@NUM_TX_BDS_MIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [91 x i8] c"Can only support Rx Buffer size [0%08x,...,0x%08x] and Tx Buffer size [0x%08x,...,0x%08x]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @qede_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.qede_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.qede_dev* %8, %struct.qede_dev** %6, align 8
  %9 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %10 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %11 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (%struct.qede_dev*, i32, i8*, i64, i64, ...) @DP_VERBOSE(%struct.qede_dev* %9, i32 %12, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %18)
  %20 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NUM_RX_BDS_MAX, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %43, label %25

25:                                               ; preds = %2
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NUM_RX_BDS_MIN, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NUM_TX_BDS_MAX, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NUM_TX_BDS_MIN, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37, %31, %25, %2
  %44 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %45 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %46 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %47 = or i32 %45, %46
  %48 = load i64, i64* @NUM_RX_BDS_MIN, align 8
  %49 = load i64, i64* @NUM_RX_BDS_MAX, align 8
  %50 = load i64, i64* @NUM_TX_BDS_MIN, align 8
  %51 = load i64, i64* @NUM_TX_BDS_MAX, align 8
  %52 = call i32 (%struct.qede_dev*, i32, i8*, i64, i64, ...) @DP_VERBOSE(%struct.qede_dev* %44, i32 %47, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %49, i64 %50, i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %68

55:                                               ; preds = %37
  %56 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %60 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %65 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %67 = call i32 @qede_reload(%struct.qede_dev* %66, i32* null, i32 0)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %55, %43
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i64, i64, ...) #1

declare dso_local i32 @qede_reload(%struct.qede_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
