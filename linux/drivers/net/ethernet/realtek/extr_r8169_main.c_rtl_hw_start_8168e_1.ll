; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168e_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168e_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ephy_info = type { i32, i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl_hw_start_8168e_1.e_info_8168e_1 = internal constant [13 x %struct.ephy_info] [%struct.ephy_info { i32 0, i32 512, i32 256 }, %struct.ephy_info { i32 0, i32 0, i32 4 }, %struct.ephy_info { i32 6, i32 2, i32 1 }, %struct.ephy_info { i32 6, i32 0, i32 48 }, %struct.ephy_info { i32 7, i32 0, i32 8192 }, %struct.ephy_info { i32 0, i32 0, i32 32 }, %struct.ephy_info { i32 3, i32 22528, i32 8192 }, %struct.ephy_info { i32 3, i32 0, i32 1 }, %struct.ephy_info { i32 1, i32 2048, i32 4096 }, %struct.ephy_info { i32 7, i32 0, i32 16384 }, %struct.ephy_info { i32 30, i32 0, i32 8192 }, %struct.ephy_info { i32 25, i32 65535, i32 65132 }, %struct.ephy_info { i32 10, i32 0, i32 64 }], align 16
@MISC = common dso_local global i32 0, align 4
@TXPLA_RST = common dso_local global i32 0, align 4
@Config5 = common dso_local global i32 0, align 4
@Spi_en = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8168e_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8168e_1(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @rtl_ephy_init(%struct.rtl8169_private* %5, %struct.ephy_info* getelementptr inbounds ([13 x %struct.ephy_info], [13 x %struct.ephy_info]* @rtl_hw_start_8168e_1.e_info_8168e_1, i64 0, i64 0))
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = call i32 @rtl_disable_clock_request(%struct.rtl8169_private* %7)
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = load i32, i32* @MISC, align 4
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %12 = load i32, i32* @MISC, align 4
  %13 = call i32 @RTL_R32(%struct.rtl8169_private* %11, i32 %12)
  %14 = load i32, i32* @TXPLA_RST, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @RTL_W32(%struct.rtl8169_private* %9, i32 %10, i32 %15)
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %18 = load i32, i32* @MISC, align 4
  %19 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %20 = load i32, i32* @MISC, align 4
  %21 = call i32 @RTL_R32(%struct.rtl8169_private* %19, i32 %20)
  %22 = load i32, i32* @TXPLA_RST, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = call i32 @RTL_W32(%struct.rtl8169_private* %17, i32 %18, i32 %24)
  %26 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %27 = load i32, i32* @Config5, align 4
  %28 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %29 = load i32, i32* @Config5, align 4
  %30 = call i32 @RTL_R8(%struct.rtl8169_private* %28, i32 %29)
  %31 = load i32, i32* @Spi_en, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i32 @RTL_W8(%struct.rtl8169_private* %26, i32 %27, i32 %33)
  ret void
}

declare dso_local i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_ephy_init(%struct.rtl8169_private*, %struct.ephy_info*) #1

declare dso_local i32 @rtl_disable_clock_request(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
