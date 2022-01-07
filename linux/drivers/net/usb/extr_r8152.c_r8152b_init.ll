; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152b_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152b_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i64, i32 }

@RTL8152_UNPLUG = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@RTL_VER_01 = common dso_local global i64 0, align 8
@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_LED_FEATURE = common dso_local global i32 0, align 4
@LED_MODE_MASK = common dso_local global i32 0, align 4
@PLA_PHY_PWR = common dso_local global i32 0, align 4
@TX_10M_IDLE_EN = common dso_local global i32 0, align 4
@PFM_PWM_SWITCH = common dso_local global i32 0, align 4
@PLA_MAC_PWR_CTRL = common dso_local global i32 0, align 4
@MCU_CLK_RATIO_MASK = common dso_local global i32 0, align 4
@MCU_CLK_RATIO = common dso_local global i32 0, align 4
@D3_CLK_GATED_EN = common dso_local global i32 0, align 4
@GPHY_STS_MSK = common dso_local global i32 0, align 4
@SPEED_DOWN_MSK = common dso_local global i32 0, align 4
@SPDWN_RXDV_MSK = common dso_local global i32 0, align 4
@SPDWN_LINKCHG_MSK = common dso_local global i32 0, align 4
@PLA_GPHY_INTR_IMR = common dso_local global i32 0, align 4
@MCU_TYPE_USB = common dso_local global i32 0, align 4
@USB_USB_CTRL = common dso_local global i32 0, align 4
@RX_AGG_DISABLE = common dso_local global i32 0, align 4
@RX_ZERO_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8152b_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8152b_init(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %5 = load i32, i32* @RTL8152_UNPLUG, align 4
  %6 = load %struct.r8152*, %struct.r8152** %2, align 8
  %7 = getelementptr inbounds %struct.r8152, %struct.r8152* %6, i32 0, i32 1
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %114

11:                                               ; preds = %1
  %12 = load %struct.r8152*, %struct.r8152** %2, align 8
  %13 = load i32, i32* @MII_BMCR, align 4
  %14 = call i32 @r8152_mdio_read(%struct.r8152* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @BMCR_PDOWN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load i32, i32* @BMCR_PDOWN, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.r8152*, %struct.r8152** %2, align 8
  %25 = load i32, i32* @MII_BMCR, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @r8152_mdio_write(%struct.r8152* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %11
  %29 = load %struct.r8152*, %struct.r8152** %2, align 8
  %30 = call i32 @r8152_aldps_en(%struct.r8152* %29, i32 0)
  %31 = load %struct.r8152*, %struct.r8152** %2, align 8
  %32 = getelementptr inbounds %struct.r8152, %struct.r8152* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RTL_VER_01, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %28
  %37 = load %struct.r8152*, %struct.r8152** %2, align 8
  %38 = load i32, i32* @MCU_TYPE_PLA, align 4
  %39 = load i32, i32* @PLA_LED_FEATURE, align 4
  %40 = call i32 @ocp_read_word(%struct.r8152* %37, i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @LED_MODE_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.r8152*, %struct.r8152** %2, align 8
  %46 = load i32, i32* @MCU_TYPE_PLA, align 4
  %47 = load i32, i32* @PLA_LED_FEATURE, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @ocp_write_word(%struct.r8152* %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %36, %28
  %51 = load %struct.r8152*, %struct.r8152** %2, align 8
  %52 = call i32 @r8152_power_cut_en(%struct.r8152* %51, i32 0)
  %53 = load %struct.r8152*, %struct.r8152** %2, align 8
  %54 = load i32, i32* @MCU_TYPE_PLA, align 4
  %55 = load i32, i32* @PLA_PHY_PWR, align 4
  %56 = call i32 @ocp_read_word(%struct.r8152* %53, i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @TX_10M_IDLE_EN, align 4
  %58 = load i32, i32* @PFM_PWM_SWITCH, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load %struct.r8152*, %struct.r8152** %2, align 8
  %63 = load i32, i32* @MCU_TYPE_PLA, align 4
  %64 = load i32, i32* @PLA_PHY_PWR, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @ocp_write_word(%struct.r8152* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.r8152*, %struct.r8152** %2, align 8
  %68 = load i32, i32* @MCU_TYPE_PLA, align 4
  %69 = load i32, i32* @PLA_MAC_PWR_CTRL, align 4
  %70 = call i32 @ocp_read_dword(%struct.r8152* %67, i32 %68, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* @MCU_CLK_RATIO_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* @MCU_CLK_RATIO, align 4
  %76 = load i32, i32* @D3_CLK_GATED_EN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  %80 = load %struct.r8152*, %struct.r8152** %2, align 8
  %81 = load i32, i32* @MCU_TYPE_PLA, align 4
  %82 = load i32, i32* @PLA_MAC_PWR_CTRL, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @ocp_write_dword(%struct.r8152* %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* @GPHY_STS_MSK, align 4
  %86 = load i32, i32* @SPEED_DOWN_MSK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @SPDWN_RXDV_MSK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @SPDWN_LINKCHG_MSK, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %3, align 4
  %92 = load %struct.r8152*, %struct.r8152** %2, align 8
  %93 = load i32, i32* @MCU_TYPE_PLA, align 4
  %94 = load i32, i32* @PLA_GPHY_INTR_IMR, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @ocp_write_word(%struct.r8152* %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.r8152*, %struct.r8152** %2, align 8
  %98 = call i32 @rtl_tally_reset(%struct.r8152* %97)
  %99 = load %struct.r8152*, %struct.r8152** %2, align 8
  %100 = load i32, i32* @MCU_TYPE_USB, align 4
  %101 = load i32, i32* @USB_USB_CTRL, align 4
  %102 = call i32 @ocp_read_word(%struct.r8152* %99, i32 %100, i32 %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* @RX_AGG_DISABLE, align 4
  %104 = load i32, i32* @RX_ZERO_EN, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %3, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %3, align 4
  %109 = load %struct.r8152*, %struct.r8152** %2, align 8
  %110 = load i32, i32* @MCU_TYPE_USB, align 4
  %111 = load i32, i32* @USB_USB_CTRL, align 4
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @ocp_write_word(%struct.r8152* %109, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %50, %10
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @r8152_mdio_read(%struct.r8152*, i32) #1

declare dso_local i32 @r8152_mdio_write(%struct.r8152*, i32, i32) #1

declare dso_local i32 @r8152_aldps_en(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @r8152_power_cut_en(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_read_dword(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_dword(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @rtl_tally_reset(%struct.r8152*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
