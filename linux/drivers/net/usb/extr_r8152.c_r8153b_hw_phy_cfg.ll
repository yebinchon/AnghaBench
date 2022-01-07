; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153b_hw_phy_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153b_hw_phy_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@GREEN_ETHERNET = common dso_local global i32 0, align 4
@SRAM_GREEN_CFG = common dso_local global i32 0, align 4
@R_TUNE_EN = common dso_local global i32 0, align 4
@OCP_NCTL_CFG = common dso_local global i32 0, align 4
@PGA_RETURN_EN = common dso_local global i32 0, align 4
@OCP_ADC_IOFFSET = common dso_local global i32 0, align 4
@SAW_CNT_1MS_MASK = common dso_local global i32 0, align 4
@MCU_TYPE_USB = common dso_local global i32 0, align 4
@USB_UPS_CFG = common dso_local global i32 0, align 4
@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_PHY_PWR = common dso_local global i32 0, align 4
@PFM_PWM_SWITCH = common dso_local global i32 0, align 4
@OCP_POWER_CFG = common dso_local global i32 0, align 4
@EEE_CLKDIV_EN = common dso_local global i32 0, align 4
@OCP_DOWN_SPEED = common dso_local global i32 0, align 4
@EN_EEE_CMODE = common dso_local global i32 0, align 4
@EN_EEE_1000 = common dso_local global i32 0, align 4
@EN_10M_CLKDIV = common dso_local global i32 0, align 4
@OCP_SYSCLK_CFG = common dso_local global i32 0, align 4
@PHY_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8153b_hw_phy_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153b_hw_phy_cfg(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %6 = load %struct.r8152*, %struct.r8152** %2, align 8
  %7 = call i32 @r8153_aldps_en(%struct.r8152* %6, i32 0)
  %8 = load %struct.r8152*, %struct.r8152** %2, align 8
  %9 = call i32 @rtl_eee_enable(%struct.r8152* %8, i32 0)
  %10 = load %struct.r8152*, %struct.r8152** %2, align 8
  %11 = load i32, i32* @GREEN_ETHERNET, align 4
  %12 = load %struct.r8152*, %struct.r8152** %2, align 8
  %13 = getelementptr inbounds %struct.r8152, %struct.r8152* %12, i32 0, i32 0
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = call i32 @r8153b_green_en(%struct.r8152* %10, i32 %14)
  %16 = load %struct.r8152*, %struct.r8152** %2, align 8
  %17 = load i32, i32* @SRAM_GREEN_CFG, align 4
  %18 = call i32 @sram_read(%struct.r8152* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @R_TUNE_EN, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.r8152*, %struct.r8152** %2, align 8
  %23 = load i32, i32* @SRAM_GREEN_CFG, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @sram_write(%struct.r8152* %22, i32 %23, i32 %24)
  %26 = load %struct.r8152*, %struct.r8152** %2, align 8
  %27 = load i32, i32* @OCP_NCTL_CFG, align 4
  %28 = call i32 @ocp_reg_read(%struct.r8152* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @PGA_RETURN_EN, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.r8152*, %struct.r8152** %2, align 8
  %33 = load i32, i32* @OCP_NCTL_CFG, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ocp_reg_write(%struct.r8152* %32, i32 %33, i32 %34)
  %36 = load %struct.r8152*, %struct.r8152** %2, align 8
  %37 = call i32 @r8152_efuse_read(%struct.r8152* %36, i32 125)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 131056
  %40 = ashr i32 %39, 1
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, 7
  %43 = or i32 %40, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 65535
  br i1 %45, label %46, label %51

46:                                               ; preds = %1
  %47 = load %struct.r8152*, %struct.r8152** %2, align 8
  %48 = load i32, i32* @OCP_ADC_IOFFSET, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @ocp_reg_write(%struct.r8152* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %1
  %52 = load %struct.r8152*, %struct.r8152** %2, align 8
  %53 = call i32 @ocp_reg_read(%struct.r8152* %52, i32 50214)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, 16383
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4
  %60 = sdiv i32 16000000, %59
  %61 = load i32, i32* @SAW_CNT_1MS_MASK, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %5, align 4
  %63 = load %struct.r8152*, %struct.r8152** %2, align 8
  %64 = load i32, i32* @MCU_TYPE_USB, align 4
  %65 = load i32, i32* @USB_UPS_CFG, align 4
  %66 = call i32 @ocp_read_word(%struct.r8152* %63, i32 %64, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @SAW_CNT_1MS_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %3, align 4
  %73 = load %struct.r8152*, %struct.r8152** %2, align 8
  %74 = load i32, i32* @MCU_TYPE_USB, align 4
  %75 = load i32, i32* @USB_UPS_CFG, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @ocp_write_word(%struct.r8152* %73, i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %58, %51
  %79 = load %struct.r8152*, %struct.r8152** %2, align 8
  %80 = load i32, i32* @MCU_TYPE_PLA, align 4
  %81 = load i32, i32* @PLA_PHY_PWR, align 4
  %82 = call i32 @ocp_read_word(%struct.r8152* %79, i32 %80, i32 %81)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @PFM_PWM_SWITCH, align 4
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load %struct.r8152*, %struct.r8152** %2, align 8
  %87 = load i32, i32* @MCU_TYPE_PLA, align 4
  %88 = load i32, i32* @PLA_PHY_PWR, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @ocp_write_word(%struct.r8152* %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.r8152*, %struct.r8152** %2, align 8
  %92 = call i32 @r8153_patch_request(%struct.r8152* %91, i32 1)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %143, label %94

94:                                               ; preds = %78
  %95 = load %struct.r8152*, %struct.r8152** %2, align 8
  %96 = load i32, i32* @OCP_POWER_CFG, align 4
  %97 = call i32 @ocp_reg_read(%struct.r8152* %95, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* @EEE_CLKDIV_EN, align 4
  %99 = load i32, i32* %4, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %4, align 4
  %101 = load %struct.r8152*, %struct.r8152** %2, align 8
  %102 = load i32, i32* @OCP_POWER_CFG, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @ocp_reg_write(%struct.r8152* %101, i32 %102, i32 %103)
  %105 = load %struct.r8152*, %struct.r8152** %2, align 8
  %106 = getelementptr inbounds %struct.r8152, %struct.r8152* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.r8152*, %struct.r8152** %2, align 8
  %109 = load i32, i32* @OCP_DOWN_SPEED, align 4
  %110 = call i32 @ocp_reg_read(%struct.r8152* %108, i32 %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* @EN_EEE_CMODE, align 4
  %112 = load i32, i32* @EN_EEE_1000, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @EN_10M_CLKDIV, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %4, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %4, align 4
  %118 = load %struct.r8152*, %struct.r8152** %2, align 8
  %119 = load i32, i32* @OCP_DOWN_SPEED, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @ocp_reg_write(%struct.r8152* %118, i32 %119, i32 %120)
  %122 = load %struct.r8152*, %struct.r8152** %2, align 8
  %123 = getelementptr inbounds %struct.r8152, %struct.r8152* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  %125 = load %struct.r8152*, %struct.r8152** %2, align 8
  %126 = getelementptr inbounds %struct.r8152, %struct.r8152* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  store i32 1, i32* %127, align 8
  %128 = load %struct.r8152*, %struct.r8152** %2, align 8
  %129 = getelementptr inbounds %struct.r8152, %struct.r8152* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  store i32 1, i32* %130, align 4
  %131 = load %struct.r8152*, %struct.r8152** %2, align 8
  %132 = load i32, i32* @OCP_SYSCLK_CFG, align 4
  %133 = call i32 @ocp_reg_write(%struct.r8152* %131, i32 %132, i32 0)
  %134 = load %struct.r8152*, %struct.r8152** %2, align 8
  %135 = load i32, i32* @OCP_SYSCLK_CFG, align 4
  %136 = call i32 @clk_div_expo(i32 5)
  %137 = call i32 @ocp_reg_write(%struct.r8152* %134, i32 %135, i32 %136)
  %138 = load %struct.r8152*, %struct.r8152** %2, align 8
  %139 = getelementptr inbounds %struct.r8152, %struct.r8152* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 4
  store i32 1, i32* %140, align 8
  %141 = load %struct.r8152*, %struct.r8152** %2, align 8
  %142 = call i32 @r8153_patch_request(%struct.r8152* %141, i32 0)
  br label %143

143:                                              ; preds = %94, %78
  %144 = load %struct.r8152*, %struct.r8152** %2, align 8
  %145 = getelementptr inbounds %struct.r8152, %struct.r8152* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.r8152*, %struct.r8152** %2, align 8
  %150 = call i32 @rtl_eee_enable(%struct.r8152* %149, i32 1)
  br label %151

151:                                              ; preds = %148, %143
  %152 = load %struct.r8152*, %struct.r8152** %2, align 8
  %153 = call i32 @r8153_aldps_en(%struct.r8152* %152, i32 1)
  %154 = load %struct.r8152*, %struct.r8152** %2, align 8
  %155 = call i32 @r8152b_enable_fc(%struct.r8152* %154)
  %156 = load %struct.r8152*, %struct.r8152** %2, align 8
  %157 = call i32 @r8153_u2p3en(%struct.r8152* %156, i32 1)
  %158 = load i32, i32* @PHY_RESET, align 4
  %159 = load %struct.r8152*, %struct.r8152** %2, align 8
  %160 = getelementptr inbounds %struct.r8152, %struct.r8152* %159, i32 0, i32 0
  %161 = call i32 @set_bit(i32 %158, i32* %160)
  ret void
}

declare dso_local i32 @r8153_aldps_en(%struct.r8152*, i32) #1

declare dso_local i32 @rtl_eee_enable(%struct.r8152*, i32) #1

declare dso_local i32 @r8153b_green_en(%struct.r8152*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @sram_read(%struct.r8152*, i32) #1

declare dso_local i32 @sram_write(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_reg_read(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_reg_write(%struct.r8152*, i32, i32) #1

declare dso_local i32 @r8152_efuse_read(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @r8153_patch_request(%struct.r8152*, i32) #1

declare dso_local i32 @clk_div_expo(i32) #1

declare dso_local i32 @r8152b_enable_fc(%struct.r8152*) #1

declare dso_local i32 @r8153_u2p3en(%struct.r8152*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
