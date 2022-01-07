; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_set_audio_decoder_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_set_audio_decoder_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GENERAL_CTL = common dso_local global i32 0, align 4
@FLD_AUD_CHAN1_SRC = common dso_local global i32 0, align 4
@AUD_CHAN_SRC_PARALLEL = common dso_local global i32 0, align 4
@AUD_IO_CTRL = common dso_local global i32 0, align 4
@AC97_CTL = common dso_local global i32 0, align 4
@FLD_AC97_UP2X_BYPASS = common dso_local global i32 0, align 4
@BAND_OUT_SEL = common dso_local global i32 0, align 4
@FLD_SRC3_IN_SEL = common dso_local global i32 0, align 4
@FLD_SRC3_CLK_SEL = common dso_local global i32 0, align 4
@FLD_PARALLEL1_SRC_SEL = common dso_local global i32 0, align 4
@DL_CTL = common dso_local global i32 0, align 4
@PATH1_CTL1 = common dso_local global i32 0, align 4
@PATH1_VOL_CTL = common dso_local global i32 0, align 4
@FLD_PATH1_AVC_THRESHOLD = common dso_local global i32 0, align 4
@PATH1_SC_CTL = common dso_local global i32 0, align 4
@FLD_PATH1_SC_THRESHOLD = common dso_local global i32 0, align 4
@FLD_SRC6_IN_SEL = common dso_local global i32 0, align 4
@FLD_SRC6_CLK_SEL = common dso_local global i32 0, align 4
@FLD_SRC5_IN_SEL = common dso_local global i32 0, align 4
@FLD_SRC5_CLK_SEL = common dso_local global i32 0, align 4
@FLD_SRC4_IN_SEL = common dso_local global i32 0, align 4
@FLD_SRC4_CLK_SEL = common dso_local global i32 0, align 4
@FLD_BASEBAND_BYPASS_CTL = common dso_local global i32 0, align 4
@FLD_AC97_SRC_SEL = common dso_local global i32 0, align 4
@FLD_I2S_SRC_SEL = common dso_local global i32 0, align 4
@FLD_PARALLEL2_SRC_SEL = common dso_local global i32 0, align 4
@FLD_I2S_PORT_DIR = common dso_local global i32 0, align 4
@FLD_I2S_OUT_SRC = common dso_local global i32 0, align 4
@FLD_AUD_CHAN3_SRC = common dso_local global i32 0, align 4
@FLD_AUD_CHAN2_SRC = common dso_local global i32 0, align 4
@VID_BLK_I2C_ADDRESS = common dso_local global i32 0, align 4
@CHIP_CTRL = common dso_local global i32 0, align 4
@FLD_SIF_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unknown tuner type configuring SIF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_set_audio_decoder_input(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %10 = load i32, i32* @GENERAL_CTL, align 4
  %11 = call i32 @vid_blk_read_byte(%struct.cx231xx* %9, i32 %10, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %15 = load i32, i32* @GENERAL_CTL, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @vid_blk_write_byte(%struct.cx231xx* %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %72 [
    i32 133, label %19
    i32 130, label %71
    i32 131, label %167
    i32 132, label %168
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @FLD_AUD_CHAN1_SRC, align 4
  %21 = load i32, i32* @AUD_CHAN_SRC_PARALLEL, align 4
  %22 = call i32 @cx231xx_set_field(i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %24 = load i32, i32* @AUD_IO_CTRL, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @vid_blk_write_word(%struct.cx231xx* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %28 = load i32, i32* @AC97_CTL, align 4
  %29 = call i32 @vid_blk_read_word(%struct.cx231xx* %27, i32 %28, i32* %5)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %31 = load i32, i32* @AC97_CTL, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @FLD_AC97_UP2X_BYPASS, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @vid_blk_write_word(%struct.cx231xx* %30, i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %37 = load i32, i32* @BAND_OUT_SEL, align 4
  %38 = load i32, i32* @FLD_SRC3_IN_SEL, align 4
  %39 = call i32 @cx231xx_set_field(i32 %38, i32 0)
  %40 = load i32, i32* @FLD_SRC3_CLK_SEL, align 4
  %41 = call i32 @cx231xx_set_field(i32 %40, i32 0)
  %42 = or i32 %39, %41
  %43 = load i32, i32* @FLD_PARALLEL1_SRC_SEL, align 4
  %44 = call i32 @cx231xx_set_field(i32 %43, i32 0)
  %45 = or i32 %42, %44
  %46 = call i32 @vid_blk_write_word(%struct.cx231xx* %36, i32 %37, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %48 = load i32, i32* @DL_CTL, align 4
  %49 = call i32 @vid_blk_write_word(%struct.cx231xx* %47, i32 %48, i32 50331649)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %51 = load i32, i32* @PATH1_CTL1, align 4
  %52 = call i32 @vid_blk_write_word(%struct.cx231xx* %50, i32 %51, i32 405619)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %54 = load i32, i32* @PATH1_VOL_CTL, align 4
  %55 = call i32 @vid_blk_read_word(%struct.cx231xx* %53, i32 %54, i32* %5)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %57 = load i32, i32* @PATH1_VOL_CTL, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @FLD_PATH1_AVC_THRESHOLD, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @vid_blk_write_word(%struct.cx231xx* %56, i32 %57, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %63 = load i32, i32* @PATH1_SC_CTL, align 4
  %64 = call i32 @vid_blk_read_word(%struct.cx231xx* %62, i32 %63, i32* %5)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %66 = load i32, i32* @PATH1_SC_CTL, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @FLD_PATH1_SC_THRESHOLD, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @vid_blk_write_word(%struct.cx231xx* %65, i32 %66, i32 %69)
  store i32 %70, i32* %6, align 4
  br label %172

71:                                               ; preds = %2
  br label %72

72:                                               ; preds = %2, %71
  %73 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %74 = call i32 @stopAudioFirmware(%struct.cx231xx* %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %76 = load i32, i32* @BAND_OUT_SEL, align 4
  %77 = load i32, i32* @FLD_SRC6_IN_SEL, align 4
  %78 = call i32 @cx231xx_set_field(i32 %77, i32 0)
  %79 = load i32, i32* @FLD_SRC6_CLK_SEL, align 4
  %80 = call i32 @cx231xx_set_field(i32 %79, i32 1)
  %81 = or i32 %78, %80
  %82 = load i32, i32* @FLD_SRC5_IN_SEL, align 4
  %83 = call i32 @cx231xx_set_field(i32 %82, i32 0)
  %84 = or i32 %81, %83
  %85 = load i32, i32* @FLD_SRC5_CLK_SEL, align 4
  %86 = call i32 @cx231xx_set_field(i32 %85, i32 2)
  %87 = or i32 %84, %86
  %88 = load i32, i32* @FLD_SRC4_IN_SEL, align 4
  %89 = call i32 @cx231xx_set_field(i32 %88, i32 2)
  %90 = or i32 %87, %89
  %91 = load i32, i32* @FLD_SRC4_CLK_SEL, align 4
  %92 = call i32 @cx231xx_set_field(i32 %91, i32 3)
  %93 = or i32 %90, %92
  %94 = load i32, i32* @FLD_SRC3_IN_SEL, align 4
  %95 = call i32 @cx231xx_set_field(i32 %94, i32 0)
  %96 = or i32 %93, %95
  %97 = load i32, i32* @FLD_SRC3_CLK_SEL, align 4
  %98 = call i32 @cx231xx_set_field(i32 %97, i32 0)
  %99 = or i32 %96, %98
  %100 = load i32, i32* @FLD_BASEBAND_BYPASS_CTL, align 4
  %101 = call i32 @cx231xx_set_field(i32 %100, i32 0)
  %102 = or i32 %99, %101
  %103 = load i32, i32* @FLD_AC97_SRC_SEL, align 4
  %104 = call i32 @cx231xx_set_field(i32 %103, i32 3)
  %105 = or i32 %102, %104
  %106 = load i32, i32* @FLD_I2S_SRC_SEL, align 4
  %107 = call i32 @cx231xx_set_field(i32 %106, i32 0)
  %108 = or i32 %105, %107
  %109 = load i32, i32* @FLD_PARALLEL2_SRC_SEL, align 4
  %110 = call i32 @cx231xx_set_field(i32 %109, i32 2)
  %111 = or i32 %108, %110
  %112 = load i32, i32* @FLD_PARALLEL1_SRC_SEL, align 4
  %113 = call i32 @cx231xx_set_field(i32 %112, i32 1)
  %114 = or i32 %111, %113
  %115 = call i32 @vid_blk_write_word(%struct.cx231xx* %75, i32 %76, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %117 = load i32, i32* @AUD_IO_CTRL, align 4
  %118 = load i32, i32* @FLD_I2S_PORT_DIR, align 4
  %119 = call i32 @cx231xx_set_field(i32 %118, i32 0)
  %120 = load i32, i32* @FLD_I2S_OUT_SRC, align 4
  %121 = call i32 @cx231xx_set_field(i32 %120, i32 0)
  %122 = or i32 %119, %121
  %123 = load i32, i32* @FLD_AUD_CHAN3_SRC, align 4
  %124 = call i32 @cx231xx_set_field(i32 %123, i32 0)
  %125 = or i32 %122, %124
  %126 = load i32, i32* @FLD_AUD_CHAN2_SRC, align 4
  %127 = call i32 @cx231xx_set_field(i32 %126, i32 0)
  %128 = or i32 %125, %127
  %129 = load i32, i32* @FLD_AUD_CHAN1_SRC, align 4
  %130 = call i32 @cx231xx_set_field(i32 %129, i32 3)
  %131 = or i32 %128, %130
  %132 = call i32 @vid_blk_write_word(%struct.cx231xx* %116, i32 %117, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %134 = load i32, i32* @PATH1_CTL1, align 4
  %135 = call i32 @vid_blk_write_word(%struct.cx231xx* %133, i32 %134, i32 520501360)
  store i32 %135, i32* %6, align 4
  %136 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %137 = load i32, i32* @PATH1_CTL1, align 4
  %138 = call i32 @vid_blk_write_word(%struct.cx231xx* %136, i32 %137, i32 407664)
  store i32 %138, i32* %6, align 4
  %139 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %140 = call i32 @restartAudioFirmware(%struct.cx231xx* %139)
  store i32 %140, i32* %6, align 4
  %141 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %142 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %161 [
    i32 128, label %145
    i32 129, label %153
  ]

145:                                              ; preds = %72
  %146 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %147 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %148 = load i32, i32* @CHIP_CTRL, align 4
  %149 = load i32, i32* @FLD_SIF_EN, align 4
  %150 = load i32, i32* @FLD_SIF_EN, align 4
  %151 = call i32 @cx231xx_set_field(i32 %150, i32 1)
  %152 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %146, i32 %147, i32 %148, i32 %149, i32 %151)
  store i32 %152, i32* %6, align 4
  br label %166

153:                                              ; preds = %72
  %154 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %155 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %156 = load i32, i32* @CHIP_CTRL, align 4
  %157 = load i32, i32* @FLD_SIF_EN, align 4
  %158 = load i32, i32* @FLD_SIF_EN, align 4
  %159 = call i32 @cx231xx_set_field(i32 %158, i32 0)
  %160 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %154, i32 %155, i32 %156, i32 %157, i32 %159)
  store i32 %160, i32* %6, align 4
  br label %166

161:                                              ; preds = %72
  %162 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %163 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dev_info(i32 %164, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %166

166:                                              ; preds = %161, %153, %145
  br label %172

167:                                              ; preds = %2
  br label %172

168:                                              ; preds = %2
  %169 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %170 = load i32, i32* @PATH1_CTL1, align 4
  %171 = call i32 @vid_blk_write_word(%struct.cx231xx* %169, i32 %170, i32 520163346)
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %168, %167, %166, %19
  %173 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %174 = load i32, i32* @GENERAL_CTL, align 4
  %175 = call i32 @vid_blk_read_byte(%struct.cx231xx* %173, i32 %174, i32* %7)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %7, align 4
  %177 = and i32 %176, -2
  store i32 %177, i32* %7, align 4
  %178 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %179 = load i32, i32* @GENERAL_CTL, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @vid_blk_write_byte(%struct.cx231xx* %178, i32 %179, i32 %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i32 @vid_blk_read_byte(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @vid_blk_write_byte(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_set_field(i32, i32) #1

declare dso_local i32 @vid_blk_write_word(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @vid_blk_read_word(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @stopAudioFirmware(%struct.cx231xx*) #1

declare dso_local i32 @restartAudioFirmware(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
