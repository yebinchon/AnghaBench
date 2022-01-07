; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_copy_pix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_copy_pix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i32, i32*, i32, i32, i64, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }

@V4L2_FBUF_FLAG_CHROMAKEY = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_SRC_CHROMAKEY = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_LOCAL_ALPHA = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_LOCAL_INV_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vivid_dev*, i32, i32, i64*, i64*)* @copy_pix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_pix(%struct.vivid_dev* %0, i32 %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.vivid_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.v4l2_rect*, align 8
  store %struct.vivid_dev* %0, %struct.vivid_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %21 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  %23 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %24 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %15, align 4
  %32 = load i64*, i64** %9, align 8
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load i64*, i64** %10, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  %37 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %38 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %84

41:                                               ; preds = %5
  %42 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %43 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %17, align 8
  %45 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %46 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %45, i32 0, i32 9
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 7
  %50 = sdiv i32 %49, 8
  store i32 %50, i32* %18, align 4
  %51 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %52 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %51, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %60 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %59, i32 0, i32 9
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = load i32*, i32** %17, align 8
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %7, align 4
  %70 = mul i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = sdiv i32 %71, 8
  %73 = add i32 %70, %72
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %67, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 7
  %79 = shl i32 1, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %41
  br label %226

83:                                               ; preds = %41
  br label %84

84:                                               ; preds = %83, %5
  store i32 0, i32* %16, align 4
  br label %85

85:                                               ; preds = %132, %84
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %88 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %135

91:                                               ; preds = %85
  %92 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %93 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %92, i32 0, i32 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store %struct.v4l2_rect* %98, %struct.v4l2_rect** %19, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.v4l2_rect*, %struct.v4l2_rect** %19, align 8
  %101 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %99, %102
  br i1 %103, label %104, label %131

104:                                              ; preds = %91
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.v4l2_rect*, %struct.v4l2_rect** %19, align 8
  %107 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.v4l2_rect*, %struct.v4l2_rect** %19, align 8
  %110 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %108, %111
  %113 = icmp slt i32 %105, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %104
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.v4l2_rect*, %struct.v4l2_rect** %19, align 8
  %117 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %115, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %114
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.v4l2_rect*, %struct.v4l2_rect** %19, align 8
  %123 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.v4l2_rect*, %struct.v4l2_rect** %19, align 8
  %126 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %124, %127
  %129 = icmp slt i32 %121, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %226

131:                                              ; preds = %120, %114, %104, %91
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %16, align 4
  br label %85

135:                                              ; preds = %85
  %136 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %137 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @V4L2_FBUF_FLAG_CHROMAKEY, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %135
  %143 = load i64*, i64** %10, align 8
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %146 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %226

150:                                              ; preds = %142, %135
  %151 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %152 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @V4L2_FBUF_FLAG_SRC_CHROMAKEY, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load i64, i64* %11, align 8
  %159 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %160 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %226

164:                                              ; preds = %157, %150
  %165 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %166 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %165, i32 0, i32 6
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %223

171:                                              ; preds = %164
  %172 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %173 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @V4L2_FBUF_FLAG_GLOBAL_ALPHA, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %180 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %226

184:                                              ; preds = %178, %171
  %185 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %186 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @V4L2_FBUF_FLAG_LOCAL_ALPHA, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %184
  %192 = load i64*, i64** %9, align 8
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %195 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %194, i32 0, i32 6
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = and i64 %193, %199
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %191
  br label %226

203:                                              ; preds = %191, %184
  %204 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %205 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @V4L2_FBUF_FLAG_LOCAL_INV_ALPHA, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %203
  %211 = load i64*, i64** %9, align 8
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %214 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %213, i32 0, i32 6
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = and i64 %212, %218
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %210
  br label %226

222:                                              ; preds = %210, %203
  br label %223

223:                                              ; preds = %222, %164
  %224 = load i64, i64* %11, align 8
  %225 = load i64*, i64** %9, align 8
  store i64 %224, i64* %225, align 8
  br label %226

226:                                              ; preds = %223, %221, %202, %183, %163, %149, %130, %82
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
