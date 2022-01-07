; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_separate_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_separate_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i32 }

@eth_stp_addr = common dso_local global i32 0, align 4
@LAN9303_SWE_PORT_MIRROR = common dso_local global i32 0, align 4
@LAN9303_SWE_PORT_MIRROR_SNIFFER_PORT0 = common dso_local global i32 0, align 4
@LAN9303_SWE_PORT_MIRROR_MIRRORED_PORT1 = common dso_local global i32 0, align 4
@LAN9303_SWE_PORT_MIRROR_MIRRORED_PORT2 = common dso_local global i32 0, align 4
@LAN9303_SWE_PORT_MIRROR_ENABLE_RX_MIRRORING = common dso_local global i32 0, align 4
@LAN9303_SWE_PORT_MIRROR_SNIFF_ALL = common dso_local global i32 0, align 4
@LAN9303_SWE_PORT_STATE = common dso_local global i32 0, align 4
@LAN9303_SWE_PORT_STATE_FORWARDING_PORT0 = common dso_local global i32 0, align 4
@LAN9303_SWE_PORT_STATE_BLOCKING_PORT1 = common dso_local global i32 0, align 4
@LAN9303_SWE_PORT_STATE_BLOCKING_PORT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan9303*)* @lan9303_separate_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_separate_ports(%struct.lan9303* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan9303*, align 8
  %4 = alloca i32, align 4
  store %struct.lan9303* %0, %struct.lan9303** %3, align 8
  %5 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %6 = load i32, i32* @eth_stp_addr, align 4
  %7 = call i32 @lan9303_alr_del_port(%struct.lan9303* %5, i32 %6, i32 0)
  %8 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %9 = load i32, i32* @LAN9303_SWE_PORT_MIRROR, align 4
  %10 = load i32, i32* @LAN9303_SWE_PORT_MIRROR_SNIFFER_PORT0, align 4
  %11 = load i32, i32* @LAN9303_SWE_PORT_MIRROR_MIRRORED_PORT1, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @LAN9303_SWE_PORT_MIRROR_MIRRORED_PORT2, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @LAN9303_SWE_PORT_MIRROR_ENABLE_RX_MIRRORING, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @LAN9303_SWE_PORT_MIRROR_SNIFF_ALL, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @lan9303_write_switch_reg(%struct.lan9303* %8, i32 %9, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %26 = load i32, i32* @LAN9303_SWE_PORT_STATE, align 4
  %27 = load i32, i32* @LAN9303_SWE_PORT_STATE_FORWARDING_PORT0, align 4
  %28 = load i32, i32* @LAN9303_SWE_PORT_STATE_BLOCKING_PORT1, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @LAN9303_SWE_PORT_STATE_BLOCKING_PORT2, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @lan9303_write_switch_reg(%struct.lan9303* %25, i32 %26, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %24, %22
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @lan9303_alr_del_port(%struct.lan9303*, i32, i32) #1

declare dso_local i32 @lan9303_write_switch_reg(%struct.lan9303*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
