; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_enable_processing_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_enable_processing_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i32 }

@LAN9303_MAC_RX_CFG_0 = common dso_local global i32 0, align 4
@LAN9303_MAC_RX_CFG_X_REJECT_MAC_TYPES = common dso_local global i32 0, align 4
@LAN9303_MAC_RX_CFG_X_RX_ENABLE = common dso_local global i32 0, align 4
@LAN9303_MAC_TX_CFG_0 = common dso_local global i32 0, align 4
@LAN9303_MAC_TX_CFG_X_TX_IFG_CONFIG_DEFAULT = common dso_local global i32 0, align 4
@LAN9303_MAC_TX_CFG_X_TX_PAD_ENABLE = common dso_local global i32 0, align 4
@LAN9303_MAC_TX_CFG_X_TX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan9303*, i32)* @lan9303_enable_processing_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_enable_processing_port(%struct.lan9303* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lan9303*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lan9303* %0, %struct.lan9303** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @LAN9303_MAC_RX_CFG_0, align 4
  %10 = load i32, i32* @LAN9303_MAC_RX_CFG_X_REJECT_MAC_TYPES, align 4
  %11 = load i32, i32* @LAN9303_MAC_RX_CFG_X_RX_ENABLE, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @lan9303_write_switch_port(%struct.lan9303* %7, i32 %8, i32 %9, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LAN9303_MAC_TX_CFG_0, align 4
  %22 = load i32, i32* @LAN9303_MAC_TX_CFG_X_TX_IFG_CONFIG_DEFAULT, align 4
  %23 = load i32, i32* @LAN9303_MAC_TX_CFG_X_TX_PAD_ENABLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @LAN9303_MAC_TX_CFG_X_TX_ENABLE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @lan9303_write_switch_port(%struct.lan9303* %19, i32 %20, i32 %21, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %18, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @lan9303_write_switch_port(%struct.lan9303*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
