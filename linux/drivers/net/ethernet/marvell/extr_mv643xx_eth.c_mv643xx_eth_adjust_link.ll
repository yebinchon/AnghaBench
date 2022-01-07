; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.mv643xx_eth_private = type { i32 }

@PORT_SERIAL_CONTROL = common dso_local global i32 0, align 4
@FORCE_LINK_PASS = common dso_local global i32 0, align 4
@DISABLE_AUTO_NEG_SPEED_GMII = common dso_local global i32 0, align 4
@DISABLE_AUTO_NEG_FOR_FLOW_CTRL = common dso_local global i32 0, align 4
@DISABLE_AUTO_NEG_FOR_DUPLEX = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@SET_GMII_SPEED_TO_1000 = common dso_local global i32 0, align 4
@SET_FULL_DUPLEX_MODE = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SET_MII_SPEED_TO_100 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mv643xx_eth_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv643xx_eth_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %6)
  store %struct.mv643xx_eth_private* %7, %struct.mv643xx_eth_private** %3, align 8
  %8 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %9 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %10 = call i32 @rdlp(%struct.mv643xx_eth_private* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @FORCE_LINK_PASS, align 4
  %12 = load i32, i32* @DISABLE_AUTO_NEG_SPEED_GMII, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @DISABLE_AUTO_NEG_FOR_FLOW_CTRL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @DISABLE_AUTO_NEG_FOR_DUPLEX, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AUTONEG_ENABLE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %87

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPEED_1000, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load i32, i32* @SET_GMII_SPEED_TO_1000, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @SET_FULL_DUPLEX_MODE, align 4
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  br label %87

48:                                               ; preds = %30
  %49 = load i32, i32* @SET_GMII_SPEED_TO_1000, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SPEED_100, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load i32, i32* @SET_MII_SPEED_TO_100, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %69

64:                                               ; preds = %48
  %65 = load i32, i32* @SET_MII_SPEED_TO_100, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %60
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DUPLEX_FULL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i32, i32* @SET_FULL_DUPLEX_MODE, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  br label %86

81:                                               ; preds = %69
  %82 = load i32, i32* @SET_FULL_DUPLEX_MODE, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %77
  br label %87

87:                                               ; preds = %86, %41, %25
  %88 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %89 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @wrlp(%struct.mv643xx_eth_private* %88, i32 %89, i32 %90)
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
