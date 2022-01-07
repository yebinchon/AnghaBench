; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_copy_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_copy_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, i32 }
%struct.au0828_dmaqueue = type { i64 }
%struct.au0828_buffer = type { i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"Overflow of %zi bytes past buffer end (1)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Overflow %zi bytes past buf end (2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*, i8*, i8*, i64)* @au0828_copy_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au0828_copy_video(%struct.au0828_dev* %0, %struct.au0828_dmaqueue* %1, %struct.au0828_buffer* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.au0828_dev*, align 8
  %8 = alloca %struct.au0828_dmaqueue*, align 8
  %9 = alloca %struct.au0828_buffer*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %7, align 8
  store %struct.au0828_dmaqueue* %1, %struct.au0828_dmaqueue** %8, align 8
  store %struct.au0828_buffer* %2, %struct.au0828_buffer** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %22 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %23 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 1
  store i32 %25, i32* %21, align 4
  %26 = load i64, i64* %12, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %241

29:                                               ; preds = %6
  %30 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %31 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %12, align 8
  %34 = add i64 %32, %33
  %35 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %36 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %41 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %44 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %42, %45
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %39, %29
  %48 = load i8*, i8** %10, align 8
  store i8* %48, i8** %15, align 8
  %49 = load i64, i64* %12, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %20, align 4
  %51 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %52 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i8*, i8** %11, align 8
  store i8* %56, i8** %13, align 8
  br label %62

57:                                               ; preds = %47
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %21, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8* %61, i8** %13, align 8
  br label %62

62:                                               ; preds = %57, %55
  %63 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %64 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %21, align 4
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %65, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %16, align 4
  %70 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %71 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %21, align 4
  %74 = sext i32 %73 to i64
  %75 = urem i64 %72, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %21, align 4
  %79 = mul nsw i32 %77, %78
  %80 = mul nsw i32 %79, 2
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %18, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr i8, i8* %83, i64 %85
  store i8* %86, i8** %14, align 8
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* %17, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %20, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %62
  %94 = load i32, i32* %20, align 4
  br label %97

95:                                               ; preds = %62
  %96 = load i32, i32* %19, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  store i32 %98, i32* %19, align 4
  %99 = load i8*, i8** %14, align 8
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8*, i8** %11, align 8
  %104 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %105 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = icmp ugt i8* %102, %107
  br i1 %108, label %109, label %135

109:                                              ; preds = %97
  %110 = load i8*, i8** %14, align 8
  %111 = load i32, i32* %19, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8*, i8** %11, align 8
  %115 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %116 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = ptrtoint i8* %113 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i8*, i8** %11, align 8
  %125 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %126 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i8*, i8** %14, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %20, align 4
  %134 = load i32, i32* %20, align 4
  store i32 %134, i32* %19, align 4
  br label %135

135:                                              ; preds = %109, %97
  %136 = load i32, i32* %19, align 4
  %137 = icmp sle i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %241

139:                                              ; preds = %135
  %140 = load i8*, i8** %14, align 8
  %141 = load i8*, i8** %15, align 8
  %142 = load i32, i32* %19, align 4
  %143 = call i32 @memcpy(i8* %140, i8* %141, i32 %142)
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %20, align 4
  %146 = sub nsw i32 %145, %144
  store i32 %146, i32* %20, align 4
  br label %147

147:                                              ; preds = %208, %139
  %148 = load i32, i32* %20, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %216

150:                                              ; preds = %147
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %21, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i8*, i8** %14, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr i8, i8* %154, i64 %155
  store i8* %156, i8** %14, align 8
  %157 = load i32, i32* %19, align 4
  %158 = load i8*, i8** %15, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr i8, i8* %158, i64 %159
  store i8* %160, i8** %15, align 8
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* %20, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %150
  %165 = load i32, i32* %20, align 4
  store i32 %165, i32* %19, align 4
  br label %168

166:                                              ; preds = %150
  %167 = load i32, i32* %21, align 4
  store i32 %167, i32* %19, align 4
  br label %168

168:                                              ; preds = %166, %164
  %169 = load i8*, i8** %14, align 8
  %170 = load i32, i32* %19, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8*, i8** %11, align 8
  %174 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %175 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  %178 = icmp ugt i8* %172, %177
  br i1 %178, label %179, label %204

179:                                              ; preds = %168
  %180 = load i8*, i8** %14, align 8
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i8*, i8** %11, align 8
  %185 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %186 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = ptrtoint i8* %183 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  %193 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %192)
  %194 = load i8*, i8** %11, align 8
  %195 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %196 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  %199 = load i8*, i8** %14, align 8
  %200 = ptrtoint i8* %198 to i64
  %201 = ptrtoint i8* %199 to i64
  %202 = sub i64 %200, %201
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %20, align 4
  store i32 %203, i32* %19, align 4
  br label %204

204:                                              ; preds = %179, %168
  %205 = load i32, i32* %19, align 4
  %206 = icmp sle i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %216

208:                                              ; preds = %204
  %209 = load i8*, i8** %14, align 8
  %210 = load i8*, i8** %15, align 8
  %211 = load i32, i32* %19, align 4
  %212 = call i32 @memcpy(i8* %209, i8* %210, i32 %211)
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* %20, align 4
  %215 = sub nsw i32 %214, %213
  store i32 %215, i32* %20, align 4
  br label %147

216:                                              ; preds = %207, %147
  %217 = load i32, i32* %18, align 4
  %218 = icmp sgt i32 %217, 1440
  br i1 %218, label %219, label %235

219:                                              ; preds = %216
  %220 = load i8*, i8** %11, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 0
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp slt i32 %223, 96
  br i1 %224, label %225, label %234

225:                                              ; preds = %219
  %226 = load i8*, i8** %11, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 1440
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = icmp slt i32 %229, 96
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  %232 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %233 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %232, i32 0, i32 1
  store i32 1, i32* %233, align 4
  br label %234

234:                                              ; preds = %231, %225, %219
  br label %235

235:                                              ; preds = %234, %216
  %236 = load i64, i64* %12, align 8
  %237 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %238 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = add i64 %239, %236
  store i64 %240, i64* %238, align 8
  br label %241

241:                                              ; preds = %235, %138, %28
  ret void
}

declare dso_local i32 @au0828_isocdbg(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
