; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mac_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mac_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink_config = type { i32 }
%struct.phylink_link_state = type { i64, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.mvneta_port = type { i32 }

@MVNETA_GMAC_STATUS = common dso_local global i32 0, align 4
@MVNETA_GMAC_SPEED_1000 = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_2500BASEX = common dso_local global i64 0, align 8
@SPEED_2500 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@MVNETA_GMAC_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@MVNETA_GMAC_AN_COMPLETE = common dso_local global i32 0, align 4
@MVNETA_GMAC_LINK_UP = common dso_local global i32 0, align 4
@MVNETA_GMAC_FULL_DUPLEX = common dso_local global i32 0, align 4
@MVNETA_GMAC_RX_FLOW_CTRL_ENABLE = common dso_local global i32 0, align 4
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@MVNETA_GMAC_TX_FLOW_CTRL_ENABLE = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phylink_config*, %struct.phylink_link_state*)* @mvneta_mac_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_mac_link_state(%struct.phylink_config* %0, %struct.phylink_link_state* %1) #0 {
  %3 = alloca %struct.phylink_config*, align 8
  %4 = alloca %struct.phylink_link_state*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mvneta_port*, align 8
  %7 = alloca i32, align 4
  store %struct.phylink_config* %0, %struct.phylink_config** %3, align 8
  store %struct.phylink_link_state* %1, %struct.phylink_link_state** %4, align 8
  %8 = load %struct.phylink_config*, %struct.phylink_config** %3, align 8
  %9 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.net_device* @to_net_dev(i32 %10)
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.mvneta_port* @netdev_priv(%struct.net_device* %12)
  store %struct.mvneta_port* %13, %struct.mvneta_port** %6, align 8
  %14 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %15 = load i32, i32* @MVNETA_GMAC_STATUS, align 4
  %16 = call i32 @mvreg_read(%struct.mvneta_port* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MVNETA_GMAC_SPEED_1000, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %23 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PHY_INTERFACE_MODE_2500BASEX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @SPEED_2500, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @SPEED_1000, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %34 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  br label %49

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MVNETA_GMAC_SPEED_100, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @SPEED_100, align 4
  %42 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %43 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  br label %48

44:                                               ; preds = %35
  %45 = load i32, i32* @SPEED_10, align 4
  %46 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %47 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MVNETA_GMAC_AN_COMPLETE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %58 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MVNETA_GMAC_LINK_UP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %67 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @MVNETA_GMAC_FULL_DUPLEX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %76 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %78 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %77, i32 0, i32 4
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @MVNETA_GMAC_RX_FLOW_CTRL_ENABLE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %49
  %84 = load i32, i32* @MLO_PAUSE_RX, align 4
  %85 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %86 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %49
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @MVNETA_GMAC_TX_FLOW_CTRL_ENABLE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @MLO_PAUSE_TX, align 4
  %96 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %97 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %89
  ret i32 1
}

declare dso_local %struct.net_device* @to_net_dev(i32) #1

declare dso_local %struct.mvneta_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvreg_read(%struct.mvneta_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
