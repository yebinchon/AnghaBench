; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-audio.c_cx18_audio_set_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-audio.c_cx18_audio_set_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.cx18_card_audio_input*, %struct.cx18_card_audio_input }
%struct.cx18_card_audio_input = type { i32, i64 }

@CX18_F_I_RADIO_USER = common dso_local global i32 0, align 4
@audio = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@CX18_AUDIO_ENABLE = common dso_local global i32 0, align 4
@CX18_AI1_MUX_MASK = common dso_local global i32 0, align 4
@CX18_AI1_MUX_I2S1 = common dso_local global i32 0, align 4
@CX18_AI1_MUX_I2S2 = common dso_local global i32 0, align 4
@CX18_AI1_MUX_843_I2S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_audio_set_io(%struct.cx18* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.cx18_card_audio_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  %8 = load i32, i32* @CX18_F_I_RADIO_USER, align 4
  %9 = load %struct.cx18*, %struct.cx18** %3, align 8
  %10 = getelementptr inbounds %struct.cx18, %struct.cx18* %9, i32 0, i32 3
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.cx18*, %struct.cx18** %3, align 8
  %15 = getelementptr inbounds %struct.cx18, %struct.cx18* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store %struct.cx18_card_audio_input* %17, %struct.cx18_card_audio_input** %4, align 8
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.cx18*, %struct.cx18** %3, align 8
  %20 = getelementptr inbounds %struct.cx18, %struct.cx18* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.cx18_card_audio_input*, %struct.cx18_card_audio_input** %22, align 8
  %24 = load %struct.cx18*, %struct.cx18** %3, align 8
  %25 = getelementptr inbounds %struct.cx18, %struct.cx18* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.cx18_card_audio_input, %struct.cx18_card_audio_input* %23, i64 %26
  store %struct.cx18_card_audio_input* %27, %struct.cx18_card_audio_input** %4, align 8
  br label %28

28:                                               ; preds = %18, %13
  %29 = load %struct.cx18*, %struct.cx18** %3, align 8
  %30 = getelementptr inbounds %struct.cx18, %struct.cx18* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @audio, align 4
  %33 = load i32, i32* @s_routing, align 4
  %34 = load %struct.cx18_card_audio_input*, %struct.cx18_card_audio_input** %4, align 8
  %35 = getelementptr inbounds %struct.cx18_card_audio_input, %struct.cx18_card_audio_input* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @v4l2_subdev_call(i32 %31, i32 %32, i32 %33, i32 %37, i32 0, i32 0)
  %39 = load %struct.cx18*, %struct.cx18** %3, align 8
  %40 = load %struct.cx18*, %struct.cx18** %3, align 8
  %41 = getelementptr inbounds %struct.cx18, %struct.cx18* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @audio, align 4
  %46 = load i32, i32* @s_routing, align 4
  %47 = load %struct.cx18_card_audio_input*, %struct.cx18_card_audio_input** %4, align 8
  %48 = getelementptr inbounds %struct.cx18_card_audio_input, %struct.cx18_card_audio_input* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @cx18_call_hw_err(%struct.cx18* %39, i32 %44, i32 %45, i32 %46, i32 %49, i32 0, i32 0)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %28
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %118

55:                                               ; preds = %28
  %56 = load %struct.cx18*, %struct.cx18** %3, align 8
  %57 = load i32, i32* @CX18_AUDIO_ENABLE, align 4
  %58 = call i32 @cx18_read_reg(%struct.cx18* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @CX18_AI1_MUX_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  store i32 %62, i32* %6, align 4
  %63 = load %struct.cx18_card_audio_input*, %struct.cx18_card_audio_input** %4, align 8
  %64 = getelementptr inbounds %struct.cx18_card_audio_input, %struct.cx18_card_audio_input* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %74 [
    i32 129, label %66
    i32 128, label %70
  ]

66:                                               ; preds = %55
  %67 = load i32, i32* @CX18_AI1_MUX_I2S1, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %78

70:                                               ; preds = %55
  %71 = load i32, i32* @CX18_AI1_MUX_I2S2, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %78

74:                                               ; preds = %55
  %75 = load i32, i32* @CX18_AI1_MUX_843_I2S, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %70, %66
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %78
  %83 = load i32, i32* @CX18_AI1_MUX_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load %struct.cx18_card_audio_input*, %struct.cx18_card_audio_input** %4, align 8
  %88 = getelementptr inbounds %struct.cx18_card_audio_input, %struct.cx18_card_audio_input* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %98 [
    i32 129, label %90
    i32 128, label %94
  ]

90:                                               ; preds = %82
  %91 = load i32, i32* @CX18_AI1_MUX_843_I2S, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %102

94:                                               ; preds = %82
  %95 = load i32, i32* @CX18_AI1_MUX_843_I2S, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %102

98:                                               ; preds = %82
  %99 = load i32, i32* @CX18_AI1_MUX_I2S1, align 4
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %94, %90
  %103 = load %struct.cx18*, %struct.cx18** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, 2816
  %106 = load i32, i32* @CX18_AUDIO_ENABLE, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @CX18_AI1_MUX_MASK, align 4
  %109 = call i32 @cx18_write_reg_expect(%struct.cx18* %103, i32 %105, i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %102, %78
  %111 = load %struct.cx18*, %struct.cx18** %3, align 8
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, 2816
  %114 = load i32, i32* @CX18_AUDIO_ENABLE, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @CX18_AI1_MUX_MASK, align 4
  %117 = call i32 @cx18_write_reg_expect(%struct.cx18* %111, i32 %113, i32 %114, i32 %115, i32 %116)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %110, %53
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_call_hw_err(%struct.cx18*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_read_reg(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_write_reg_expect(%struct.cx18*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
