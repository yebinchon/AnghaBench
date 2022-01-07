; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-uncompress.c_pwc_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-uncompress.c_pwc_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i64, i64, i64, i8*, i32, i32, i32 }
%struct.pwc_frame_buf = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.pwc_raw_frame = type { %struct.pwc_raw_frame*, i8*, i8* }

@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"This chipset is not supported for now\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_decompress(%struct.pwc_device* %0, %struct.pwc_frame_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca %struct.pwc_frame_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.pwc_raw_frame*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %4, align 8
  store %struct.pwc_frame_buf* %1, %struct.pwc_frame_buf** %5, align 8
  %16 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %5, align 8
  %17 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i8* @vb2_plane_vaddr(i32* %18, i32 0)
  store i8* %19, i8** %10, align 8
  %20 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %5, align 8
  %21 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %24 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %22, i64 %26
  store i8* %27, i8** %9, align 8
  %28 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %29 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %2
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to %struct.pwc_raw_frame*
  store %struct.pwc_raw_frame* %35, %struct.pwc_raw_frame** %15, align 8
  %36 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %37 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @cpu_to_le16(i64 %38)
  %40 = load %struct.pwc_raw_frame*, %struct.pwc_raw_frame** %15, align 8
  %41 = getelementptr inbounds %struct.pwc_raw_frame, %struct.pwc_raw_frame* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %43 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @cpu_to_le16(i64 %44)
  %46 = load %struct.pwc_raw_frame*, %struct.pwc_raw_frame** %15, align 8
  %47 = getelementptr inbounds %struct.pwc_raw_frame, %struct.pwc_raw_frame* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.pwc_raw_frame*, %struct.pwc_raw_frame** %15, align 8
  %49 = getelementptr inbounds %struct.pwc_raw_frame, %struct.pwc_raw_frame* %48, i32 0, i32 0
  %50 = load %struct.pwc_raw_frame*, %struct.pwc_raw_frame** %49, align 8
  %51 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %52 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @memcpy(%struct.pwc_raw_frame* %50, i8* %53, i32 4)
  %55 = load %struct.pwc_raw_frame*, %struct.pwc_raw_frame** %15, align 8
  %56 = getelementptr inbounds %struct.pwc_raw_frame, %struct.pwc_raw_frame* %55, i64 1
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %59 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @memcpy(%struct.pwc_raw_frame* %56, i8* %57, i32 %60)
  %62 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %5, align 8
  %63 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %66 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, 24
  %70 = trunc i64 %69 to i32
  %71 = call i32 @vb2_set_plane_payload(i32* %64, i32 0, i32 %70)
  store i32 0, i32* %3, align 4
  br label %180

72:                                               ; preds = %2
  %73 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %5, align 8
  %74 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %77 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %80 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %78, %81
  %83 = mul nsw i32 %82, 3
  %84 = sdiv i32 %83, 2
  %85 = call i32 @vb2_set_plane_payload(i32* %75, i32 0, i32 %84)
  %86 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %87 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %164

90:                                               ; preds = %72
  %91 = load i8*, i8** %9, align 8
  %92 = bitcast i8* %91 to i32*
  store i32* %92, i32** %11, align 8
  %93 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %94 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %97 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %95, %98
  store i32 %99, i32* %6, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = bitcast i8* %100 to i32*
  store i32* %101, i32** %12, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr i8, i8* %102, i64 %104
  %106 = bitcast i8* %105 to i32*
  store i32* %106, i32** %13, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr i8, i8* %107, i64 %109
  %111 = load i32, i32* %6, align 4
  %112 = sdiv i32 %111, 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr i8, i8* %110, i64 %113
  %115 = bitcast i8* %114 to i32*
  store i32* %115, i32** %14, align 8
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %160, %90
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %119 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %163

122:                                              ; preds = %116
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %156, %122
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %126 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %159

129:                                              ; preds = %123
  %130 = load i32*, i32** %11, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %11, align 8
  %132 = load i32, i32* %130, align 4
  %133 = load i32*, i32** %12, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %12, align 8
  store i32 %132, i32* %133, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %11, align 8
  %137 = load i32, i32* %135, align 4
  %138 = load i32*, i32** %12, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %12, align 8
  store i32 %137, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %129
  %144 = load i32*, i32** %11, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %11, align 8
  %146 = load i32, i32* %144, align 4
  %147 = load i32*, i32** %14, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %14, align 8
  store i32 %146, i32* %147, align 4
  br label %155

149:                                              ; preds = %129
  %150 = load i32*, i32** %11, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %11, align 8
  %152 = load i32, i32* %150, align 4
  %153 = load i32*, i32** %13, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %13, align 8
  store i32 %152, i32* %153, align 4
  br label %155

155:                                              ; preds = %149, %143
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 4
  store i32 %158, i32* %8, align 4
  br label %123

159:                                              ; preds = %123
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %116

163:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %180

164:                                              ; preds = %72
  %165 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %166 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @DEVICE_USE_CODEC1(i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = call i32 @PWC_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %172 = load i32, i32* @ENXIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  br label %180

174:                                              ; preds = %164
  %175 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = call i32 @pwc_dec23_decompress(%struct.pwc_device* %175, i8* %176, i8* %177)
  br label %179

179:                                              ; preds = %174
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %170, %163, %33
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i8* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(%struct.pwc_raw_frame*, i8*, i32) #1

declare dso_local i32 @vb2_set_plane_payload(i32*, i32, i32) #1

declare dso_local i64 @DEVICE_USE_CODEC1(i64) #1

declare dso_local i32 @PWC_ERROR(i8*) #1

declare dso_local i32 @pwc_dec23_decompress(%struct.pwc_device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
