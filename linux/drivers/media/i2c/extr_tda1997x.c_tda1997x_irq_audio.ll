; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_irq_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_irq_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { i32, i64, i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@REG_INT_FLG_CLR_AUDIO = common dso_local global i32 0, align 4
@MASK_ERROR_FIFO_PT = common dso_local global i32 0, align 4
@MASK_MUTE_FLG = common dso_local global i32 0, align 4
@REG_SUS_STATUS = common dso_local global i32 0, align 4
@MASK_SUS_STATUS = common dso_local global i32 0, align 4
@LAST_STATE_REACHED = common dso_local global i32 0, align 4
@REG_HDMI_INFO_RST = common dso_local global i32 0, align 4
@MASK_SR_FIFO_FIFO_CTRL = common dso_local global i32 0, align 4
@MASK_CH_STATE = common dso_local global i32 0, align 4
@MASK_AUDIO_FREQ_FLG = common dso_local global i32 0, align 4
@tda1997x_irq_audio.freq = internal constant [8 x i32] [i32 0, i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], align 16
@REG_AUDIO_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Audio Frequency Change: %dHz\0A\00", align 1
@MASK_AUDIO_FLG = common dso_local global i32 0, align 4
@REG_AUDIO_FLAGS = common dso_local global i32 0, align 4
@AUDCFG_TYPE_DST = common dso_local global i8* null, align 8
@AUDCFG_TYPE_OBA = common dso_local global i8* null, align 8
@AUDCFG_TYPE_HBR = common dso_local global i8* null, align 8
@AUDCFG_TYPE_PCM = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Audio Type: %s\0A\00", align 1
@audtype_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda1997x_state*, i32*)* @tda1997x_irq_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda1997x_irq_audio(%struct.tda1997x_state* %0, i32* %1) #0 {
  %3 = alloca %struct.tda1997x_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %9 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %8, i32 0, i32 3
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = load i32, i32* @REG_INT_FLG_CLR_AUDIO, align 4
  %12 = call i32 @io_read(%struct.v4l2_subdev* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = load i32, i32* @REG_INT_FLG_CLR_AUDIO, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @io_write(%struct.v4l2_subdev* %13, i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MASK_ERROR_FIFO_PT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MASK_MUTE_FLG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %21, %2
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %28 = load i32, i32* @REG_SUS_STATUS, align 4
  %29 = call i32 @io_read(%struct.v4l2_subdev* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MASK_SUS_STATUS, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @LAST_STATE_REACHED, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %26
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %37 = load i32, i32* @REG_HDMI_INFO_RST, align 4
  %38 = call i32 @io_read(%struct.v4l2_subdev* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @MASK_SR_FIFO_FIFO_CTRL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %43 = load i32, i32* @REG_HDMI_INFO_RST, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @io_write(%struct.v4l2_subdev* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @MASK_SR_FIFO_FIFO_CTRL, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %51 = load i32, i32* @REG_HDMI_INFO_RST, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @io_write(%struct.v4l2_subdev* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @MASK_CH_STATE, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %35, %26
  br label %59

59:                                               ; preds = %58, %21
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @MASK_AUDIO_FREQ_FLG, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %66 = load i32, i32* @REG_AUDIO_FREQ, align 4
  %67 = call i32 @io_read(%struct.v4l2_subdev* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 7
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* @tda1997x_irq_audio.freq, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %74 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %76 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %79 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @v4l_info(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %64, %59
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @MASK_AUDIO_FLG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %145

87:                                               ; preds = %82
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %89 = load i32, i32* @REG_AUDIO_FLAGS, align 4
  %90 = call i32 @io_read(%struct.v4l2_subdev* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i8*, i8** @AUDCFG_TYPE_DST, align 8
  %93 = call i32 @BIT(i8* %92)
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load i8*, i8** @AUDCFG_TYPE_DST, align 8
  %98 = ptrtoint i8* %97 to i64
  %99 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %100 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %96, %87
  %102 = load i32, i32* %6, align 4
  %103 = load i8*, i8** @AUDCFG_TYPE_OBA, align 8
  %104 = call i32 @BIT(i8* %103)
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i8*, i8** @AUDCFG_TYPE_OBA, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %111 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %107, %101
  %113 = load i32, i32* %6, align 4
  %114 = load i8*, i8** @AUDCFG_TYPE_HBR, align 8
  %115 = call i32 @BIT(i8* %114)
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load i8*, i8** @AUDCFG_TYPE_HBR, align 8
  %120 = ptrtoint i8* %119 to i64
  %121 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %122 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %118, %112
  %124 = load i32, i32* %6, align 4
  %125 = load i8*, i8** @AUDCFG_TYPE_PCM, align 8
  %126 = call i32 @BIT(i8* %125)
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load i8*, i8** @AUDCFG_TYPE_PCM, align 8
  %131 = ptrtoint i8* %130 to i64
  %132 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %133 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %129, %123
  %135 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %136 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** @audtype_names, align 8
  %139 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %140 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @v4l_info(i32 %137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %134, %82
  ret void
}

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l_info(i32, i8*, i32) #1

declare dso_local i32 @BIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
