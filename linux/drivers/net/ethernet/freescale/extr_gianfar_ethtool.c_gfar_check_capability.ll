; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_check_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_check_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rx_flow_spec = type { i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.gfar_private = type { i32 }

@FLOW_EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"User-specific data not supported!\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"VLAN-etype not supported!\0A\00", align 1
@IP_USER_FLOW = common dso_local global i32 0, align 4
@ETH_RX_NFC_IP4 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"IP-Version differing from IPv4 not supported!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_rx_flow_spec*, %struct.gfar_private*)* @gfar_check_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_check_capability(%struct.ethtool_rx_flow_spec* %0, %struct.gfar_private* %1) #0 {
  %3 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %4 = alloca %struct.gfar_private*, align 8
  store %struct.ethtool_rx_flow_spec* %0, %struct.ethtool_rx_flow_spec** %3, align 8
  store %struct.gfar_private* %1, %struct.gfar_private** %4, align 8
  %5 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %3, align 8
  %6 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @FLOW_EXT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %2
  %12 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %3, align 8
  %13 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %11
  %21 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %3, align 8
  %22 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20, %11
  %30 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %31 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netdev_warn(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %20
  %35 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %3, align 8
  %36 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = xor i32 %38, -1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %43 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @netdev_warn(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %34
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %3, align 8
  %49 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IP_USER_FLOW, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %3, align 8
  %55 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ETH_RX_NFC_IP4, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %63 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @netdev_warn(i32 %64, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %53
  br label %67

67:                                               ; preds = %66, %47
  ret i32 0
}

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
