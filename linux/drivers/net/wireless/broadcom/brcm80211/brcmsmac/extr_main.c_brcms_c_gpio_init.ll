; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.brcms_hardware* }
%struct.brcms_hardware = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MCTL_GPOUT_SEL_MASK = common dso_local global i32 0, align 4
@ANTSEL_2x3 = common dso_local global i64 0, align 8
@MHF3 = common dso_local global i32 0, align 4
@MHF3_ANTSEL_EN = common dso_local global i32 0, align 4
@BRCM_BAND_ALL = common dso_local global i32 0, align 4
@MHF3_ANTSEL_MODE = common dso_local global i32 0, align 4
@ANTSEL_2x4 = common dso_local global i64 0, align 8
@BOARD_GPIO_12 = common dso_local global i32 0, align 4
@BOARD_GPIO_13 = common dso_local global i32 0, align 4
@psm_gpio_oe = common dso_local global i32 0, align 4
@psm_gpio_out = common dso_local global i32 0, align 4
@M_ANTSEL_CLKDIV = common dso_local global i32 0, align 4
@ANTSEL_CLKDIV_4MHZ = common dso_local global i32 0, align 4
@BFL_PACTRL = common dso_local global i32 0, align 4
@BOARD_GPIO_PACTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*)* @brcms_c_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_gpio_init(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %6 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %7 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %6, i32 0, i32 0
  %8 = load %struct.brcms_hardware*, %struct.brcms_hardware** %7, align 8
  store %struct.brcms_hardware* %8, %struct.brcms_hardware** %3, align 8
  %9 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %10 = load i32, i32* @MCTL_GPOUT_SEL_MASK, align 4
  %11 = call i32 @brcms_b_mctrl(%struct.brcms_hardware* %9, i32 %10, i32 0)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %12 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %13 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ANTSEL_2x3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %19 = load i32, i32* @MHF3, align 4
  %20 = load i32, i32* @MHF3_ANTSEL_EN, align 4
  %21 = load i32, i32* @MHF3_ANTSEL_EN, align 4
  %22 = load i32, i32* @BRCM_BAND_ALL, align 4
  %23 = call i32 @brcms_b_mhf(%struct.brcms_hardware* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %25 = load i32, i32* @MHF3, align 4
  %26 = load i32, i32* @MHF3_ANTSEL_MODE, align 4
  %27 = load i32, i32* @MHF3_ANTSEL_MODE, align 4
  %28 = load i32, i32* @BRCM_BAND_ALL, align 4
  %29 = call i32 @brcms_b_mhf(%struct.brcms_hardware* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wlc_phy_antsel_init(i32 %34, i32 0)
  br label %84

36:                                               ; preds = %1
  %37 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %38 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ANTSEL_2x4, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %36
  %43 = load i32, i32* @BOARD_GPIO_12, align 4
  %44 = load i32, i32* @BOARD_GPIO_13, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %51 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* @psm_gpio_oe, align 4
  %54 = call i32 @D11REGOFFS(i32 %53)
  %55 = load i32, i32* @BOARD_GPIO_12, align 4
  %56 = load i32, i32* @BOARD_GPIO_13, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @bcma_set16(%struct.TYPE_6__* %52, i32 %54, i32 %57)
  %59 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %60 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* @psm_gpio_out, align 4
  %63 = call i32 @D11REGOFFS(i32 %62)
  %64 = load i32, i32* @BOARD_GPIO_12, align 4
  %65 = load i32, i32* @BOARD_GPIO_13, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @bcma_set16(%struct.TYPE_6__* %61, i32 %63, i32 %66)
  %68 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %69 = load i32, i32* @MHF3, align 4
  %70 = load i32, i32* @MHF3_ANTSEL_EN, align 4
  %71 = load i32, i32* @MHF3_ANTSEL_EN, align 4
  %72 = load i32, i32* @BRCM_BAND_ALL, align 4
  %73 = call i32 @brcms_b_mhf(%struct.brcms_hardware* %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %75 = load i32, i32* @MHF3, align 4
  %76 = load i32, i32* @MHF3_ANTSEL_MODE, align 4
  %77 = load i32, i32* @BRCM_BAND_ALL, align 4
  %78 = call i32 @brcms_b_mhf(%struct.brcms_hardware* %74, i32 %75, i32 %76, i32 0, i32 %77)
  %79 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %80 = load i32, i32* @M_ANTSEL_CLKDIV, align 4
  %81 = load i32, i32* @ANTSEL_CLKDIV_4MHZ, align 4
  %82 = call i32 @brcms_b_write_shm(%struct.brcms_hardware* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %42, %36
  br label %84

84:                                               ; preds = %83, %17
  %85 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %86 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @BFL_PACTRL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load i32, i32* @BOARD_GPIO_PACTRL, align 4
  %93 = load i32, i32* %4, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %91, %84
  %98 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %99 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @bcma_chipco_gpio_control(i32* %103, i32 %104, i32 %105)
  ret void
}

declare dso_local i32 @brcms_b_mctrl(%struct.brcms_hardware*, i32, i32) #1

declare dso_local i32 @brcms_b_mhf(%struct.brcms_hardware*, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_antsel_init(i32, i32) #1

declare dso_local i32 @bcma_set16(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @brcms_b_write_shm(%struct.brcms_hardware*, i32, i32) #1

declare dso_local i32 @bcma_chipco_gpio_control(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
