; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_parse_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_parse_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { i32, i32, %struct.TYPE_7__, i32, i32, %struct.TYPE_8__*, %struct.v4l2_subdev }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%union.hdmi_infoframe = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"failed parsing %d byte infoframe: 0x%04x/0x%02x\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@RESET_AUDIO = common dso_local global i32 0, align 4
@REG_PIX_REPEAT = common dso_local global i32 0, align 4
@PIX_REPEAT_MASK_UP_SEL = common dso_local global i32 0, align 4
@HDMI_COLORSPACE_YUV422 = common dso_local global i32 0, align 4
@PIX_REPEAT_CHROMA = common dso_local global i32 0, align 4
@PIX_REPEAT_SHIFT = common dso_local global i32 0, align 4
@PIX_REPEAT_MASK_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda1997x_state*, i32)* @tda1997x_parse_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_parse_infoframe(%struct.tda1997x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tda1997x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %union.hdmi_infoframe, align 4
  %8 = alloca [40 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %13 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %12, i32 0, i32 6
  store %struct.v4l2_subdev* %13, %struct.v4l2_subdev** %6, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %17 = call i32 @io_readn(%struct.v4l2_subdev* %14, i32 %15, i32 160, i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %19 = call i32 @hdmi_infoframe_unpack(%union.hdmi_infoframe* %7, i32* %18, i32 160)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %24 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %23, i32 0, i32 5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %29 = load i32, i32* %28, align 16
  %30 = call i32 @v4l_err(%struct.TYPE_8__* %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %29)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  br label %168

32:                                               ; preds = %2
  %33 = load i32, i32* @KERN_INFO, align 4
  %34 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %35 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %34, i32 0, i32 5
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = call i32 @hdmi_infoframe_log(i32 %33, i32* %37, %union.hdmi_infoframe* %7)
  %39 = bitcast %union.hdmi_infoframe* %7 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %166 [
    i32 129, label %42
    i32 128, label %117
  ]

42:                                               ; preds = %32
  %43 = bitcast %union.hdmi_infoframe* %7 to %struct.TYPE_6__*
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %67 [
    i32 139, label %46
    i32 138, label %49
    i32 137, label %52
    i32 136, label %55
    i32 135, label %58
    i32 141, label %61
    i32 140, label %64
    i32 134, label %68
  ]

46:                                               ; preds = %42
  %47 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %48 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %47, i32 0, i32 0
  store i32 32000, i32* %48, align 8
  br label %69

49:                                               ; preds = %42
  %50 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %51 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %50, i32 0, i32 0
  store i32 44100, i32* %51, align 8
  br label %69

52:                                               ; preds = %42
  %53 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %54 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %53, i32 0, i32 0
  store i32 48000, i32* %54, align 8
  br label %69

55:                                               ; preds = %42
  %56 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %57 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %56, i32 0, i32 0
  store i32 88200, i32* %57, align 8
  br label %69

58:                                               ; preds = %42
  %59 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %60 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %59, i32 0, i32 0
  store i32 96000, i32* %60, align 8
  br label %69

61:                                               ; preds = %42
  %62 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %63 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %62, i32 0, i32 0
  store i32 176400, i32* %63, align 8
  br label %69

64:                                               ; preds = %42
  %65 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %66 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %65, i32 0, i32 0
  store i32 192000, i32* %66, align 8
  br label %69

67:                                               ; preds = %42
  br label %68

68:                                               ; preds = %42, %67
  br label %69

69:                                               ; preds = %68, %64, %61, %58, %55, %52, %49, %46
  %70 = bitcast %union.hdmi_infoframe* %7 to %struct.TYPE_6__*
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %83 [
    i32 133, label %73
    i32 132, label %76
    i32 131, label %79
    i32 130, label %82
  ]

73:                                               ; preds = %69
  %74 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %75 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %74, i32 0, i32 1
  store i32 16, i32* %75, align 4
  br label %84

76:                                               ; preds = %69
  %77 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %78 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %77, i32 0, i32 1
  store i32 20, i32* %78, align 4
  br label %84

79:                                               ; preds = %69
  %80 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %81 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %80, i32 0, i32 1
  store i32 24, i32* %81, align 4
  br label %84

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %69, %82
  br label %84

84:                                               ; preds = %83, %79, %76, %73
  %85 = bitcast %union.hdmi_infoframe* %7 to %struct.TYPE_6__*
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %89 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = bitcast %union.hdmi_infoframe* %7 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %84
  %95 = bitcast %union.hdmi_infoframe* %7 to %struct.TYPE_6__*
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %99 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %94
  %103 = bitcast %union.hdmi_infoframe* %7 to %struct.TYPE_6__*
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %107 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %109 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %110 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @tda1997x_configure_audout(%struct.v4l2_subdev* %108, i32 %111)
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %114 = load i32, i32* @RESET_AUDIO, align 4
  %115 = call i32 @tda1997x_hdmi_info_reset(%struct.v4l2_subdev* %113, i32 %114, i32 0)
  br label %116

116:                                              ; preds = %102, %94, %84
  br label %167

117:                                              ; preds = %32
  %118 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %119 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %118, i32 0, i32 2
  %120 = bitcast %union.hdmi_infoframe* %7 to %struct.TYPE_7__*
  %121 = bitcast %struct.TYPE_7__* %119 to i8*
  %122 = bitcast %struct.TYPE_7__* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 4 %122, i64 8, i1 false)
  %123 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %124 = call i32 @set_rgb_quantization_range(%struct.tda1997x_state* %123)
  %125 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %126 = load i32, i32* @REG_PIX_REPEAT, align 4
  %127 = call i32 @io_read(%struct.v4l2_subdev* %125, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* @PIX_REPEAT_MASK_UP_SEL, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %9, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = bitcast %union.hdmi_infoframe* %7 to %struct.TYPE_7__*
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @HDMI_COLORSPACE_YUV422, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %117
  %138 = load i32, i32* @PIX_REPEAT_CHROMA, align 4
  %139 = load i32, i32* @PIX_REPEAT_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %137, %117
  %144 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %145 = load i32, i32* @REG_PIX_REPEAT, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @io_write(%struct.v4l2_subdev* %144, i32 %145, i32 %146)
  %148 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %149 = load i32, i32* @REG_PIX_REPEAT, align 4
  %150 = call i32 @io_read(%struct.v4l2_subdev* %148, i32 %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* @PIX_REPEAT_MASK_REP, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %9, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %9, align 4
  %155 = bitcast %union.hdmi_infoframe* %7 to %struct.TYPE_7__*
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %9, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %9, align 4
  %160 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %161 = load i32, i32* @REG_PIX_REPEAT, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @io_write(%struct.v4l2_subdev* %160, i32 %161, i32 %162)
  %164 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %165 = call i32 @tda1997x_configure_csc(%struct.v4l2_subdev* %164)
  br label %167

166:                                              ; preds = %32
  br label %167

167:                                              ; preds = %166, %143, %116
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %167, %22
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @io_readn(%struct.v4l2_subdev*, i32, i32, i32*) #1

declare dso_local i32 @hdmi_infoframe_unpack(%union.hdmi_infoframe*, i32*, i32) #1

declare dso_local i32 @v4l_err(%struct.TYPE_8__*, i8*, i32, i32, i32) #1

declare dso_local i32 @hdmi_infoframe_log(i32, i32*, %union.hdmi_infoframe*) #1

declare dso_local i32 @tda1997x_configure_audout(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @tda1997x_hdmi_info_reset(%struct.v4l2_subdev*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_rgb_quantization_range(%struct.tda1997x_state*) #1

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @tda1997x_configure_csc(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
