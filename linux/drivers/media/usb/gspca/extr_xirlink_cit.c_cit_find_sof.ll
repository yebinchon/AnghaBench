; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_find_sof.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_find_sof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sd = type { i32, i32, i32 }

@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"header found at offset: %d: %02x %02x 00 %3ph\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"header found at offset: %d: 00 %3ph\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.gspca_dev*, i32*, i32)* @cit_find_sof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cit_find_sof(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.sd*, %struct.sd** %8, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %259 [
    i32 132, label %17
    i32 131, label %17
    i32 129, label %17
    i32 133, label %17
    i32 130, label %176
    i32 128, label %176
  ]

17:                                               ; preds = %3, %3, %3, %3
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %27 [
    i32 160, label %22
    i32 176, label %23
    i32 320, label %24
    i32 352, label %25
    i32 640, label %26
  ]

22:                                               ; preds = %17
  store i32 2, i32* %9, align 4
  store i32 10, i32* %10, align 4
  br label %27

23:                                               ; preds = %17
  store i32 2, i32* %9, align 4
  store i32 14, i32* %10, align 4
  br label %27

24:                                               ; preds = %17
  store i32 2, i32* %9, align 4
  store i32 8, i32* %10, align 4
  br label %27

25:                                               ; preds = %17
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %27

26:                                               ; preds = %17
  store i32 3, i32* %9, align 4
  store i32 8, i32* %10, align 4
  br label %27

27:                                               ; preds = %17, %26, %25, %24, %23, %22
  %28 = load %struct.sd*, %struct.sd** %8, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 131
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %27
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %172, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %175

38:                                               ; preds = %34
  %39 = load %struct.sd*, %struct.sd** %8, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 132
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.sd*, %struct.sd** %8, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %175

50:                                               ; preds = %43, %38
  %51 = load %struct.sd*, %struct.sd** %8, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %171 [
    i32 0, label %54
    i32 1, label %67
    i32 2, label %94
    i32 3, label %122
  ]

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.sd*, %struct.sd** %8, align 8
  %63 = getelementptr inbounds %struct.sd, %struct.sd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %54
  br label %171

67:                                               ; preds = %50
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 255
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.sd*, %struct.sd** %8, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %93

79:                                               ; preds = %67
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.sd*, %struct.sd** %8, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  br label %92

89:                                               ; preds = %79
  %90 = load %struct.sd*, %struct.sd** %8, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %74
  br label %171

94:                                               ; preds = %50
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %94
  %103 = load %struct.sd*, %struct.sd** %8, align 8
  %104 = getelementptr inbounds %struct.sd, %struct.sd* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %121

107:                                              ; preds = %94
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.sd*, %struct.sd** %8, align 8
  %116 = getelementptr inbounds %struct.sd, %struct.sd* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  br label %120

117:                                              ; preds = %107
  %118 = load %struct.sd*, %struct.sd** %8, align 8
  %119 = getelementptr inbounds %struct.sd, %struct.sd* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %102
  br label %171

122:                                              ; preds = %50
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %122
  %131 = load %struct.sd*, %struct.sd** %8, align 8
  %132 = getelementptr inbounds %struct.sd, %struct.sd* %131, i32 0, i32 1
  store i32 0, i32* %132, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load %struct.sd*, %struct.sd** %8, align 8
  %138 = getelementptr inbounds %struct.sd, %struct.sd* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, 3
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %136, i64 %141
  store i32* %142, i32** %4, align 8
  br label %260

143:                                              ; preds = %122
  %144 = load i32, i32* %9, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 255
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load %struct.sd*, %struct.sd** %8, align 8
  %155 = getelementptr inbounds %struct.sd, %struct.sd* %154, i32 0, i32 1
  store i32 2, i32* %155, align 4
  br label %170

156:                                              ; preds = %146, %143
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load %struct.sd*, %struct.sd** %8, align 8
  %165 = getelementptr inbounds %struct.sd, %struct.sd* %164, i32 0, i32 1
  store i32 1, i32* %165, align 4
  br label %169

166:                                              ; preds = %156
  %167 = load %struct.sd*, %struct.sd** %8, align 8
  %168 = getelementptr inbounds %struct.sd, %struct.sd* %167, i32 0, i32 1
  store i32 0, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %163
  br label %170

170:                                              ; preds = %169, %153
  br label %171

171:                                              ; preds = %50, %170, %121, %93, %66
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %34

175:                                              ; preds = %49, %34
  br label %259

176:                                              ; preds = %3, %3
  store i32 0, i32* %11, align 4
  br label %177

177:                                              ; preds = %255, %176
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %258

181:                                              ; preds = %177
  %182 = load %struct.sd*, %struct.sd** %8, align 8
  %183 = getelementptr inbounds %struct.sd, %struct.sd* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  switch i32 %184, label %254 [
    i32 0, label %185
    i32 1, label %198
  ]

185:                                              ; preds = %181
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %185
  %193 = load %struct.sd*, %struct.sd** %8, align 8
  %194 = getelementptr inbounds %struct.sd, %struct.sd* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %192, %185
  br label %254

198:                                              ; preds = %181
  %199 = load %struct.sd*, %struct.sd** %8, align 8
  %200 = getelementptr inbounds %struct.sd, %struct.sd* %199, i32 0, i32 1
  store i32 0, i32* %200, align 4
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 255
  br i1 %206, label %207, label %253

207:                                              ; preds = %198
  %208 = load i32, i32* %11, align 4
  %209 = icmp sge i32 %208, 4
  br i1 %209, label %210, label %232

210:                                              ; preds = %207
  %211 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %212 = load i32, i32* @D_FRAM, align 4
  %213 = load i32, i32* %11, align 4
  %214 = sub nsw i32 %213, 1
  %215 = load i32*, i32** %6, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sub nsw i32 %216, 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %6, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sub nsw i32 %222, 3
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %6, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = call i32 (%struct.gspca_dev*, i32, i8*, i32, ...) @gspca_dbg(%struct.gspca_dev* %211, i32 %212, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %214, i32 %220, i32 %226, i32* %230)
  br label %242

232:                                              ; preds = %207
  %233 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %234 = load i32, i32* @D_FRAM, align 4
  %235 = load i32, i32* %11, align 4
  %236 = sub nsw i32 %235, 1
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = call i32 (%struct.gspca_dev*, i32, i8*, i32, ...) @gspca_dbg(%struct.gspca_dev* %233, i32 %234, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %236, i32* %240)
  br label %242

242:                                              ; preds = %232, %210
  %243 = load i32*, i32** %6, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load %struct.sd*, %struct.sd** %8, align 8
  %248 = getelementptr inbounds %struct.sd, %struct.sd* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %246, i64 %251
  store i32* %252, i32** %4, align 8
  br label %260

253:                                              ; preds = %198
  br label %254

254:                                              ; preds = %181, %253, %197
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %11, align 4
  br label %177

258:                                              ; preds = %177
  br label %259

259:                                              ; preds = %3, %258, %175
  store i32* null, i32** %4, align 8
  br label %260

260:                                              ; preds = %259, %242, %130
  %261 = load i32*, i32** %4, align 8
  ret i32* %261
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
