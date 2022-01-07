; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_init_8125.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_init_8125.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@OCP_STD_PHY_BASE = common dso_local global i32 0, align 4
@MISC = common dso_local global i32 0, align 4
@RXDV_GATED_EN = common dso_local global i32 0, align 4
@rtl_rxtx_empty_cond = common dso_local global i32 0, align 4
@ChipCmd = common dso_local global i32 0, align 4
@CmdTxEnb = common dso_local global i32 0, align 4
@CmdRxEnb = common dso_local global i32 0, align 4
@MCU = common dso_local global i32 0, align 4
@NOW_IS_OOB = common dso_local global i32 0, align 4
@rtl_link_list_ready_cond = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_init_8125 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_init_8125(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load i32, i32* @OCP_STD_PHY_BASE, align 4
  %4 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %5 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %4, i32 0, i32 0
  store i32 %3, i32* %5, align 4
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %7 = load i32, i32* @MISC, align 4
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = load i32, i32* @MISC, align 4
  %10 = call i32 @RTL_R32(%struct.rtl8169_private* %8, i32 %9)
  %11 = load i32, i32* @RXDV_GATED_EN, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @RTL_W32(%struct.rtl8169_private* %6, i32 %7, i32 %12)
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %15 = call i32 @rtl_udelay_loop_wait_high(%struct.rtl8169_private* %14, i32* @rtl_rxtx_empty_cond, i32 100, i32 42)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %20 = load i32, i32* @ChipCmd, align 4
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %22 = load i32, i32* @ChipCmd, align 4
  %23 = call i32 @RTL_R8(%struct.rtl8169_private* %21, i32 %22)
  %24 = load i32, i32* @CmdTxEnb, align 4
  %25 = load i32, i32* @CmdRxEnb, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  %29 = call i32 @RTL_W8(%struct.rtl8169_private* %19, i32 %20, i32 %28)
  %30 = call i32 @msleep(i32 1)
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %32 = load i32, i32* @MCU, align 4
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %34 = load i32, i32* @MCU, align 4
  %35 = call i32 @RTL_R8(%struct.rtl8169_private* %33, i32 %34)
  %36 = load i32, i32* @NOW_IS_OOB, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @RTL_W8(%struct.rtl8169_private* %31, i32 %32, i32 %38)
  %40 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %41 = call i32 @BIT(i32 14)
  %42 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %40, i32 59614, i32 %41, i32 0)
  %43 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %44 = call i32 @rtl_udelay_loop_wait_high(%struct.rtl8169_private* %43, i32* @rtl_link_list_ready_cond, i32 100, i32 42)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %18
  br label %56

47:                                               ; preds = %18
  %48 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %49 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %48, i32 49322, i32 2000)
  %50 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %51 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %50, i32 49318, i32 336)
  %52 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %53 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %52, i32 49182, i32 21845)
  %54 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %55 = call i32 @rtl_udelay_loop_wait_high(%struct.rtl8169_private* %54, i32* @rtl_link_list_ready_cond, i32 100, i32 42)
  br label %56

56:                                               ; preds = %47, %46, %17
  ret void
}

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_udelay_loop_wait_high(%struct.rtl8169_private*, i32*, i32, i32) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @r8168_mac_ocp_modify(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @r8168_mac_ocp_write(%struct.rtl8169_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
