; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CPCMD_MASK = common dso_local global i32 0, align 4
@CPlusCmd = common dso_local global i32 0, align 4
@RTL_GIGA_MAC_VER_06 = common dso_local global i64 0, align 8
@ChipCmd = common dso_local global i32 0, align 4
@CmdTxEnb = common dso_local global i32 0, align 4
@CmdRxEnb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_unlock_config_regs(%struct.rtl8169_private* %3)
  %5 = load i32, i32* @CPCMD_MASK, align 4
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %7 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %11 = load i32, i32* @CPlusCmd, align 4
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %13 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @RTL_W16(%struct.rtl8169_private* %10, i32 %11, i32 %14)
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %17 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RTL_GIGA_MAC_VER_06, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %23 = call i32 @rtl_hw_start_8169(%struct.rtl8169_private* %22)
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %26 = call i64 @rtl_is_8125(%struct.rtl8169_private* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %30 = call i32 @rtl_hw_start_8125(%struct.rtl8169_private* %29)
  br label %34

31:                                               ; preds = %24
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %33 = call i32 @rtl_hw_start_8168(%struct.rtl8169_private* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %37 = call i32 @rtl_set_rx_max_size(%struct.rtl8169_private* %36)
  %38 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %39 = call i32 @rtl_set_rx_tx_desc_registers(%struct.rtl8169_private* %38)
  %40 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %41 = call i32 @rtl_lock_config_regs(%struct.rtl8169_private* %40)
  %42 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %43 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %44 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rtl_jumbo_config(%struct.rtl8169_private* %42, i32 %47)
  %49 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %50 = load i32, i32* @CPlusCmd, align 4
  %51 = call i32 @RTL_R16(%struct.rtl8169_private* %49, i32 %50)
  %52 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %53 = load i32, i32* @ChipCmd, align 4
  %54 = load i32, i32* @CmdTxEnb, align 4
  %55 = load i32, i32* @CmdRxEnb, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @RTL_W8(%struct.rtl8169_private* %52, i32 %53, i32 %56)
  %58 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %59 = call i32 @rtl_init_rxcfg(%struct.rtl8169_private* %58)
  %60 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %61 = call i32 @rtl_set_tx_config_registers(%struct.rtl8169_private* %60)
  %62 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %63 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = call i32 @rtl_set_rx_mode(%struct.TYPE_2__* %64)
  %66 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %67 = call i32 @rtl_irq_enable(%struct.rtl8169_private* %66)
  ret void
}

declare dso_local i32 @rtl_unlock_config_regs(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W16(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_hw_start_8169(%struct.rtl8169_private*) #1

declare dso_local i64 @rtl_is_8125(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_hw_start_8125(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_hw_start_8168(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_set_rx_max_size(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_set_rx_tx_desc_registers(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_lock_config_regs(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_jumbo_config(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @RTL_R16(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_init_rxcfg(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_set_tx_config_registers(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_set_rx_mode(%struct.TYPE_2__*) #1

declare dso_local i32 @rtl_irq_enable(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
