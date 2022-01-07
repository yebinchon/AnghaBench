; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_prepare_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_prepare_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32 }
%struct.cx18_stream = type { i64, i32, %struct.cx18* }
%struct.cx18 = type { i64 }
%struct.cx18_videobuf_buffer = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_HM12 = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@VIDEOBUF_PREPARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.cx18_stream*, %struct.cx18_videobuf_buffer*, i64, i32, i32, i32)* @cx18_prepare_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_prepare_buffer(%struct.videobuf_queue* %0, %struct.cx18_stream* %1, %struct.cx18_videobuf_buffer* %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.videobuf_queue*, align 8
  %10 = alloca %struct.cx18_stream*, align 8
  %11 = alloca %struct.cx18_videobuf_buffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cx18*, align 8
  %17 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %9, align 8
  store %struct.cx18_stream* %1, %struct.cx18_stream** %10, align 8
  store %struct.cx18_videobuf_buffer* %2, %struct.cx18_videobuf_buffer** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %19 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %18, i32 0, i32 2
  %20 = load %struct.cx18*, %struct.cx18** %19, align 8
  store %struct.cx18* %20, %struct.cx18** %16, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %22 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %13, align 4
  %24 = icmp ult i32 %23, 48
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* %14, align 4
  %27 = icmp ult i32 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %7
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %233

31:                                               ; preds = %25
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = mul i32 %32, %33
  %35 = mul i32 %34, 2
  %36 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %37 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %40 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %31
  %45 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %46 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %50 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ult i32 %48, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %233

57:                                               ; preds = %44, %31
  %58 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %59 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %92, label %64

64:                                               ; preds = %57
  %65 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %66 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %92, label %71

71:                                               ; preds = %64
  %72 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %73 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %92, label %78

78:                                               ; preds = %71
  %79 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %80 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %86 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.cx18*, %struct.cx18** %16, align 8
  %89 = getelementptr inbounds %struct.cx18, %struct.cx18* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %136

92:                                               ; preds = %84, %78, %71, %64, %57
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %95 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %99 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  store i32 %97, i32* %100, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %103 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 5
  store i32 %101, i32* %104, align 4
  %105 = load %struct.cx18*, %struct.cx18** %16, align 8
  %106 = getelementptr inbounds %struct.cx18, %struct.cx18* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %109 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %112 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %114 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @V4L2_PIX_FMT_HM12, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %92
  %119 = load i32, i32* %14, align 4
  %120 = mul i32 %119, 720
  %121 = mul i32 %120, 3
  %122 = udiv i32 %121, 2
  %123 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %124 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  br label %131

125:                                              ; preds = %92
  %126 = load i32, i32* %14, align 4
  %127 = mul i32 %126, 720
  %128 = mul i32 %127, 2
  %129 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %130 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %125, %118
  %132 = load %struct.videobuf_queue*, %struct.videobuf_queue** %9, align 8
  %133 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %134 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %135 = call i32 @cx18_dma_free(%struct.videobuf_queue* %132, %struct.cx18_stream* %133, %struct.cx18_videobuf_buffer* %134)
  br label %136

136:                                              ; preds = %131, %84
  %137 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %138 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %136
  %143 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %144 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %148 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ult i32 %146, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %8, align 4
  br label %233

155:                                              ; preds = %142, %136
  %156 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %157 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %163 = trunc i64 %162 to i32
  %164 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %165 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 5
  store i32 %163, i32* %166, align 4
  br label %167

167:                                              ; preds = %161, %155
  %168 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %169 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %170 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %168, %172
  br i1 %173, label %174, label %222

174:                                              ; preds = %167
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %177 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 3
  store i32 %175, i32* %178, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %181 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 4
  store i32 %179, i32* %182, align 8
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %185 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 5
  store i32 %183, i32* %186, align 4
  %187 = load %struct.cx18*, %struct.cx18** %16, align 8
  %188 = getelementptr inbounds %struct.cx18, %struct.cx18* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %191 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %190, i32 0, i32 0
  store i64 %189, i64* %191, align 8
  %192 = load i64, i64* %12, align 8
  %193 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %194 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %196 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @V4L2_PIX_FMT_HM12, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %174
  %201 = load i32, i32* %14, align 4
  %202 = mul i32 %201, 720
  %203 = mul i32 %202, 3
  %204 = udiv i32 %203, 2
  %205 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %206 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 8
  br label %213

207:                                              ; preds = %174
  %208 = load i32, i32* %14, align 4
  %209 = mul i32 %208, 720
  %210 = mul i32 %209, 2
  %211 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %212 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 8
  br label %213

213:                                              ; preds = %207, %200
  %214 = load %struct.videobuf_queue*, %struct.videobuf_queue** %9, align 8
  %215 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %216 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %215, i32 0, i32 1
  %217 = call i32 @videobuf_iolock(%struct.videobuf_queue* %214, %struct.TYPE_2__* %216, i32* null)
  store i32 %217, i32* %17, align 4
  %218 = load i32, i32* %17, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %213
  br label %227

221:                                              ; preds = %213
  br label %222

222:                                              ; preds = %221, %167
  %223 = load i64, i64* @VIDEOBUF_PREPARED, align 8
  %224 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %225 = getelementptr inbounds %struct.cx18_videobuf_buffer, %struct.cx18_videobuf_buffer* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 6
  store i64 %223, i64* %226, align 8
  store i32 0, i32* %8, align 4
  br label %233

227:                                              ; preds = %220
  %228 = load %struct.videobuf_queue*, %struct.videobuf_queue** %9, align 8
  %229 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %230 = load %struct.cx18_videobuf_buffer*, %struct.cx18_videobuf_buffer** %11, align 8
  %231 = call i32 @cx18_dma_free(%struct.videobuf_queue* %228, %struct.cx18_stream* %229, %struct.cx18_videobuf_buffer* %230)
  %232 = load i32, i32* %17, align 4
  store i32 %232, i32* %8, align 4
  br label %233

233:                                              ; preds = %227, %222, %152, %54, %28
  %234 = load i32, i32* %8, align 4
  ret i32 %234
}

declare dso_local i32 @cx18_dma_free(%struct.videobuf_queue*, %struct.cx18_stream*, %struct.cx18_videobuf_buffer*) #1

declare dso_local i32 @videobuf_iolock(%struct.videobuf_queue*, %struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
