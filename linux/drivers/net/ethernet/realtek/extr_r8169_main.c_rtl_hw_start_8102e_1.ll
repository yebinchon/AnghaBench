; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8102e_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8102e_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ephy_info = type { i32, i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl_hw_start_8102e_1.e_info_8102e_1 = internal constant [8 x %struct.ephy_info] [%struct.ephy_info { i32 1, i32 0, i32 28261 }, %struct.ephy_info { i32 2, i32 0, i32 2335 }, %struct.ephy_info { i32 3, i32 0, i32 49913 }, %struct.ephy_info { i32 6, i32 0, i32 44981 }, %struct.ephy_info { i32 7, i32 0, i32 3584 }, %struct.ephy_info { i32 25, i32 0, i32 60544 }, %struct.ephy_info { i32 1, i32 0, i32 11877 }, %struct.ephy_info { i32 1, i32 0, i32 28261 }], align 16
@DBG_REG = common dso_local global i32 0, align 4
@FIX_NAK_1 = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ_4096B = common dso_local global i32 0, align 4
@Config1 = common dso_local global i32 0, align 4
@LEDS1 = common dso_local global i32 0, align 4
@LEDS0 = common dso_local global i32 0, align 4
@Speed_down = common dso_local global i32 0, align 4
@MEMMAP = common dso_local global i32 0, align 4
@IOMAP = common dso_local global i32 0, align 4
@VPD = common dso_local global i32 0, align 4
@PMEnable = common dso_local global i32 0, align 4
@Config3 = common dso_local global i32 0, align 4
@Beacon_en = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8102e_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8102e_1(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %4 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %5 = call i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private* %4)
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %7 = load i32, i32* @DBG_REG, align 4
  %8 = load i32, i32* @FIX_NAK_1, align 4
  %9 = call i32 @RTL_W8(%struct.rtl8169_private* %6, i32 %7, i32 %8)
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %11 = load i32, i32* @PCI_EXP_DEVCTL_READRQ_4096B, align 4
  %12 = call i32 @rtl_tx_performance_tweak(%struct.rtl8169_private* %10, i32 %11)
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %14 = load i32, i32* @Config1, align 4
  %15 = load i32, i32* @LEDS1, align 4
  %16 = load i32, i32* @LEDS0, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @Speed_down, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MEMMAP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IOMAP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VPD, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PMEnable, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @RTL_W8(%struct.rtl8169_private* %13, i32 %14, i32 %27)
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %30 = load i32, i32* @Config3, align 4
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %32 = load i32, i32* @Config3, align 4
  %33 = call i32 @RTL_R8(%struct.rtl8169_private* %31, i32 %32)
  %34 = load i32, i32* @Beacon_en, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @RTL_W8(%struct.rtl8169_private* %29, i32 %30, i32 %36)
  %38 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %39 = load i32, i32* @Config1, align 4
  %40 = call i32 @RTL_R8(%struct.rtl8169_private* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @LEDS0, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %1
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @LEDS1, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %52 = load i32, i32* @Config1, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @LEDS0, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = call i32 @RTL_W8(%struct.rtl8169_private* %51, i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %50, %45, %1
  %59 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %60 = call i32 @rtl_ephy_init(%struct.rtl8169_private* %59, %struct.ephy_info* getelementptr inbounds ([8 x %struct.ephy_info], [8 x %struct.ephy_info]* @rtl_hw_start_8102e_1.e_info_8102e_1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_tx_performance_tweak(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_ephy_init(%struct.rtl8169_private*, %struct.ephy_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
