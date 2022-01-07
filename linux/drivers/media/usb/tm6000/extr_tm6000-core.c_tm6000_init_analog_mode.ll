; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_init_analog_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_init_analog_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i64, %struct.TYPE_2__, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_frequency = type { i32 }

@TM6010 = common dso_local global i64 0, align 8
@TM6010_REQ07_RCC_ACTIVE_IF_AUDIO_ENABLE = common dso_local global i32 0, align 4
@TM6010_REQ07_RCC_ACTIVE_IF_VIDEO_ENABLE = common dso_local global i32 0, align 4
@TM6010_REQ07_RCC_ACTIVE_IF = common dso_local global i32 0, align 4
@TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE = common dso_local global i32 0, align 4
@TM6010_REQ07_R3F_RESET = common dso_local global i32 0, align 4
@TM6010_REQ07_RC3_HSTART1 = common dso_local global i32 0, align 4
@TM6000_REQ07_RDA_CLK_SEL = common dso_local global i32 0, align 4
@TM6010_REQ07_RD1_ADDR_FOR_REQ1 = common dso_local global i32 0, align 4
@TM6010_REQ07_RD2_ADDR_FOR_REQ2 = common dso_local global i32 0, align 4
@TM6010_REQ07_RD6_ENDP_REQ1_REQ2 = common dso_local global i32 0, align 4
@TM6000_REQ07_RDF_PWDOWN_ACLK = common dso_local global i32 0, align 4
@TM6010_REQ07_RFF_SOFT_RESET = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@REQ_03_SET_GET_MCU_PIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm6000_init_analog_mode(%struct.tm6000_core* %0) #0 {
  %2 = alloca %struct.tm6000_core*, align 8
  %3 = alloca %struct.v4l2_frequency, align 4
  %4 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %2, align 8
  %5 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %6 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TM6010, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load i32, i32* @TM6010_REQ07_RCC_ACTIVE_IF_AUDIO_ENABLE, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %13 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @TM6010_REQ07_RCC_ACTIVE_IF_VIDEO_ENABLE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %16, %10
  %21 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %22 = load i32, i32* @TM6010_REQ07_RCC_ACTIVE_IF, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %21, i32 %22, i32 %23, i32 96)
  %25 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %26 = load i32, i32* @TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE, align 4
  %27 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %25, i32 %26, i32 0, i32 64)
  br label %74

28:                                               ; preds = %1
  %29 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %30 = load i32, i32* @TM6010_REQ07_R3F_RESET, align 4
  %31 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %29, i32 %30, i32 1)
  %32 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %33 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %38 = load i32, i32* @TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE, align 4
  %39 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %37, i32 %38, i32 32)
  br label %44

40:                                               ; preds = %28
  %41 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %42 = load i32, i32* @TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE, align 4
  %43 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %41, i32 %42, i32 128)
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %46 = load i32, i32* @TM6010_REQ07_RC3_HSTART1, align 4
  %47 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %45, i32 %46, i32 136)
  %48 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %49 = load i32, i32* @TM6000_REQ07_RDA_CLK_SEL, align 4
  %50 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %48, i32 %49, i32 35)
  %51 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %52 = load i32, i32* @TM6010_REQ07_RD1_ADDR_FOR_REQ1, align 4
  %53 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %51, i32 %52, i32 192)
  %54 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %55 = load i32, i32* @TM6010_REQ07_RD2_ADDR_FOR_REQ2, align 4
  %56 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %54, i32 %55, i32 216)
  %57 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %58 = load i32, i32* @TM6010_REQ07_RD6_ENDP_REQ1_REQ2, align 4
  %59 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %57, i32 %58, i32 6)
  %60 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %61 = load i32, i32* @TM6000_REQ07_RDF_PWDOWN_ACLK, align 4
  %62 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %60, i32 %61, i32 31)
  %63 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %64 = load i32, i32* @TM6010_REQ07_RFF_SOFT_RESET, align 4
  %65 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %63, i32 %64, i32 8)
  %66 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %67 = load i32, i32* @TM6010_REQ07_RFF_SOFT_RESET, align 4
  %68 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %66, i32 %67, i32 0)
  %69 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %70 = call i32 @tm6000_set_fourcc_format(%struct.tm6000_core* %69)
  %71 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %72 = load i32, i32* @TM6010_REQ07_R3F_RESET, align 4
  %73 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %71, i32 %72, i32 0)
  br label %74

74:                                               ; preds = %44, %20
  %75 = call i32 @msleep(i32 20)
  %76 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %77 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %3, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %81 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %80, i32 0, i32 2
  %82 = load i32, i32* @tuner, align 4
  %83 = load i32, i32* @s_frequency, align 4
  %84 = call i32 @v4l2_device_call_all(i32* %81, i32 0, i32 %82, i32 %83, %struct.v4l2_frequency* %3)
  %85 = call i32 @msleep(i32 100)
  %86 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %87 = call i32 @tm6000_set_standard(%struct.tm6000_core* %86)
  %88 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %89 = call i32 @tm6000_set_vbi(%struct.tm6000_core* %88)
  %90 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %91 = call i32 @tm6000_set_audio_bitrate(%struct.tm6000_core* %90, i32 48000)
  %92 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %93 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %74
  %98 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %99 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %100 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %101 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %98, i32 %99, i32 %103, i32 1)
  br label %105

105:                                              ; preds = %97, %74
  ret i32 0
}

declare dso_local i32 @tm6000_set_reg_mask(%struct.tm6000_core*, i32, i32, i32) #1

declare dso_local i32 @tm6000_set_reg(%struct.tm6000_core*, i32, i32, ...) #1

declare dso_local i32 @tm6000_set_fourcc_format(%struct.tm6000_core*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @tm6000_set_standard(%struct.tm6000_core*) #1

declare dso_local i32 @tm6000_set_vbi(%struct.tm6000_core*) #1

declare dso_local i32 @tm6000_set_audio_bitrate(%struct.tm6000_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
