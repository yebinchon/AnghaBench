; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-vbi.c_cx18_av_s_sliced_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-vbi.c_cx18_av_s_sliced_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_format = type { i32** }
%struct.cx18 = type { %struct.cx18_av_state }
%struct.cx18_av_state = type { i32, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_av_s_sliced_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_format* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca %struct.cx18_av_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [24 x i32], align 16
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_sliced_vbi_format* %1, %struct.v4l2_sliced_vbi_format** %4, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.cx18* %12, %struct.cx18** %5, align 8
  %13 = load %struct.cx18*, %struct.cx18** %5, align 8
  %14 = getelementptr inbounds %struct.cx18, %struct.cx18* %13, i32 0, i32 0
  store %struct.cx18_av_state* %14, %struct.cx18_av_state** %6, align 8
  %15 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %16 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @V4L2_STD_525_60, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %30, %2
  %24 = load i32, i32* %9, align 4
  %25 = icmp sle i32 %24, 23
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %28
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %23

33:                                               ; preds = %23
  %34 = load %struct.cx18*, %struct.cx18** %5, align 8
  %35 = call i32 @cx18_av_std_setup(%struct.cx18* %34)
  %36 = load %struct.cx18*, %struct.cx18** %5, align 8
  %37 = call i32 @cx18_av_write(%struct.cx18* %36, i32 1028, i32 50)
  %38 = load %struct.cx18*, %struct.cx18** %5, align 8
  %39 = call i32 @cx18_av_write(%struct.cx18* %38, i32 1030, i32 19)
  %40 = load %struct.cx18*, %struct.cx18** %5, align 8
  %41 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %42 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cx18_av_write(%struct.cx18* %40, i32 1151, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 %49, 6
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %53 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 0, i32* %59, align 4
  %60 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %61 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %51
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %48

71:                                               ; preds = %48
  br label %121

72:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %93, %72
  %74 = load i32, i32* %8, align 4
  %75 = icmp sle i32 %74, 9
  br i1 %75, label %76, label %96

76:                                               ; preds = %73
  %77 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %78 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 0, i32* %84, align 4
  %85 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %86 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %76
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %73

96:                                               ; preds = %73
  store i32 22, i32* %8, align 4
  br label %97

97:                                               ; preds = %117, %96
  %98 = load i32, i32* %8, align 4
  %99 = icmp sle i32 %98, 23
  br i1 %99, label %100, label %120

100:                                              ; preds = %97
  %101 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %102 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %101, i32 0, i32 0
  %103 = load i32**, i32*** %102, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 0, i32* %108, align 4
  %109 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %110 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %109, i32 0, i32 0
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %100
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %97

120:                                              ; preds = %97
  br label %121

121:                                              ; preds = %120, %71
  store i32 7, i32* %8, align 4
  br label %122

122:                                              ; preds = %183, %121
  %123 = load i32, i32* %8, align 4
  %124 = icmp sle i32 %123, 23
  br i1 %124, label %125, label %186

125:                                              ; preds = %122
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %179, %125
  %127 = load i32, i32* %9, align 4
  %128 = icmp sle i32 %127, 1
  br i1 %128, label %129, label %182

129:                                              ; preds = %126
  %130 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %131 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %130, i32 0, i32 0
  %132 = load i32**, i32*** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 1, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %132, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  switch i32 %141, label %178 [
    i32 130, label %142
    i32 128, label %151
    i32 131, label %160
    i32 129, label %169
  ]

142:                                              ; preds = %129
  %143 = load i32, i32* %9, align 4
  %144 = mul nsw i32 4, %143
  %145 = shl i32 1, %144
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %145
  store i32 %150, i32* %148, align 4
  br label %178

151:                                              ; preds = %129
  %152 = load i32, i32* %9, align 4
  %153 = mul nsw i32 4, %152
  %154 = shl i32 4, %153
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %154
  store i32 %159, i32* %157, align 4
  br label %178

160:                                              ; preds = %129
  %161 = load i32, i32* %9, align 4
  %162 = mul nsw i32 4, %161
  %163 = shl i32 6, %162
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %163
  store i32 %168, i32* %166, align 4
  br label %178

169:                                              ; preds = %129
  %170 = load i32, i32* %9, align 4
  %171 = mul nsw i32 4, %170
  %172 = shl i32 9, %171
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %172
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %129, %169, %160, %151, %142
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %126

182:                                              ; preds = %126
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %122

186:                                              ; preds = %122
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %208

189:                                              ; preds = %186
  store i32 1, i32* %9, align 4
  store i32 1060, i32* %8, align 4
  br label %190

190:                                              ; preds = %202, %189
  %191 = load i32, i32* %8, align 4
  %192 = icmp sle i32 %191, 1076
  br i1 %192, label %193, label %207

193:                                              ; preds = %190
  %194 = load %struct.cx18*, %struct.cx18** %5, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 6, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @cx18_av_write(%struct.cx18* %194, i32 %195, i32 %200)
  br label %202

202:                                              ; preds = %193
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  br label %190

207:                                              ; preds = %190
  br label %238

208:                                              ; preds = %186
  store i32 1, i32* %9, align 4
  store i32 1060, i32* %8, align 4
  br label %209

209:                                              ; preds = %221, %208
  %210 = load i32, i32* %8, align 4
  %211 = icmp sle i32 %210, 1072
  br i1 %211, label %212, label %226

212:                                              ; preds = %209
  %213 = load %struct.cx18*, %struct.cx18** %5, align 8
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 9, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @cx18_av_write(%struct.cx18* %213, i32 %214, i32 %219)
  br label %221

221:                                              ; preds = %212
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %8, align 4
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %9, align 4
  br label %209

226:                                              ; preds = %209
  store i32 1073, i32* %8, align 4
  br label %227

227:                                              ; preds = %234, %226
  %228 = load i32, i32* %8, align 4
  %229 = icmp sle i32 %228, 1076
  br i1 %229, label %230, label %237

230:                                              ; preds = %227
  %231 = load %struct.cx18*, %struct.cx18** %5, align 8
  %232 = load i32, i32* %8, align 4
  %233 = call i32 @cx18_av_write(%struct.cx18* %231, i32 %232, i32 0)
  br label %234

234:                                              ; preds = %230
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %227

237:                                              ; preds = %227
  br label %238

238:                                              ; preds = %237, %207
  %239 = load %struct.cx18*, %struct.cx18** %5, align 8
  %240 = call i32 @cx18_av_write(%struct.cx18* %239, i32 1084, i32 22)
  %241 = load %struct.cx18*, %struct.cx18** %5, align 8
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i32 38, i32 26
  %246 = call i32 @cx18_av_write(%struct.cx18* %241, i32 1140, i32 %245)
  ret i32 0
}

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx18_av_std_setup(%struct.cx18*) #1

declare dso_local i32 @cx18_av_write(%struct.cx18*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
