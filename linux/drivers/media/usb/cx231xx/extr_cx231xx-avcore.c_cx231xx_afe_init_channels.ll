; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_init_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_init_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@ADC_PWRDN_CLAMP_CH1 = common dso_local global i32 0, align 4
@ADC_PWRDN_CLAMP_CH2 = common dso_local global i32 0, align 4
@ADC_PWRDN_CLAMP_CH3 = common dso_local global i32 0, align 4
@ADC_COM_QUANT = common dso_local global i32 0, align 4
@ADC_FB_FRCRST_CH1 = common dso_local global i32 0, align 4
@ADC_FB_FRCRST_CH2 = common dso_local global i32 0, align 4
@ADC_FB_FRCRST_CH3 = common dso_local global i32 0, align 4
@ADC_CAL_ATEST_CH1 = common dso_local global i32 0, align 4
@ADC_CAL_ATEST_CH2 = common dso_local global i32 0, align 4
@ADC_CAL_ATEST_CH3 = common dso_local global i32 0, align 4
@ADC_NTF_PRECLMP_EN_CH1 = common dso_local global i32 0, align 4
@ADC_NTF_PRECLMP_EN_CH2 = common dso_local global i32 0, align 4
@ADC_NTF_PRECLMP_EN_CH3 = common dso_local global i32 0, align 4
@AFE_DEVICE_ADDRESS = common dso_local global i32 0, align 4
@ADC_QGAIN_RES_TRM_CH1 = common dso_local global i32 0, align 4
@ADC_QGAIN_RES_TRM_CH2 = common dso_local global i32 0, align 4
@ADC_QGAIN_RES_TRM_CH3 = common dso_local global i32 0, align 4
@ADC_DCSERVO_DEM_CH1 = common dso_local global i32 0, align 4
@ADC_DCSERVO_DEM_CH2 = common dso_local global i32 0, align 4
@ADC_DCSERVO_DEM_CH3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_afe_init_channels(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %5 = load i32, i32* @ADC_PWRDN_CLAMP_CH1, align 4
  %6 = call i32 @afe_write_byte(%struct.cx231xx* %4, i32 %5, i32 0)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %8 = load i32, i32* @ADC_PWRDN_CLAMP_CH2, align 4
  %9 = call i32 @afe_write_byte(%struct.cx231xx* %7, i32 %8, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %11 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %12 = call i32 @afe_write_byte(%struct.cx231xx* %10, i32 %11, i32 0)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %14 = load i32, i32* @ADC_COM_QUANT, align 4
  %15 = call i32 @afe_write_byte(%struct.cx231xx* %13, i32 %14, i32 2)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %17 = load i32, i32* @ADC_FB_FRCRST_CH1, align 4
  %18 = call i32 @afe_write_byte(%struct.cx231xx* %16, i32 %17, i32 23)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %20 = load i32, i32* @ADC_FB_FRCRST_CH2, align 4
  %21 = call i32 @afe_write_byte(%struct.cx231xx* %19, i32 %20, i32 23)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %23 = load i32, i32* @ADC_FB_FRCRST_CH3, align 4
  %24 = call i32 @afe_write_byte(%struct.cx231xx* %22, i32 %23, i32 23)
  store i32 %24, i32* %3, align 4
  %25 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %26 = load i32, i32* @ADC_CAL_ATEST_CH1, align 4
  %27 = call i32 @afe_write_byte(%struct.cx231xx* %25, i32 %26, i32 16)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %29 = load i32, i32* @ADC_CAL_ATEST_CH2, align 4
  %30 = call i32 @afe_write_byte(%struct.cx231xx* %28, i32 %29, i32 16)
  store i32 %30, i32* %3, align 4
  %31 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %32 = load i32, i32* @ADC_CAL_ATEST_CH3, align 4
  %33 = call i32 @afe_write_byte(%struct.cx231xx* %31, i32 %32, i32 16)
  store i32 %33, i32* %3, align 4
  %34 = call i32 @msleep(i32 5)
  %35 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %36 = load i32, i32* @ADC_FB_FRCRST_CH1, align 4
  %37 = call i32 @afe_write_byte(%struct.cx231xx* %35, i32 %36, i32 7)
  store i32 %37, i32* %3, align 4
  %38 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %39 = load i32, i32* @ADC_FB_FRCRST_CH2, align 4
  %40 = call i32 @afe_write_byte(%struct.cx231xx* %38, i32 %39, i32 7)
  store i32 %40, i32* %3, align 4
  %41 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %42 = load i32, i32* @ADC_FB_FRCRST_CH3, align 4
  %43 = call i32 @afe_write_byte(%struct.cx231xx* %41, i32 %42, i32 7)
  store i32 %43, i32* %3, align 4
  %44 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %45 = load i32, i32* @ADC_NTF_PRECLMP_EN_CH1, align 4
  %46 = call i32 @afe_write_byte(%struct.cx231xx* %44, i32 %45, i32 240)
  store i32 %46, i32* %3, align 4
  %47 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %48 = load i32, i32* @ADC_NTF_PRECLMP_EN_CH2, align 4
  %49 = call i32 @afe_write_byte(%struct.cx231xx* %47, i32 %48, i32 240)
  store i32 %49, i32* %3, align 4
  %50 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %51 = load i32, i32* @ADC_NTF_PRECLMP_EN_CH3, align 4
  %52 = call i32 @afe_write_byte(%struct.cx231xx* %50, i32 %51, i32 240)
  store i32 %52, i32* %3, align 4
  %53 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %54 = load i32, i32* @AFE_DEVICE_ADDRESS, align 4
  %55 = load i32, i32* @ADC_QGAIN_RES_TRM_CH1, align 4
  %56 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %53, i32 %54, i32 8, i32 %55, i32 3, i32 7, i32 0)
  store i32 %56, i32* %3, align 4
  %57 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %58 = load i32, i32* @AFE_DEVICE_ADDRESS, align 4
  %59 = load i32, i32* @ADC_QGAIN_RES_TRM_CH2, align 4
  %60 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %57, i32 %58, i32 8, i32 %59, i32 3, i32 7, i32 0)
  store i32 %60, i32* %3, align 4
  %61 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %62 = load i32, i32* @AFE_DEVICE_ADDRESS, align 4
  %63 = load i32, i32* @ADC_QGAIN_RES_TRM_CH3, align 4
  %64 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %61, i32 %62, i32 8, i32 %63, i32 3, i32 7, i32 0)
  store i32 %64, i32* %3, align 4
  %65 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %66 = load i32, i32* @ADC_DCSERVO_DEM_CH1, align 4
  %67 = call i32 @afe_write_byte(%struct.cx231xx* %65, i32 %66, i32 3)
  store i32 %67, i32* %3, align 4
  %68 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %69 = load i32, i32* @ADC_DCSERVO_DEM_CH2, align 4
  %70 = call i32 @afe_write_byte(%struct.cx231xx* %68, i32 %69, i32 3)
  store i32 %70, i32* %3, align 4
  %71 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %72 = load i32, i32* @ADC_DCSERVO_DEM_CH3, align 4
  %73 = call i32 @afe_write_byte(%struct.cx231xx* %71, i32 %72, i32 3)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @afe_write_byte(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cx231xx_reg_mask_write(%struct.cx231xx*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
