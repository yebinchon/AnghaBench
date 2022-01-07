; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_init_pscr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_init_pscr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { %struct.net_device* }
%struct.net_device = type { i32 }

@PORT_SERIAL_CONTROL = common dso_local global i32 0, align 4
@SERIAL_PORT_ENABLE = common dso_local global i32 0, align 4
@MAX_RX_PACKET_9700BYTE = common dso_local global i32 0, align 4
@SERIAL_PORT_CONTROL_RESERVED = common dso_local global i32 0, align 4
@DISABLE_AUTO_NEG_SPEED_GMII = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SET_GMII_SPEED_TO_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SET_MII_SPEED_TO_100 = common dso_local global i32 0, align 4
@DISABLE_AUTO_NEG_FOR_FLOW_CTRL = common dso_local global i32 0, align 4
@DISABLE_AUTO_NEG_FOR_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SET_FULL_DUPLEX_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*, i32, i32)* @init_pscr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pscr(%struct.mv643xx_eth_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mv643xx_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %10 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %13 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %14 = call i32 @rdlp(%struct.mv643xx_eth_private* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @SERIAL_PORT_ENABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i32, i32* @SERIAL_PORT_ENABLE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %25 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @wrlp(%struct.mv643xx_eth_private* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %3
  %29 = load i32, i32* @MAX_RX_PACKET_9700BYTE, align 4
  %30 = load i32, i32* @SERIAL_PORT_CONTROL_RESERVED, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %71, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @DISABLE_AUTO_NEG_SPEED_GMII, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SPEED_1000, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @SET_GMII_SPEED_TO_1000, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %56

47:                                               ; preds = %36
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SPEED_100, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @SET_MII_SPEED_TO_100, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32, i32* @DISABLE_AUTO_NEG_FOR_FLOW_CTRL, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @DISABLE_AUTO_NEG_FOR_DUPLEX, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @DUPLEX_FULL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i32, i32* @SET_FULL_DUPLEX_MODE, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %56
  br label %71

71:                                               ; preds = %70, %28
  %72 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %73 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @wrlp(%struct.mv643xx_eth_private* %72, i32 %73, i32 %74)
  ret void
}

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
