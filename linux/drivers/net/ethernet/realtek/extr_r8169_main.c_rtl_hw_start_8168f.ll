; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168f.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@PCI_EXP_DEVCTL_READRQ_4096B = common dso_local global i32 0, align 4
@ERIAR_MASK_0011 = common dso_local global i32 0, align 4
@ERIAR_MASK_0001 = common dso_local global i32 0, align 4
@ERIAR_MASK_1111 = common dso_local global i32 0, align 4
@MCU = common dso_local global i32 0, align 4
@NOW_IS_OOB = common dso_local global i32 0, align 4
@DLLPR = common dso_local global i32 0, align 4
@PFM_EN = common dso_local global i32 0, align 4
@MISC = common dso_local global i32 0, align 4
@PWM_EN = common dso_local global i32 0, align 4
@Config5 = common dso_local global i32 0, align 4
@Spi_en = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8168f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8168f(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = load i32, i32* @PCI_EXP_DEVCTL_READRQ_4096B, align 4
  %7 = call i32 @rtl_tx_performance_tweak(%struct.rtl8169_private* %5, i32 %6)
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = load i32, i32* @ERIAR_MASK_0011, align 4
  %10 = call i32 @rtl_eri_write(%struct.rtl8169_private* %8, i32 192, i32 %9, i32 0)
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %12 = load i32, i32* @ERIAR_MASK_0011, align 4
  %13 = call i32 @rtl_eri_write(%struct.rtl8169_private* %11, i32 184, i32 %12, i32 0)
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %15 = call i32 @rtl_set_fifo_size(%struct.rtl8169_private* %14, i32 16, i32 16, i32 2, i32 6)
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %17 = call i32 @rtl_reset_packet_filter(%struct.rtl8169_private* %16)
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %19 = load i32, i32* @ERIAR_MASK_0001, align 4
  %20 = call i32 @BIT(i32 4)
  %21 = call i32 @rtl_eri_set_bits(%struct.rtl8169_private* %18, i32 432, i32 %19, i32 %20)
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %23 = load i32, i32* @ERIAR_MASK_0001, align 4
  %24 = call i32 @BIT(i32 4)
  %25 = call i32 @rtl_eri_set_bits(%struct.rtl8169_private* %22, i32 464, i32 %23, i32 %24)
  %26 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %27 = load i32, i32* @ERIAR_MASK_1111, align 4
  %28 = call i32 @rtl_eri_write(%struct.rtl8169_private* %26, i32 204, i32 %27, i32 80)
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %30 = load i32, i32* @ERIAR_MASK_1111, align 4
  %31 = call i32 @rtl_eri_write(%struct.rtl8169_private* %29, i32 208, i32 %30, i32 96)
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %33 = call i32 @rtl_disable_clock_request(%struct.rtl8169_private* %32)
  %34 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %35 = load i32, i32* @MCU, align 4
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %37 = load i32, i32* @MCU, align 4
  %38 = call i32 @RTL_R8(%struct.rtl8169_private* %36, i32 %37)
  %39 = load i32, i32* @NOW_IS_OOB, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = call i32 @RTL_W8(%struct.rtl8169_private* %34, i32 %35, i32 %41)
  %43 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %44 = load i32, i32* @DLLPR, align 4
  %45 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %46 = load i32, i32* @DLLPR, align 4
  %47 = call i32 @RTL_R8(%struct.rtl8169_private* %45, i32 %46)
  %48 = load i32, i32* @PFM_EN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @RTL_W8(%struct.rtl8169_private* %43, i32 %44, i32 %49)
  %51 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %52 = load i32, i32* @MISC, align 4
  %53 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %54 = load i32, i32* @MISC, align 4
  %55 = call i32 @RTL_R32(%struct.rtl8169_private* %53, i32 %54)
  %56 = load i32, i32* @PWM_EN, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @RTL_W32(%struct.rtl8169_private* %51, i32 %52, i32 %57)
  %59 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %60 = load i32, i32* @Config5, align 4
  %61 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %62 = load i32, i32* @Config5, align 4
  %63 = call i32 @RTL_R8(%struct.rtl8169_private* %61, i32 %62)
  %64 = load i32, i32* @Spi_en, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = call i32 @RTL_W8(%struct.rtl8169_private* %59, i32 %60, i32 %66)
  %68 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %69 = call i32 @rtl8168_config_eee_mac(%struct.rtl8169_private* %68)
  ret void
}

declare dso_local i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_tx_performance_tweak(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_eri_write(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @rtl_set_fifo_size(%struct.rtl8169_private*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl_reset_packet_filter(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_eri_set_bits(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_disable_clock_request(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl8168_config_eee_mac(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
