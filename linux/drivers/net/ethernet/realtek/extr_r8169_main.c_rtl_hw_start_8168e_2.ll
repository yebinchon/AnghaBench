; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168e_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168e_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ephy_info = type { i32, i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl_hw_start_8168e_2.e_info_8168e_2 = internal constant [4 x %struct.ephy_info] [%struct.ephy_info { i32 9, i32 0, i32 128 }, %struct.ephy_info { i32 25, i32 0, i32 548 }, %struct.ephy_info { i32 0, i32 0, i32 4 }, %struct.ephy_info { i32 12, i32 15856, i32 512 }], align 16
@ERIAR_MASK_0011 = common dso_local global i32 0, align 4
@ERIAR_MASK_1111 = common dso_local global i32 0, align 4
@ERIAR_MASK_0001 = common dso_local global i32 0, align 4
@MCU = common dso_local global i32 0, align 4
@NOW_IS_OOB = common dso_local global i32 0, align 4
@DLLPR = common dso_local global i32 0, align 4
@PFM_EN = common dso_local global i32 0, align 4
@MISC = common dso_local global i32 0, align 4
@PWM_EN = common dso_local global i32 0, align 4
@Config5 = common dso_local global i32 0, align 4
@Spi_en = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8168e_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8168e_2(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @rtl_ephy_init(%struct.rtl8169_private* %5, %struct.ephy_info* getelementptr inbounds ([4 x %struct.ephy_info], [4 x %struct.ephy_info]* @rtl_hw_start_8168e_2.e_info_8168e_2, i64 0, i64 0))
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = load i32, i32* @ERIAR_MASK_0011, align 4
  %9 = call i32 @rtl_eri_write(%struct.rtl8169_private* %7, i32 192, i32 %8, i32 0)
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %11 = load i32, i32* @ERIAR_MASK_0011, align 4
  %12 = call i32 @rtl_eri_write(%struct.rtl8169_private* %10, i32 184, i32 %11, i32 0)
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %14 = call i32 @rtl_set_fifo_size(%struct.rtl8169_private* %13, i32 16, i32 16, i32 2, i32 6)
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %16 = load i32, i32* @ERIAR_MASK_1111, align 4
  %17 = call i32 @rtl_eri_write(%struct.rtl8169_private* %15, i32 204, i32 %16, i32 80)
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %19 = load i32, i32* @ERIAR_MASK_1111, align 4
  %20 = call i32 @rtl_eri_write(%struct.rtl8169_private* %18, i32 208, i32 %19, i32 134152288)
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %22 = load i32, i32* @ERIAR_MASK_0001, align 4
  %23 = call i32 @BIT(i32 4)
  %24 = call i32 @rtl_eri_set_bits(%struct.rtl8169_private* %21, i32 432, i32 %22, i32 %23)
  %25 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %26 = load i32, i32* @ERIAR_MASK_0011, align 4
  %27 = call i32 @rtl_w0w1_eri(%struct.rtl8169_private* %25, i32 212, i32 %26, i32 3072, i32 65280)
  %28 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %29 = call i32 @rtl_disable_clock_request(%struct.rtl8169_private* %28)
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %31 = load i32, i32* @MCU, align 4
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %33 = load i32, i32* @MCU, align 4
  %34 = call i32 @RTL_R8(%struct.rtl8169_private* %32, i32 %33)
  %35 = load i32, i32* @NOW_IS_OOB, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @RTL_W8(%struct.rtl8169_private* %30, i32 %31, i32 %37)
  %39 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %40 = call i32 @rtl8168_config_eee_mac(%struct.rtl8169_private* %39)
  %41 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %42 = load i32, i32* @DLLPR, align 4
  %43 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %44 = load i32, i32* @DLLPR, align 4
  %45 = call i32 @RTL_R8(%struct.rtl8169_private* %43, i32 %44)
  %46 = load i32, i32* @PFM_EN, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @RTL_W8(%struct.rtl8169_private* %41, i32 %42, i32 %47)
  %49 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %50 = load i32, i32* @MISC, align 4
  %51 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %52 = load i32, i32* @MISC, align 4
  %53 = call i32 @RTL_R32(%struct.rtl8169_private* %51, i32 %52)
  %54 = load i32, i32* @PWM_EN, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @RTL_W32(%struct.rtl8169_private* %49, i32 %50, i32 %55)
  %57 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %58 = load i32, i32* @Config5, align 4
  %59 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %60 = load i32, i32* @Config5, align 4
  %61 = call i32 @RTL_R8(%struct.rtl8169_private* %59, i32 %60)
  %62 = load i32, i32* @Spi_en, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = call i32 @RTL_W8(%struct.rtl8169_private* %57, i32 %58, i32 %64)
  %66 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %67 = call i32 @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private* %66, i32 1)
  ret void
}

declare dso_local i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_ephy_init(%struct.rtl8169_private*, %struct.ephy_info*) #1

declare dso_local i32 @rtl_eri_write(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @rtl_set_fifo_size(%struct.rtl8169_private*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl_eri_set_bits(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_w0w1_eri(%struct.rtl8169_private*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl_disable_clock_request(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl8168_config_eee_mac(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
