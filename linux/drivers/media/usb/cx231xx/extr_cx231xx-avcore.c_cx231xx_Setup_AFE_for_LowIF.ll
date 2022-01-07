; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_Setup_AFE_for_LowIF.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_Setup_AFE_for_LowIF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@ADC_STATUS2_CH3 = common dso_local global i32 0, align 4
@ADC_NTF_PRECLMP_EN_CH3 = common dso_local global i32 0, align 4
@ADC_INPUT_CH3 = common dso_local global i32 0, align 4
@ADC_FB_FRCRST_CH3 = common dso_local global i32 0, align 4
@ADC_DCSERVO_DEM_CH3 = common dso_local global i32 0, align 4
@ADC_CTRL_DAC1_CH3 = common dso_local global i32 0, align 4
@ADC_CTRL_DAC23_CH3 = common dso_local global i32 0, align 4
@ADC_PWRDN_CLAMP_CH3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_Setup_AFE_for_LowIF(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %5 = load i32, i32* @ADC_STATUS2_CH3, align 4
  %6 = call i32 @afe_read_byte(%struct.cx231xx* %4, i32 %5, i32* %3)
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 254
  %9 = or i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %11 = load i32, i32* @ADC_STATUS2_CH3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @afe_write_byte(%struct.cx231xx* %10, i32 %11, i32 %12)
  %14 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %15 = load i32, i32* @ADC_STATUS2_CH3, align 4
  %16 = call i32 @afe_read_byte(%struct.cx231xx* %14, i32 %15, i32* %3)
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 254
  store i32 %18, i32* %3, align 4
  %19 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %20 = load i32, i32* @ADC_STATUS2_CH3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @afe_write_byte(%struct.cx231xx* %19, i32 %20, i32 %21)
  %23 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %24 = load i32, i32* @ADC_NTF_PRECLMP_EN_CH3, align 4
  %25 = call i32 @afe_read_byte(%struct.cx231xx* %23, i32 %24, i32* %3)
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 252
  store i32 %27, i32* %3, align 4
  %28 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %29 = load i32, i32* @ADC_NTF_PRECLMP_EN_CH3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @afe_write_byte(%struct.cx231xx* %28, i32 %29, i32 %30)
  %32 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %33 = load i32, i32* @ADC_INPUT_CH3, align 4
  %34 = call i32 @afe_read_byte(%struct.cx231xx* %32, i32 %33, i32* %3)
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 249
  %37 = or i32 %36, 2
  store i32 %37, i32* %3, align 4
  %38 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %39 = load i32, i32* @ADC_INPUT_CH3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @afe_write_byte(%struct.cx231xx* %38, i32 %39, i32 %40)
  %42 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %43 = load i32, i32* @ADC_FB_FRCRST_CH3, align 4
  %44 = call i32 @afe_read_byte(%struct.cx231xx* %42, i32 %43, i32* %3)
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 251
  %47 = or i32 %46, 4
  store i32 %47, i32* %3, align 4
  %48 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %49 = load i32, i32* @ADC_FB_FRCRST_CH3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @afe_write_byte(%struct.cx231xx* %48, i32 %49, i32 %50)
  %52 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %53 = load i32, i32* @ADC_DCSERVO_DEM_CH3, align 4
  %54 = call i32 @afe_read_byte(%struct.cx231xx* %52, i32 %53, i32* %3)
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, 252
  %57 = or i32 %56, 3
  store i32 %57, i32* %3, align 4
  %58 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %59 = load i32, i32* @ADC_DCSERVO_DEM_CH3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @afe_write_byte(%struct.cx231xx* %58, i32 %59, i32 %60)
  %62 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %63 = load i32, i32* @ADC_CTRL_DAC1_CH3, align 4
  %64 = call i32 @afe_read_byte(%struct.cx231xx* %62, i32 %63, i32* %3)
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 251
  %67 = or i32 %66, 4
  store i32 %67, i32* %3, align 4
  %68 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %69 = load i32, i32* @ADC_CTRL_DAC1_CH3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @afe_write_byte(%struct.cx231xx* %68, i32 %69, i32 %70)
  %72 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %73 = load i32, i32* @ADC_CTRL_DAC23_CH3, align 4
  %74 = call i32 @afe_read_byte(%struct.cx231xx* %72, i32 %73, i32* %3)
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 248
  %77 = or i32 %76, 6
  store i32 %77, i32* %3, align 4
  %78 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %79 = load i32, i32* @ADC_CTRL_DAC23_CH3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @afe_write_byte(%struct.cx231xx* %78, i32 %79, i32 %80)
  %82 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %83 = load i32, i32* @ADC_CTRL_DAC23_CH3, align 4
  %84 = call i32 @afe_read_byte(%struct.cx231xx* %82, i32 %83, i32* %3)
  %85 = load i32, i32* %3, align 4
  %86 = and i32 %85, 143
  %87 = or i32 %86, 64
  store i32 %87, i32* %3, align 4
  %88 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %89 = load i32, i32* @ADC_CTRL_DAC23_CH3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @afe_write_byte(%struct.cx231xx* %88, i32 %89, i32 %90)
  %92 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %93 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %94 = call i32 @afe_read_byte(%struct.cx231xx* %92, i32 %93, i32* %3)
  %95 = load i32, i32* %3, align 4
  %96 = and i32 %95, 223
  %97 = or i32 %96, 32
  store i32 %97, i32* %3, align 4
  %98 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %99 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @afe_write_byte(%struct.cx231xx* %98, i32 %99, i32 %100)
  ret void
}

declare dso_local i32 @afe_read_byte(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @afe_write_byte(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
