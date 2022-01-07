; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_set_v4lstd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_set_v4lstd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa711x_state = type { i64, i64, i32 }

@V4L2_STD_525_60 = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"decoder set standard 60 Hz\0A\00", align 1
@GM7113C = common dso_local global i64 0, align 8
@R_08_SYNC_CNTL = common dso_local global i32 0, align 4
@SAA7113_R_08_FSEL = common dso_local global i32 0, align 4
@SAA7113_R_08_AUFD = common dso_local global i32 0, align 4
@saa7115_cfg_60hz_video = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"decoder set standard 50 Hz\0A\00", align 1
@saa7115_cfg_50hz_video = common dso_local global i32 0, align 4
@SAA7113 = common dso_local global i64 0, align 8
@R_0E_CHROMA_CNTL_1 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i64 0, align 8
@V4L2_STD_PAL_Nc = common dso_local global i64 0, align 8
@V4L2_STD_PAL_60 = common dso_local global i64 0, align 8
@V4L2_STD_NTSC_M_JP = common dso_local global i64 0, align 8
@V4L2_STD_SECAM = common dso_local global i64 0, align 8
@R_80_GLOBAL_CNTL_1 = common dso_local global i32 0, align 4
@SAA7114 = common dso_local global i64 0, align 8
@saa7115_cfg_vbi_on = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i64)* @saa711x_set_v4lstd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa711x_set_v4lstd(%struct.v4l2_subdev* %0, i64 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.saa711x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %10)
  store %struct.saa711x_state* %11, %struct.saa711x_state** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %14 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %173

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %21 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @V4L2_STD_525_60, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %18
  %27 = load i32, i32* @debug, align 4
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %29 = call i32 @v4l2_dbg(i32 1, i32 %27, %struct.v4l2_subdev* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %31 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GM7113C, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %26
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %37 = load i32, i32* @R_08_SYNC_CNTL, align 4
  %38 = call i32 @saa711x_read(%struct.v4l2_subdev* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @SAA7113_R_08_FSEL, align 4
  %40 = load i32, i32* @SAA7113_R_08_AUFD, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @SAA7113_R_08_FSEL, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %49 = load i32, i32* @R_08_SYNC_CNTL, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @saa711x_write(%struct.v4l2_subdev* %48, i32 %49, i32 %50)
  br label %56

52:                                               ; preds = %26
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %54 = load i32, i32* @saa7115_cfg_60hz_video, align 4
  %55 = call i32 @saa711x_writeregs(%struct.v4l2_subdev* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %35
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %58 = call i32 @saa711x_set_size(%struct.v4l2_subdev* %57, i32 720, i32 480)
  br label %89

59:                                               ; preds = %18
  %60 = load i32, i32* @debug, align 4
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %62 = call i32 @v4l2_dbg(i32 1, i32 %60, %struct.v4l2_subdev* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %64 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GM7113C, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %59
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %70 = load i32, i32* @R_08_SYNC_CNTL, align 4
  %71 = call i32 @saa711x_read(%struct.v4l2_subdev* %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @SAA7113_R_08_FSEL, align 4
  %73 = load i32, i32* @SAA7113_R_08_AUFD, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %79 = load i32, i32* @R_08_SYNC_CNTL, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @saa711x_write(%struct.v4l2_subdev* %78, i32 %79, i32 %80)
  br label %86

82:                                               ; preds = %59
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %84 = load i32, i32* @saa7115_cfg_50hz_video, align 4
  %85 = call i32 @saa711x_writeregs(%struct.v4l2_subdev* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %68
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %88 = call i32 @saa711x_set_size(%struct.v4l2_subdev* %87, i32 720, i32 576)
  br label %89

89:                                               ; preds = %86, %56
  %90 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %91 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SAA7113, align 8
  %94 = icmp sle i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %97 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @GM7113C, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %150

101:                                              ; preds = %95, %89
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %103 = load i32, i32* @R_0E_CHROMA_CNTL_1, align 4
  %104 = call i32 @saa711x_read(%struct.v4l2_subdev* %102, i32 %103)
  %105 = and i32 %104, 143
  store i32 %105, i32* %8, align 4
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* @V4L2_STD_PAL_M, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, 48
  store i32 %111, i32* %8, align 4
  br label %145

112:                                              ; preds = %101
  %113 = load i64, i64* %4, align 8
  %114 = load i64, i64* @V4L2_STD_PAL_Nc, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, 32
  store i32 %118, i32* %8, align 4
  br label %144

119:                                              ; preds = %112
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* @V4L2_STD_PAL_60, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, 16
  store i32 %125, i32* %8, align 4
  br label %143

126:                                              ; preds = %119
  %127 = load i64, i64* %4, align 8
  %128 = load i64, i64* @V4L2_STD_NTSC_M_JP, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, 64
  store i32 %132, i32* %8, align 4
  br label %142

133:                                              ; preds = %126
  %134 = load i64, i64* %4, align 8
  %135 = load i64, i64* @V4L2_STD_SECAM, align 8
  %136 = and i64 %134, %135
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* %8, align 4
  %140 = or i32 %139, 80
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %138, %133
  br label %142

142:                                              ; preds = %141, %130
  br label %143

143:                                              ; preds = %142, %123
  br label %144

144:                                              ; preds = %143, %116
  br label %145

145:                                              ; preds = %144, %109
  %146 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %147 = load i32, i32* @R_0E_CHROMA_CNTL_1, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @saa711x_write(%struct.v4l2_subdev* %146, i32 %147, i32 %148)
  br label %173

150:                                              ; preds = %95
  %151 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %152 = load i32, i32* @R_80_GLOBAL_CNTL_1, align 4
  %153 = call i32 @saa711x_read(%struct.v4l2_subdev* %151, i32 %152)
  %154 = and i32 %153, 16
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %150
  %158 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %159 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @SAA7114, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %165 = load i32, i32* @saa7115_cfg_vbi_on, align 4
  %166 = call i32 @saa711x_writeregs(%struct.v4l2_subdev* %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %157, %150
  %168 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %169 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %170 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @saa711x_s_clock_freq(%struct.v4l2_subdev* %168, i32 %171)
  br label %173

173:                                              ; preds = %17, %167, %145
  ret void
}

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @saa711x_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @saa711x_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @saa711x_writeregs(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @saa711x_set_size(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @saa711x_s_clock_freq(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
