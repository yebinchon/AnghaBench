; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_hw_phy_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_hw_phy_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, i32, i64 }

@OCP_EEE_CFG = common dso_local global i32 0, align 4
@CTAP_SHORT_EN = common dso_local global i32 0, align 4
@OCP_POWER_CFG = common dso_local global i32 0, align 4
@EEE_CLKDIV_EN = common dso_local global i32 0, align 4
@OCP_DOWN_SPEED = common dso_local global i32 0, align 4
@EN_10M_BGOFF = common dso_local global i32 0, align 4
@EN_10M_PLLOFF = common dso_local global i32 0, align 4
@SRAM_IMPEDANCE = common dso_local global i32 0, align 4
@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_PHY_PWR = common dso_local global i32 0, align 4
@PFM_PWM_SWITCH = common dso_local global i32 0, align 4
@SRAM_LPF_CFG = common dso_local global i32 0, align 4
@SRAM_10M_AMP1 = common dso_local global i32 0, align 4
@SRAM_10M_AMP2 = common dso_local global i32 0, align 4
@PHY_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8153_hw_phy_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153_hw_phy_cfg(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %5 = load %struct.r8152*, %struct.r8152** %2, align 8
  %6 = call i32 @r8153_aldps_en(%struct.r8152* %5, i32 0)
  %7 = load %struct.r8152*, %struct.r8152** %2, align 8
  %8 = call i32 @rtl_eee_enable(%struct.r8152* %7, i32 0)
  %9 = load %struct.r8152*, %struct.r8152** %2, align 8
  %10 = getelementptr inbounds %struct.r8152, %struct.r8152* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 131
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.r8152*, %struct.r8152** %2, align 8
  %15 = load i32, i32* @OCP_EEE_CFG, align 4
  %16 = call i32 @ocp_reg_read(%struct.r8152* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @CTAP_SHORT_EN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.r8152*, %struct.r8152** %2, align 8
  %22 = load i32, i32* @OCP_EEE_CFG, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ocp_reg_write(%struct.r8152* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %13, %1
  %26 = load %struct.r8152*, %struct.r8152** %2, align 8
  %27 = load i32, i32* @OCP_POWER_CFG, align 4
  %28 = call i32 @ocp_reg_read(%struct.r8152* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @EEE_CLKDIV_EN, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.r8152*, %struct.r8152** %2, align 8
  %33 = load i32, i32* @OCP_POWER_CFG, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ocp_reg_write(%struct.r8152* %32, i32 %33, i32 %34)
  %36 = load %struct.r8152*, %struct.r8152** %2, align 8
  %37 = load i32, i32* @OCP_DOWN_SPEED, align 4
  %38 = call i32 @ocp_reg_read(%struct.r8152* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @EN_10M_BGOFF, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.r8152*, %struct.r8152** %2, align 8
  %43 = load i32, i32* @OCP_DOWN_SPEED, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ocp_reg_write(%struct.r8152* %42, i32 %43, i32 %44)
  %46 = load %struct.r8152*, %struct.r8152** %2, align 8
  %47 = load i32, i32* @OCP_POWER_CFG, align 4
  %48 = call i32 @ocp_reg_read(%struct.r8152* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @EN_10M_PLLOFF, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.r8152*, %struct.r8152** %2, align 8
  %53 = load i32, i32* @OCP_POWER_CFG, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @ocp_reg_write(%struct.r8152* %52, i32 %53, i32 %54)
  %56 = load %struct.r8152*, %struct.r8152** %2, align 8
  %57 = load i32, i32* @SRAM_IMPEDANCE, align 4
  %58 = call i32 @sram_write(%struct.r8152* %56, i32 %57, i32 2835)
  %59 = load %struct.r8152*, %struct.r8152** %2, align 8
  %60 = load i32, i32* @MCU_TYPE_PLA, align 4
  %61 = load i32, i32* @PLA_PHY_PWR, align 4
  %62 = call i32 @ocp_read_word(%struct.r8152* %59, i32 %60, i32 %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* @PFM_PWM_SWITCH, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load %struct.r8152*, %struct.r8152** %2, align 8
  %67 = load i32, i32* @MCU_TYPE_PLA, align 4
  %68 = load i32, i32* @PLA_PHY_PWR, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @ocp_write_word(%struct.r8152* %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.r8152*, %struct.r8152** %2, align 8
  %72 = load i32, i32* @SRAM_LPF_CFG, align 4
  %73 = call i32 @sram_write(%struct.r8152* %71, i32 %72, i32 63247)
  %74 = load %struct.r8152*, %struct.r8152** %2, align 8
  %75 = load i32, i32* @SRAM_10M_AMP1, align 4
  %76 = call i32 @sram_write(%struct.r8152* %74, i32 %75, i32 175)
  %77 = load %struct.r8152*, %struct.r8152** %2, align 8
  %78 = load i32, i32* @SRAM_10M_AMP2, align 4
  %79 = call i32 @sram_write(%struct.r8152* %77, i32 %78, i32 520)
  %80 = load %struct.r8152*, %struct.r8152** %2, align 8
  %81 = getelementptr inbounds %struct.r8152, %struct.r8152* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %25
  %85 = load %struct.r8152*, %struct.r8152** %2, align 8
  %86 = call i32 @rtl_eee_enable(%struct.r8152* %85, i32 1)
  br label %87

87:                                               ; preds = %84, %25
  %88 = load %struct.r8152*, %struct.r8152** %2, align 8
  %89 = call i32 @r8153_aldps_en(%struct.r8152* %88, i32 1)
  %90 = load %struct.r8152*, %struct.r8152** %2, align 8
  %91 = call i32 @r8152b_enable_fc(%struct.r8152* %90)
  %92 = load %struct.r8152*, %struct.r8152** %2, align 8
  %93 = getelementptr inbounds %struct.r8152, %struct.r8152* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %97 [
    i32 131, label %95
    i32 130, label %95
    i32 129, label %96
    i32 128, label %96
  ]

95:                                               ; preds = %87, %87
  br label %100

96:                                               ; preds = %87, %87
  br label %97

97:                                               ; preds = %87, %96
  %98 = load %struct.r8152*, %struct.r8152** %2, align 8
  %99 = call i32 @r8153_u2p3en(%struct.r8152* %98, i32 1)
  br label %100

100:                                              ; preds = %97, %95
  %101 = load i32, i32* @PHY_RESET, align 4
  %102 = load %struct.r8152*, %struct.r8152** %2, align 8
  %103 = getelementptr inbounds %struct.r8152, %struct.r8152* %102, i32 0, i32 1
  %104 = call i32 @set_bit(i32 %101, i32* %103)
  ret void
}

declare dso_local i32 @r8153_aldps_en(%struct.r8152*, i32) #1

declare dso_local i32 @rtl_eee_enable(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_reg_read(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_reg_write(%struct.r8152*, i32, i32) #1

declare dso_local i32 @sram_write(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @r8152b_enable_fc(%struct.r8152*) #1

declare dso_local i32 @r8153_u2p3en(%struct.r8152*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
