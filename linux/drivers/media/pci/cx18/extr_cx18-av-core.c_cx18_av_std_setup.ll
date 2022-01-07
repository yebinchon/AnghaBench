; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_std_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_std_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.cx18_av_state }
%struct.cx18_av_state = type { i32, i32, i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PLL regs = int: %u, frac: %u, post: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Video PLL = %d.%06d MHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Pixel rate = %d.%06d Mpixel/sec\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"ADC XTAL/pixel clock decimation ratio = %d.%03d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Chroma sub-carrier initial freq = %d.%06d MHz\0A\00", align 1
@.str.5 = private unnamed_addr constant [134 x i8] c"hblank %i, hactive %i, vblank %i, vactive %i, vblank656 %i, src_dec %i, burst 0x%02x, luma_lpf %i, uv_lpf %i, comb 0x%02x, sc 0x%06x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_av_std_setup(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca %struct.cx18_av_state*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %23 = load %struct.cx18*, %struct.cx18** %2, align 8
  %24 = getelementptr inbounds %struct.cx18, %struct.cx18* %23, i32 0, i32 0
  store %struct.cx18_av_state* %24, %struct.cx18_av_state** %3, align 8
  %25 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %26 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %25, i32 0, i32 3
  store %struct.v4l2_subdev* %26, %struct.v4l2_subdev** %4, align 8
  %27 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %28 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  store i32 543, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @V4L2_STD_NTSC, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load %struct.cx18*, %struct.cx18** %2, align 8
  %37 = call i32 @cx18_av_write(%struct.cx18* %36, i32 1183, i32 17)
  br label %41

38:                                               ; preds = %1
  %39 = load %struct.cx18*, %struct.cx18** %2, align 8
  %40 = call i32 @cx18_av_write(%struct.cx18* %39, i32 1183, i32 20)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @V4L2_STD_625_50, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  store i32 48, i32* %13, align 4
  store i32 38, i32* %10, align 4
  store i32 579, i32* %11, align 4
  store i32 132, i32* %7, align 4
  store i32 720, i32* %8, align 4
  store i32 93, i32* %9, align 4
  store i32 2, i32* %14, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @V4L2_STD_PAL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %15, align 4
  store i32 32, i32* %16, align 4
  store i32 688700, i32* %12, align 4
  br label %59

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 1, i32* %15, align 4
  store i32 32, i32* %16, align 4
  store i32 556422, i32* %12, align 4
  br label %58

57:                                               ; preds = %52
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 672314, i32* %12, align 4
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %51
  br label %73

60:                                               ; preds = %41
  store i32 38, i32* %13, align 4
  store i32 26, i32* %10, align 4
  store i32 481, i32* %11, align 4
  store i32 720, i32* %8, align 4
  store i32 122, i32* %7, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 90, i32* %9, align 4
  store i32 2, i32* %14, align 4
  store i32 32, i32* %16, align 4
  store i32 688700, i32* %12, align 4
  br label %72

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 97, i32* %9, align 4
  store i32 32, i32* %16, align 4
  store i32 555421, i32* %12, align 4
  br label %71

70:                                               ; preds = %65
  store i32 90, i32* %9, align 4
  store i32 102, i32* %16, align 4
  store i32 556032, i32* %12, align 4
  br label %71

71:                                               ; preds = %70, %69
  br label %72

72:                                               ; preds = %71, %64
  br label %73

73:                                               ; preds = %72, %59
  %74 = load %struct.cx18*, %struct.cx18** %2, align 8
  %75 = call i32 @cx18_av_read(%struct.cx18* %74, i32 264)
  store i32 %75, i32* %17, align 4
  %76 = load %struct.cx18*, %struct.cx18** %2, align 8
  %77 = call i32 @cx18_av_read4(%struct.cx18* %76, i32 268)
  %78 = and i32 %77, 33554431
  store i32 %78, i32* %18, align 4
  %79 = load %struct.cx18*, %struct.cx18** %2, align 8
  %80 = call i32 @cx18_av_read(%struct.cx18* %79, i32 265)
  store i32 %80, i32* %19, align 4
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %19, align 4
  %85 = call i32 (%struct.v4l2_subdev*, i8*, i32, i32, ...) @CX18_DEBUG_INFO_DEV(%struct.v4l2_subdev* %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %139

88:                                               ; preds = %73
  %89 = load i32, i32* %17, align 4
  %90 = shl i32 %89, 25
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = mul nsw i64 28636360, %93
  %95 = ashr i64 %94, 25
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %21, align 4
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %21, align 4
  %99 = sdiv i32 %98, %97
  store i32 %99, i32* %21, align 4
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %101 = load i32, i32* %21, align 4
  %102 = sdiv i32 %101, 1000000
  %103 = load i32, i32* %21, align 4
  %104 = srem i32 %103, 1000000
  %105 = call i32 (%struct.v4l2_subdev*, i8*, i32, i32, ...) @CX18_DEBUG_INFO_DEV(%struct.v4l2_subdev* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %104)
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %107 = load i32, i32* %21, align 4
  %108 = sdiv i32 %107, 8000000
  %109 = load i32, i32* %21, align 4
  %110 = sdiv i32 %109, 8
  %111 = srem i32 %110, 1000000
  %112 = call i32 (%struct.v4l2_subdev*, i8*, i32, i32, ...) @CX18_DEBUG_INFO_DEV(%struct.v4l2_subdev* %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %111)
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %114 = call i32 (%struct.v4l2_subdev*, i8*, i32, i32, ...) @CX18_DEBUG_INFO_DEV(%struct.v4l2_subdev* %113, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 121)
  %115 = load i32, i32* %12, align 4
  %116 = mul nsw i32 28636360, %115
  store i32 %116, i32* %22, align 4
  %117 = load i32, i32* %22, align 4
  %118 = call i32 @do_div(i32 %117, i32 543)
  %119 = load i32, i32* %22, align 4
  %120 = ashr i32 %119, 13
  store i32 %120, i32* %20, align 4
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %122 = load i32, i32* %20, align 4
  %123 = sdiv i32 %122, 1000000
  %124 = load i32, i32* %20, align 4
  %125 = srem i32 %124, 1000000
  %126 = call i32 (%struct.v4l2_subdev*, i8*, i32, i32, ...) @CX18_DEBUG_INFO_DEV(%struct.v4l2_subdev* %121, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32 %125)
  %127 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 (%struct.v4l2_subdev*, i8*, i32, i32, ...) @CX18_DEBUG_INFO_DEV(%struct.v4l2_subdev* %127, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.5, i64 0, i64 0), i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 543, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %88, %73
  %140 = load %struct.cx18*, %struct.cx18** %2, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @cx18_av_write(%struct.cx18* %140, i32 1136, i32 %141)
  %143 = load %struct.cx18*, %struct.cx18** %2, align 8
  %144 = load i32, i32* %7, align 4
  %145 = ashr i32 %144, 8
  %146 = and i32 %145, 3
  %147 = load i32, i32* %8, align 4
  %148 = shl i32 %147, 4
  %149 = or i32 %146, %148
  %150 = and i32 %149, 255
  %151 = call i32 @cx18_av_write(%struct.cx18* %143, i32 1137, i32 %150)
  %152 = load %struct.cx18*, %struct.cx18** %2, align 8
  %153 = load i32, i32* %8, align 4
  %154 = ashr i32 %153, 4
  %155 = call i32 @cx18_av_write(%struct.cx18* %152, i32 1138, i32 %154)
  %156 = load %struct.cx18*, %struct.cx18** %2, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @cx18_av_write(%struct.cx18* %156, i32 1139, i32 %157)
  %159 = load %struct.cx18*, %struct.cx18** %2, align 8
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @cx18_av_write(%struct.cx18* %159, i32 1140, i32 %160)
  %162 = load %struct.cx18*, %struct.cx18** %2, align 8
  %163 = load i32, i32* %10, align 4
  %164 = ashr i32 %163, 8
  %165 = and i32 %164, 3
  %166 = load i32, i32* %11, align 4
  %167 = shl i32 %166, 4
  %168 = or i32 %165, %167
  %169 = and i32 %168, 255
  %170 = call i32 @cx18_av_write(%struct.cx18* %162, i32 1141, i32 %169)
  %171 = load %struct.cx18*, %struct.cx18** %2, align 8
  %172 = load i32, i32* %11, align 4
  %173 = ashr i32 %172, 4
  %174 = call i32 @cx18_av_write(%struct.cx18* %171, i32 1142, i32 %173)
  %175 = load %struct.cx18*, %struct.cx18** %2, align 8
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @cx18_av_write(%struct.cx18* %175, i32 1143, i32 %176)
  %178 = load %struct.cx18*, %struct.cx18** %2, align 8
  %179 = call i32 @cx18_av_write(%struct.cx18* %178, i32 1144, i32 31)
  %180 = load %struct.cx18*, %struct.cx18** %2, align 8
  %181 = call i32 @cx18_av_write(%struct.cx18* %180, i32 1145, i32 2)
  %182 = load %struct.cx18*, %struct.cx18** %2, align 8
  %183 = load i32, i32* %14, align 4
  %184 = shl i32 %183, 6
  %185 = load i32, i32* %15, align 4
  %186 = shl i32 %185, 4
  %187 = and i32 %186, 48
  %188 = or i32 %184, %187
  %189 = call i32 @cx18_av_write(%struct.cx18* %182, i32 1146, i32 %188)
  %190 = load %struct.cx18*, %struct.cx18** %2, align 8
  %191 = load i32, i32* %16, align 4
  %192 = call i32 @cx18_av_write(%struct.cx18* %190, i32 1147, i32 %191)
  %193 = load %struct.cx18*, %struct.cx18** %2, align 8
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @cx18_av_write(%struct.cx18* %193, i32 1148, i32 %194)
  %196 = load %struct.cx18*, %struct.cx18** %2, align 8
  %197 = load i32, i32* %12, align 4
  %198 = ashr i32 %197, 8
  %199 = and i32 %198, 255
  %200 = call i32 @cx18_av_write(%struct.cx18* %196, i32 1149, i32 %199)
  %201 = load %struct.cx18*, %struct.cx18** %2, align 8
  %202 = load i32, i32* %12, align 4
  %203 = ashr i32 %202, 16
  %204 = and i32 %203, 255
  %205 = call i32 @cx18_av_write(%struct.cx18* %201, i32 1150, i32 %204)
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* @V4L2_STD_625_50, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %139
  %211 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %212 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %211, i32 0, i32 1
  store i32 1, i32* %212, align 4
  %213 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %214 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 6, %215
  %217 = sub nsw i32 %216, 2
  %218 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %219 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  br label %230

220:                                              ; preds = %139
  %221 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %222 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %221, i32 0, i32 1
  store i32 0, i32* %222, align 4
  %223 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %224 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 10, %225
  %227 = sub nsw i32 %226, 2
  %228 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %229 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %220, %210
  %231 = load %struct.cx18*, %struct.cx18** %2, align 8
  %232 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %233 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @cx18_av_write(%struct.cx18* %231, i32 1151, i32 %234)
  ret void
}

declare dso_local i32 @cx18_av_write(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_av_read(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_av_read4(%struct.cx18*, i32) #1

declare dso_local i32 @CX18_DEBUG_INFO_DEV(%struct.v4l2_subdev*, i8*, i32, i32, ...) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
