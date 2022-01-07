; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_set_lcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_set_lcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_format = type { i32** }
%struct.saa711x_state = type { i32, i64 }

@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@R_41_LCR_BASE = common dso_local global i64 0, align 8
@saa7115_cfg_vbi_on = common dso_local global i32 0, align 4
@saa7115_cfg_vbi_off = common dso_local global i32 0, align 4
@SAA7115 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_format*)* @saa711x_set_lcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa711x_set_lcr(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_format* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %5 = alloca %struct.saa711x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [24 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_sliced_vbi_format* %1, %struct.v4l2_sliced_vbi_format** %4, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %10)
  store %struct.saa711x_state* %11, %struct.saa711x_state** %5, align 8
  %12 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %13 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @V4L2_STD_625_50, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %18 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @R_41_LCR_BASE, align 8
  %21 = call i32 @saa711x_has_reg(i64 %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %251

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %32, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp sle i32 %26, 23
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 %30
  store i32 255, i32* %31, align 4
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %25

35:                                               ; preds = %25
  %36 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %37 = icmp eq %struct.v4l2_sliced_vbi_format* %36, null
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  store i32 6, i32* %8, align 4
  br label %42

42:                                               ; preds = %49, %41
  %43 = load i32, i32* %8, align 4
  %44 = icmp sle i32 %43, 23
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 %47
  store i32 221, i32* %48, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %42

52:                                               ; preds = %42
  br label %65

53:                                               ; preds = %38
  store i32 10, i32* %8, align 4
  br label %54

54:                                               ; preds = %61, %53
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %55, 21
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 %59
  store i32 221, i32* %60, align 4
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %54

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %52
  br label %221

66:                                               ; preds = %35
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %90, %69
  %71 = load i32, i32* %8, align 4
  %72 = icmp sle i32 %71, 5
  br i1 %72, label %73, label %93

73:                                               ; preds = %70
  %74 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %75 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 0, i32* %81, align 4
  %82 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %83 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %82, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %73
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %70

93:                                               ; preds = %70
  br label %143

94:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %115, %94
  %96 = load i32, i32* %8, align 4
  %97 = icmp sle i32 %96, 9
  br i1 %97, label %98, label %118

98:                                               ; preds = %95
  %99 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %100 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %99, i32 0, i32 0
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 0, i32* %106, align 4
  %107 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %108 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %107, i32 0, i32 0
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 0, i32* %114, align 4
  br label %115

115:                                              ; preds = %98
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %95

118:                                              ; preds = %95
  store i32 22, i32* %8, align 4
  br label %119

119:                                              ; preds = %139, %118
  %120 = load i32, i32* %8, align 4
  %121 = icmp sle i32 %120, 23
  br i1 %121, label %122, label %142

122:                                              ; preds = %119
  %123 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %124 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %123, i32 0, i32 0
  %125 = load i32**, i32*** %124, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 0, i32* %130, align 4
  %131 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %132 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %131, i32 0, i32 0
  %133 = load i32**, i32*** %132, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %122
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %119

142:                                              ; preds = %119
  br label %143

143:                                              ; preds = %142, %93
  store i32 6, i32* %8, align 4
  br label %144

144:                                              ; preds = %217, %143
  %145 = load i32, i32* %8, align 4
  %146 = icmp sle i32 %145, 23
  br i1 %146, label %147, label %220

147:                                              ; preds = %144
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 %149
  store i32 0, i32* %150, align 4
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %213, %147
  %152 = load i32, i32* %9, align 4
  %153 = icmp sle i32 %152, 1
  br i1 %153, label %154, label %216

154:                                              ; preds = %151
  %155 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %156 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %155, i32 0, i32 0
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sub nsw i32 1, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %157, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  switch i32 %166, label %212 [
    i32 0, label %167
    i32 130, label %176
    i32 131, label %185
    i32 128, label %194
    i32 129, label %203
  ]

167:                                              ; preds = %154
  %168 = load i32, i32* %9, align 4
  %169 = mul nsw i32 4, %168
  %170 = shl i32 15, %169
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %170
  store i32 %175, i32* %173, align 4
  br label %212

176:                                              ; preds = %154
  %177 = load i32, i32* %9, align 4
  %178 = mul nsw i32 4, %177
  %179 = shl i32 1, %178
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %179
  store i32 %184, i32* %182, align 4
  br label %212

185:                                              ; preds = %154
  %186 = load i32, i32* %9, align 4
  %187 = mul nsw i32 4, %186
  %188 = shl i32 4, %187
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %188
  store i32 %193, i32* %191, align 4
  br label %212

194:                                              ; preds = %154
  %195 = load i32, i32* %9, align 4
  %196 = mul nsw i32 4, %195
  %197 = shl i32 5, %196
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %197
  store i32 %202, i32* %200, align 4
  br label %212

203:                                              ; preds = %154
  %204 = load i32, i32* %9, align 4
  %205 = mul nsw i32 4, %204
  %206 = shl i32 7, %205
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %206
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %154, %203, %194, %185, %176, %167
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %151

216:                                              ; preds = %151
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %144

220:                                              ; preds = %144
  br label %221

221:                                              ; preds = %220, %65
  store i32 2, i32* %8, align 4
  br label %222

222:                                              ; preds = %237, %221
  %223 = load i32, i32* %8, align 4
  %224 = icmp sle i32 %223, 23
  br i1 %224, label %225, label %240

225:                                              ; preds = %222
  %226 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sub nsw i32 %227, 2
  %229 = sext i32 %228 to i64
  %230 = load i64, i64* @R_41_LCR_BASE, align 8
  %231 = add nsw i64 %229, %230
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @saa711x_write(%struct.v4l2_subdev* %226, i64 %231, i32 %235)
  br label %237

237:                                              ; preds = %225
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %8, align 4
  br label %222

240:                                              ; preds = %222
  %241 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %242 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %243 = icmp eq %struct.v4l2_sliced_vbi_format* %242, null
  br i1 %243, label %244, label %246

244:                                              ; preds = %240
  %245 = load i32, i32* @saa7115_cfg_vbi_on, align 4
  br label %248

246:                                              ; preds = %240
  %247 = load i32, i32* @saa7115_cfg_vbi_off, align 4
  br label %248

248:                                              ; preds = %246, %244
  %249 = phi i32 [ %245, %244 ], [ %247, %246 ]
  %250 = call i32 @saa711x_writeregs(%struct.v4l2_subdev* %241, i32 %249)
  br label %251

251:                                              ; preds = %248, %23
  ret void
}

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa711x_has_reg(i64, i64) #1

declare dso_local i32 @saa711x_write(%struct.v4l2_subdev*, i64, i32) #1

declare dso_local i32 @saa711x_writeregs(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
