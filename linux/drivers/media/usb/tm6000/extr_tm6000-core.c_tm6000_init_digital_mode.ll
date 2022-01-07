; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_init_digital_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_init_digital_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TM6010 = common dso_local global i64 0, align 8
@TM6010_REQ07_RCC_ACTIVE_IF = common dso_local global i32 0, align 4
@TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE = common dso_local global i32 0, align 4
@TM6010_REQ07_RFE_POWER_DOWN = common dso_local global i32 0, align 4
@TM6010_REQ08_RE2_POWER_DOWN_CTRL1 = common dso_local global i32 0, align 4
@TM6010_REQ08_RE6_POWER_DOWN_CTRL2 = common dso_local global i32 0, align 4
@TM6010_REQ07_RFF_SOFT_RESET = common dso_local global i32 0, align 4
@TM6010_REQ07_R3F_RESET = common dso_local global i32 0, align 4
@TM6000_REQ07_RDF_PWDOWN_ACLK = common dso_local global i32 0, align 4
@TM6000_REQ07_RE2_VADC_STATUS_CTL = common dso_local global i32 0, align 4
@TM6000_REQ07_RE8_VADC_PWDOWN_CTL = common dso_local global i32 0, align 4
@TM6000_REQ07_REB_VADC_AADC_MODE = common dso_local global i32 0, align 4
@TM6010_REQ07_RC1_TRESHOLD = common dso_local global i32 0, align 4
@TM6010_REQ07_RC3_HSTART1 = common dso_local global i32 0, align 4
@TM6000_REQ07_RDA_CLK_SEL = common dso_local global i32 0, align 4
@TM6010_REQ07_RD1_ADDR_FOR_REQ1 = common dso_local global i32 0, align 4
@TM6010_REQ07_RD2_ADDR_FOR_REQ2 = common dso_local global i32 0, align 4
@TM6010_REQ07_RD6_ENDP_REQ1_REQ2 = common dso_local global i32 0, align 4
@REQ_04_EN_DISABLE_MCU_INT = common dso_local global i32 0, align 4
@REQ_03_SET_GET_MCU_PIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm6000_init_digital_mode(%struct.tm6000_core* %0) #0 {
  %2 = alloca %struct.tm6000_core*, align 8
  store %struct.tm6000_core* %0, %struct.tm6000_core** %2, align 8
  %3 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %4 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TM6010, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %10 = load i32, i32* @TM6010_REQ07_RCC_ACTIVE_IF, align 4
  %11 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %9, i32 %10, i32 0, i32 96)
  %12 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %13 = load i32, i32* @TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE, align 4
  %14 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %12, i32 %13, i32 64, i32 64)
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %16 = load i32, i32* @TM6010_REQ07_RFE_POWER_DOWN, align 4
  %17 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %15, i32 %16, i32 40)
  %18 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %19 = load i32, i32* @TM6010_REQ08_RE2_POWER_DOWN_CTRL1, align 4
  %20 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %18, i32 %19, i32 252)
  %21 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %22 = load i32, i32* @TM6010_REQ08_RE6_POWER_DOWN_CTRL2, align 4
  %23 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %21, i32 %22, i32 255)
  br label %89

24:                                               ; preds = %1
  %25 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %26 = load i32, i32* @TM6010_REQ07_RFF_SOFT_RESET, align 4
  %27 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %25, i32 %26, i32 8)
  %28 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %29 = load i32, i32* @TM6010_REQ07_RFF_SOFT_RESET, align 4
  %30 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %28, i32 %29, i32 0)
  %31 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %32 = load i32, i32* @TM6010_REQ07_R3F_RESET, align 4
  %33 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %31, i32 %32, i32 1)
  %34 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %35 = load i32, i32* @TM6000_REQ07_RDF_PWDOWN_ACLK, align 4
  %36 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %34, i32 %35, i32 8)
  %37 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %38 = load i32, i32* @TM6000_REQ07_RE2_VADC_STATUS_CTL, align 4
  %39 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %37, i32 %38, i32 12)
  %40 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %41 = load i32, i32* @TM6000_REQ07_RE8_VADC_PWDOWN_CTL, align 4
  %42 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %40, i32 %41, i32 255)
  %43 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %44 = load i32, i32* @TM6000_REQ07_REB_VADC_AADC_MODE, align 4
  %45 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %43, i32 %44, i32 216)
  %46 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %47 = load i32, i32* @TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE, align 4
  %48 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %46, i32 %47, i32 64)
  %49 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %50 = load i32, i32* @TM6010_REQ07_RC1_TRESHOLD, align 4
  %51 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %49, i32 %50, i32 208)
  %52 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %53 = load i32, i32* @TM6010_REQ07_RC3_HSTART1, align 4
  %54 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %52, i32 %53, i32 9)
  %55 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %56 = load i32, i32* @TM6000_REQ07_RDA_CLK_SEL, align 4
  %57 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %55, i32 %56, i32 55)
  %58 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %59 = load i32, i32* @TM6010_REQ07_RD1_ADDR_FOR_REQ1, align 4
  %60 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %58, i32 %59, i32 216)
  %61 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %62 = load i32, i32* @TM6010_REQ07_RD2_ADDR_FOR_REQ2, align 4
  %63 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %61, i32 %62, i32 192)
  %64 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %65 = load i32, i32* @TM6010_REQ07_RD6_ENDP_REQ1_REQ2, align 4
  %66 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %64, i32 %65, i32 96)
  %67 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %68 = load i32, i32* @TM6000_REQ07_RE2_VADC_STATUS_CTL, align 4
  %69 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %67, i32 %68, i32 12)
  %70 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %71 = load i32, i32* @TM6000_REQ07_RE8_VADC_PWDOWN_CTL, align 4
  %72 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %70, i32 %71, i32 255)
  %73 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %74 = load i32, i32* @TM6000_REQ07_REB_VADC_AADC_MODE, align 4
  %75 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %73, i32 %74, i32 8)
  %76 = call i32 @msleep(i32 50)
  %77 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %78 = load i32, i32* @REQ_04_EN_DISABLE_MCU_INT, align 4
  %79 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %77, i32 %78, i32 32, i32 0)
  %80 = call i32 @msleep(i32 50)
  %81 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %82 = load i32, i32* @REQ_04_EN_DISABLE_MCU_INT, align 4
  %83 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %81, i32 %82, i32 32, i32 1)
  %84 = call i32 @msleep(i32 50)
  %85 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %86 = load i32, i32* @REQ_04_EN_DISABLE_MCU_INT, align 4
  %87 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %85, i32 %86, i32 32, i32 0)
  %88 = call i32 @msleep(i32 100)
  br label %89

89:                                               ; preds = %24, %8
  %90 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %91 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %97 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %98 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %99 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %96, i32 %97, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %95, %89
  ret i32 0
}

declare dso_local i32 @tm6000_set_reg_mask(%struct.tm6000_core*, i32, i32, i32) #1

declare dso_local i32 @tm6000_set_reg(%struct.tm6000_core*, i32, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
